; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_TempTablespacePath.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_TempTablespacePath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOid = common dso_local global i64 0, align 8
@DEFAULTTABLESPACE_OID = common dso_local global i64 0, align 8
@GLOBALTABLESPACE_OID = common dso_local global i64 0, align 8
@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"base/%s\00", align 1
@PG_TEMP_FILES_DIR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"pg_tblspc/%u/%s/%s\00", align 1
@TABLESPACE_VERSION_DIRECTORY = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TempTablespacePath(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @InvalidOid, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @DEFAULTTABLESPACE_OID, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @GLOBALTABLESPACE_OID, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12, %8, %2
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* @MAXPGPATH, align 4
  %19 = load i8*, i8** @PG_TEMP_FILES_DIR, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %17, i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %20)
  br label %29

22:                                               ; preds = %12
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* @MAXPGPATH, align 4
  %25 = load i64, i64* %4, align 8
  %26 = load i8*, i8** @TABLESPACE_VERSION_DIRECTORY, align 8
  %27 = load i8*, i8** @PG_TEMP_FILES_DIR, align 8
  %28 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %23, i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %25, i8* %26, i8* %27)
  br label %29

29:                                               ; preds = %22, %16
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
