; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_compressor-filter.c_compressor_tick.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_compressor-filter.c_compressor_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compressor_data = type { i32, i32, i32*, i64 }

@sidechain_capture = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, float)* @compressor_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compressor_tick(i8* %0, float %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.compressor_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store float %1, float* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.compressor_data*
  store %struct.compressor_data* %11, %struct.compressor_data** %5, align 8
  store i8* null, i8** %6, align 8
  %12 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %13 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %12, i32 0, i32 1
  %14 = call i32 @pthread_mutex_lock(i32* %13)
  %15 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %16 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %2
  %20 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %21 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %19
  %25 = call i32 (...) @os_gettime_ns()
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %28 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %26, %29
  %31 = sext i32 %30 to i64
  %32 = icmp sgt i64 %31, 3000000000
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %35 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i8* @bstrdup(i64 %36)
  store i8* %37, i8** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %40 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %33, %24
  br label %42

42:                                               ; preds = %41, %19, %2
  %43 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %44 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %43, i32 0, i32 1
  %45 = call i32 @pthread_mutex_unlock(i32* %44)
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %106

48:                                               ; preds = %42
  %49 = load i8*, i8** %6, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i8*, i8** %6, align 8
  %58 = call i32* @obs_get_source_by_name(i8* %57)
  br label %60

59:                                               ; preds = %51, %48
  br label %60

60:                                               ; preds = %59, %56
  %61 = phi i32* [ %58, %56 ], [ null, %59 ]
  store i32* %61, i32** %8, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32*, i32** %8, align 8
  %66 = call i32* @obs_source_get_weak_source(i32* %65)
  br label %68

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %64
  %69 = phi i32* [ %66, %64 ], [ null, %67 ]
  store i32* %69, i32** %9, align 8
  %70 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %71 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %70, i32 0, i32 1
  %72 = call i32 @pthread_mutex_lock(i32* %71)
  %73 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %74 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %68
  %78 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %79 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = call i64 @strcmp(i64 %80, i8* %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32*, i32** %9, align 8
  %86 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %87 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %86, i32 0, i32 2
  store i32* %85, i32** %87, align 8
  store i32* null, i32** %9, align 8
  br label %88

88:                                               ; preds = %84, %77, %68
  %89 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %90 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %89, i32 0, i32 1
  %91 = call i32 @pthread_mutex_unlock(i32* %90)
  %92 = load i32*, i32** %8, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* @sidechain_capture, align 4
  %97 = load %struct.compressor_data*, %struct.compressor_data** %5, align 8
  %98 = call i32 @obs_source_add_audio_capture_callback(i32* %95, i32 %96, %struct.compressor_data* %97)
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @obs_weak_source_release(i32* %99)
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @obs_source_release(i32* %101)
  br label %103

103:                                              ; preds = %94, %88
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @bfree(i8* %104)
  br label %106

106:                                              ; preds = %103, %42
  %107 = load float, float* %4, align 4
  %108 = call i32 @UNUSED_PARAMETER(float %107)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @os_gettime_ns(...) #1

declare dso_local i8* @bstrdup(i64) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32* @obs_get_source_by_name(i8*) #1

declare dso_local i32* @obs_source_get_weak_source(i32*) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32 @obs_source_add_audio_capture_callback(i32*, i32, %struct.compressor_data*) #1

declare dso_local i32 @obs_weak_source_release(i32*) #1

declare dso_local i32 @obs_source_release(i32*) #1

declare dso_local i32 @bfree(i8*) #1

declare dso_local i32 @UNUSED_PARAMETER(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
