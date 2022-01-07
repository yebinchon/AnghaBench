; ModuleID = '/home/carl/AnghaBench/numpy/numpy/_build_utils/src/extr_apple_sgemv_fix.c_loadlib.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/_build_utils/src/extr_apple_sgemv_fix.c_loadlib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVX_and_10_9 = common dso_local global i32 0, align 4
@VECLIB_FILE = common dso_local global i8* null, align 8
@RTLD_LOCAL = common dso_local global i32 0, align 4
@RTLD_FIRST = common dso_local global i32 0, align 4
@veclib = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"Failed to open vecLib from location '%s'.\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"sgemv_\00", align 1
@accelerate_sgemv = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to resolve symbol 'sgemv_'.\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"cblas_sgemv\00", align 1
@accelerate_cblas_sgemv = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to resolve symbol 'cblas_sgemv'.\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"cblas_sgemm\00", align 1
@accelerate_cblas_sgemm = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [40 x i8] c"Failed to resolve symbol 'cblas_sgemm'.\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @loadlib, i8* null }]
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @loadlib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loadlib() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %5 = call i32 @memset(i8* %4, i32 0, i32 1024)
  %6 = call i32 (...) @cpu_supports_avx()
  store i32 %6, i32* %2, align 4
  %7 = call i32 (...) @using_mavericks()
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %10, %0
  %14 = phi i1 [ false, %0 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  store i32 %15, i32* @AVX_and_10_9, align 4
  %16 = load i8*, i8** @VECLIB_FILE, align 8
  %17 = load i32, i32* @RTLD_LOCAL, align 4
  %18 = load i32, i32* @RTLD_FIRST, align 4
  %19 = or i32 %17, %18
  %20 = call i32* @dlopen(i8* %16, i32 %19)
  store i32* %20, i32** @veclib, align 8
  %21 = load i32*, i32** @veclib, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %13
  store i32* null, i32** @veclib, align 8
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %25 = load i8*, i8** @VECLIB_FILE, align 8
  %26 = call i32 @snprintf(i8* %24, i32 1024, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %28 = call i32 @Py_FatalError(i8* %27)
  br label %29

29:                                               ; preds = %23, %13
  %30 = load i32*, i32** @veclib, align 8
  %31 = call i64 @dlsym(i32* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** @accelerate_sgemv, align 8
  %33 = load i32*, i32** @accelerate_sgemv, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = call i32 (...) @unloadlib()
  %37 = call i32 @Py_FatalError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %29
  %39 = load i32*, i32** @veclib, align 8
  %40 = call i64 @dlsym(i32* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** @accelerate_cblas_sgemv, align 8
  %42 = load i32*, i32** @accelerate_cblas_sgemv, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = call i32 (...) @unloadlib()
  %46 = call i32 @Py_FatalError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i32*, i32** @veclib, align 8
  %49 = call i64 @dlsym(i32* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** @accelerate_cblas_sgemm, align 8
  %51 = load i32*, i32** @accelerate_cblas_sgemm, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = call i32 (...) @unloadlib()
  %55 = call i32 @Py_FatalError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %56

56:                                               ; preds = %53, %47
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @cpu_supports_avx(...) #1

declare dso_local i32 @using_mavericks(...) #1

declare dso_local i32* @dlopen(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @Py_FatalError(i8*) #1

declare dso_local i64 @dlsym(i32*, i8*) #1

declare dso_local i32 @unloadlib(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
