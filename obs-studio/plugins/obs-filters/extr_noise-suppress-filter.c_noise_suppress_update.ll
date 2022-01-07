; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_noise-suppress-filter.c_noise_suppress_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_noise-suppress-filter.c_noise_suppress_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.noise_suppress_data = type { i32, i64, i64, i8**, i8**, i64* }

@S_SUPPRESS_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @noise_suppress_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @noise_suppress_update(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.noise_suppress_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.noise_suppress_data*
  store %struct.noise_suppress_data* %12, %struct.noise_suppress_data** %5, align 8
  %13 = call i32 (...) @obs_get_audio()
  %14 = call i64 @audio_output_get_sample_rate(i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = call i32 (...) @obs_get_audio()
  %16 = call i64 @audio_output_get_channels(i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = udiv i64 %17, 100
  store i64 %18, i64* %8, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @S_SUPPRESS_LEVEL, align 4
  %21 = call i64 @obs_data_get_int(i32* %19, i32 %20)
  %22 = trunc i64 %21 to i32
  %23 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %5, align 8
  %24 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %5, align 8
  %27 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %5, align 8
  %30 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %5, align 8
  %32 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %31, i32 0, i32 5
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %107

38:                                               ; preds = %2
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = mul i64 %39, %40
  %42 = mul i64 %41, 4
  %43 = call i8* @bmalloc(i64 %42)
  %44 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %5, align 8
  %45 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %44, i32 0, i32 4
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  store i8* %43, i8** %47, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %7, align 8
  %50 = mul i64 %48, %49
  %51 = mul i64 %50, 4
  %52 = call i8* @bmalloc(i64 %51)
  %53 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %5, align 8
  %54 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %53, i32 0, i32 3
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  store i8* %52, i8** %56, align 8
  store i64 1, i64* %9, align 8
  br label %57

57:                                               ; preds = %90, %38
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %93

61:                                               ; preds = %57
  %62 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %5, align 8
  %63 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %62, i32 0, i32 4
  %64 = load i8**, i8*** %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = sub i64 %65, 1
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr i8, i8* %68, i64 %69
  %71 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %5, align 8
  %72 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %71, i32 0, i32 4
  %73 = load i8**, i8*** %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds i8*, i8** %73, i64 %74
  store i8* %70, i8** %75, align 8
  %76 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %5, align 8
  %77 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %76, i32 0, i32 3
  %78 = load i8**, i8*** %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = sub i64 %79, 1
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr i8, i8* %82, i64 %83
  %85 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %5, align 8
  %86 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %85, i32 0, i32 3
  %87 = load i8**, i8*** %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = getelementptr inbounds i8*, i8** %87, i64 %88
  store i8* %84, i8** %89, align 8
  br label %90

90:                                               ; preds = %61
  %91 = load i64, i64* %9, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %9, align 8
  br label %57

93:                                               ; preds = %57
  store i64 0, i64* %10, align 8
  br label %94

94:                                               ; preds = %104, %93
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* %7, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %5, align 8
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @alloc_channel(%struct.noise_suppress_data* %99, i64 %100, i64 %101, i64 %102)
  br label %104

104:                                              ; preds = %98
  %105 = load i64, i64* %10, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %10, align 8
  br label %94

107:                                              ; preds = %37, %94
  ret void
}

declare dso_local i64 @audio_output_get_sample_rate(i32) #1

declare dso_local i32 @obs_get_audio(...) #1

declare dso_local i64 @audio_output_get_channels(i32) #1

declare dso_local i64 @obs_data_get_int(i32*, i32) #1

declare dso_local i8* @bmalloc(i64) #1

declare dso_local i32 @alloc_channel(%struct.noise_suppress_data*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
