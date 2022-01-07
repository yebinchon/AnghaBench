; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_compressor-filter.c_compressor_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_compressor-filter.c_compressor_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compressor_data = type { %struct.compressor_data*, %struct.compressor_data*, i32, i32, %struct.compressor_data**, i32*, i64 }

@sidechain_capture = common dso_local global i32 0, align 4
@MAX_AUDIO_CHANNELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @compressor_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compressor_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.compressor_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.compressor_data*
  store %struct.compressor_data* %7, %struct.compressor_data** %3, align 8
  %8 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %9 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %8, i32 0, i32 6
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %14 = call i32* @get_sidechain(%struct.compressor_data* %13)
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @sidechain_capture, align 4
  %20 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %21 = call i32 @obs_source_remove_audio_capture_callback(i32* %18, i32 %19, %struct.compressor_data* %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @obs_source_release(i32* %22)
  br label %24

24:                                               ; preds = %17, %12
  %25 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %26 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @obs_weak_source_release(i64 %27)
  br label %29

29:                                               ; preds = %24, %1
  store i64 0, i64* %5, align 8
  br label %30

30:                                               ; preds = %48, %29
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @MAX_AUDIO_CHANNELS, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %36 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = call i32 @circlebuf_free(i32* %39)
  %41 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %42 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %41, i32 0, i32 4
  %43 = load %struct.compressor_data**, %struct.compressor_data*** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds %struct.compressor_data*, %struct.compressor_data** %43, i64 %44
  %46 = load %struct.compressor_data*, %struct.compressor_data** %45, align 8
  %47 = call i32 @bfree(%struct.compressor_data* %46)
  br label %48

48:                                               ; preds = %34
  %49 = load i64, i64* %5, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %5, align 8
  br label %30

51:                                               ; preds = %30
  %52 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %53 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %52, i32 0, i32 3
  %54 = call i32 @pthread_mutex_destroy(i32* %53)
  %55 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %56 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %55, i32 0, i32 2
  %57 = call i32 @pthread_mutex_destroy(i32* %56)
  %58 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %59 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %58, i32 0, i32 1
  %60 = load %struct.compressor_data*, %struct.compressor_data** %59, align 8
  %61 = call i32 @bfree(%struct.compressor_data* %60)
  %62 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %63 = getelementptr inbounds %struct.compressor_data, %struct.compressor_data* %62, i32 0, i32 0
  %64 = load %struct.compressor_data*, %struct.compressor_data** %63, align 8
  %65 = call i32 @bfree(%struct.compressor_data* %64)
  %66 = load %struct.compressor_data*, %struct.compressor_data** %3, align 8
  %67 = call i32 @bfree(%struct.compressor_data* %66)
  ret void
}

declare dso_local i32* @get_sidechain(%struct.compressor_data*) #1

declare dso_local i32 @obs_source_remove_audio_capture_callback(i32*, i32, %struct.compressor_data*) #1

declare dso_local i32 @obs_source_release(i32*) #1

declare dso_local i32 @obs_weak_source_release(i64) #1

declare dso_local i32 @circlebuf_free(i32*) #1

declare dso_local i32 @bfree(%struct.compressor_data*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
