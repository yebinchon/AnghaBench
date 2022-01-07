; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/jit/extr_jit.c_provider_init.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/jit/extr_jit.c_provider_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@jit_enabled = common dso_local global i32 0, align 4
@provider_failed_loading = common dso_local global i32 0, align 4
@provider_successfully_loaded = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s/%s%s\00", align 1
@pkglib_path = common dso_local global i8* null, align 8
@jit_provider = common dso_local global i8* null, align 8
@DLSUFFIX = common dso_local global i32 0, align 4
@DEBUG1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"probing availability of JIT provider at %s\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"provider not available, disabling JIT for current session\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"_PG_jit_provider_init\00", align 1
@provider = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"successfully loaded JIT provider in current session\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @provider_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @provider_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32 (i32*)*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAXPGPATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = load i32, i32* @jit_enabled, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %41

13:                                               ; preds = %0
  %14 = load i32, i32* @provider_failed_loading, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %41

17:                                               ; preds = %13
  %18 = load i32, i32* @provider_successfully_loaded, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %41

21:                                               ; preds = %17
  %22 = load i32, i32* @MAXPGPATH, align 4
  %23 = load i8*, i8** @pkglib_path, align 8
  %24 = load i8*, i8** @jit_provider, align 8
  %25 = load i32, i32* @DLSUFFIX, align 4
  %26 = call i32 @snprintf(i8* %9, i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24, i32 %25)
  %27 = load i32, i32* @DEBUG1, align 4
  %28 = call i32 (i32, i8*, ...) @elog(i32 %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  %29 = call i32 @file_exists(i8* %9)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @DEBUG1, align 4
  %33 = call i32 (i32, i8*, ...) @elog(i32 %32, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* @provider_failed_loading, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %41

34:                                               ; preds = %21
  store i32 1, i32* @provider_failed_loading, align 4
  %35 = call i64 @load_external_function(i8* %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 1, i32* null)
  %36 = inttoptr i64 %35 to i32 (i32*)*
  store i32 (i32*)* %36, i32 (i32*)** %4, align 8
  %37 = load i32 (i32*)*, i32 (i32*)** %4, align 8
  %38 = call i32 %37(i32* @provider)
  store i32 1, i32* @provider_successfully_loaded, align 4
  store i32 0, i32* @provider_failed_loading, align 4
  %39 = load i32, i32* @DEBUG1, align 4
  %40 = call i32 (i32, i8*, ...) @elog(i32 %39, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %34, %31, %20, %16, %12
  %42 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i32) #2

declare dso_local i32 @elog(i32, i8*, ...) #2

declare dso_local i32 @file_exists(i8*) #2

declare dso_local i64 @load_external_function(i8*, i8*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
