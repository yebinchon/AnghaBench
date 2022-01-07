; ModuleID = '/home/carl/AnghaBench/mpv/video/out/win32/extr_displayconfig.c_mp_w32_displayconfig_get_refresh_rate.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/win32/extr_displayconfig.c_mp_w32_displayconfig_get_refresh_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }

@displayconfig_load_ran = common dso_local global i32 0, align 4
@displayconfig_load = common dso_local global i32 0, align 4
@displayconfig_loaded = common dso_local global i32 0, align 4
@DISPLAYCONFIG_PATH_MODE_IDX_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @mp_w32_displayconfig_get_refresh_rate(i32* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32, i32* @displayconfig_load, align 4
  %12 = call i32 @pthread_once(i32* @displayconfig_load_ran, i32 %11)
  %13 = load i32, i32* @displayconfig_loaded, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store double 0.000000e+00, double* %2, align 8
  br label %77

16:                                               ; preds = %1
  %17 = call i8* @talloc_new(i32* null)
  store i8* %17, i8** %4, align 8
  store double 0.000000e+00, double* %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @get_config(i8* %18, i32* %6, %struct.TYPE_8__** %7, i32* %8, i32** %9)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %73

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call %struct.TYPE_8__* @get_path(i32 %23, %struct.TYPE_8__* %24, i32* %25)
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %10, align 8
  %27 = icmp ne %struct.TYPE_8__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %73

29:                                               ; preds = %22
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DISPLAYCONFIG_PATH_MODE_IDX_INVALID, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = call double @get_refresh_rate_from_mode(i32* %42)
  store double %43, double* %5, align 8
  br label %44

44:                                               ; preds = %36, %29
  %45 = load double, double* %5, align 8
  %46 = fcmp oeq double %45, 0.000000e+00
  br i1 %46, label %47, label %72

47:                                               ; preds = %44
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = bitcast %struct.TYPE_9__* %50 to { i64, i64 }*
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %51, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @is_valid_refresh_rate(i64 %53, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %47
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sitofp i64 %63 to double
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sitofp i64 %69 to double
  %71 = fdiv double %64, %70
  store double %71, double* %5, align 8
  br label %72

72:                                               ; preds = %58, %47, %44
  br label %73

73:                                               ; preds = %72, %28, %21
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @talloc_free(i8* %74)
  %76 = load double, double* %5, align 8
  store double %76, double* %2, align 8
  br label %77

77:                                               ; preds = %73, %15
  %78 = load double, double* %2, align 8
  ret double %78
}

declare dso_local i32 @pthread_once(i32*, i32) #1

declare dso_local i8* @talloc_new(i32*) #1

declare dso_local i64 @get_config(i8*, i32*, %struct.TYPE_8__**, i32*, i32**) #1

declare dso_local %struct.TYPE_8__* @get_path(i32, %struct.TYPE_8__*, i32*) #1

declare dso_local double @get_refresh_rate_from_mode(i32*) #1

declare dso_local i64 @is_valid_refresh_rate(i64, i64) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
