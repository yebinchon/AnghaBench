; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_getInstallationPaths.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_getInstallationPaths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@my_exec_path = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s: could not locate my own executable path\00", align 1
@pkglib_path = common dso_local global i8* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"could not open directory \22%s\22: %m\00", align 1
@.str.2 = private unnamed_addr constant [125 x i8] c"This may indicate an incomplete PostgreSQL installation, or that the file \22%s\22 has been moved away from its proper location.\00", align 1
@PG_BACKEND_VERSIONSTR = common dso_local global i32 0, align 4
@postgres_exec_path = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @getInstallationPaths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getInstallationPaths(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i32, i32* @my_exec_path, align 4
  %6 = call i64 @find_my_exec(i8* %4, i32 %5)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @FATAL, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @elog(i32 %9, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @my_exec_path, align 4
  %14 = load i8*, i8** @pkglib_path, align 8
  %15 = call i32 @get_pkglib_path(i32 %13, i8* %14)
  %16 = load i8*, i8** @pkglib_path, align 8
  %17 = call i32* @AllocateDir(i8* %16)
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %12
  %21 = load i32, i32* @ERROR, align 4
  %22 = call i32 (...) @errcode_for_file_access()
  %23 = load i8*, i8** @pkglib_path, align 8
  %24 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @my_exec_path, align 4
  %26 = call i32 @errhint(i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = call i32 @ereport(i32 %21, i32 %26)
  br label %28

28:                                               ; preds = %20, %12
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @FreeDir(i32* %29)
  ret void
}

declare dso_local i64 @find_my_exec(i8*, i32) #1

declare dso_local i32 @elog(i32, i8*, i8*) #1

declare dso_local i32 @get_pkglib_path(i32, i8*) #1

declare dso_local i32* @AllocateDir(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @errhint(i8*, i32) #1

declare dso_local i32 @FreeDir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
