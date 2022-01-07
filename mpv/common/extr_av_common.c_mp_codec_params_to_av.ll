; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_av_common.c_mp_codec_params_to_av.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_av_common.c_mp_codec_params_to_av.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.mp_codec_params = type { %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @mp_codec_params_to_av(%struct.mp_codec_params* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.mp_codec_params*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.mp_codec_params* %0, %struct.mp_codec_params** %3, align 8
  %5 = call %struct.TYPE_8__* (...) @avcodec_parameters_alloc()
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %7 = icmp ne %struct.TYPE_8__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %127

9:                                                ; preds = %1
  %10 = load %struct.mp_codec_params*, %struct.mp_codec_params** %3, align 8
  %11 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %10, i32 0, i32 12
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = load %struct.mp_codec_params*, %struct.mp_codec_params** %3, align 8
  %17 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %16, i32 0, i32 12
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @avcodec_parameters_copy(%struct.TYPE_8__* %15, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %125

22:                                               ; preds = %14
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %2, align 8
  br label %127

24:                                               ; preds = %9
  %25 = load %struct.mp_codec_params*, %struct.mp_codec_params** %3, align 8
  %26 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @mp_to_av_stream_type(i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 12
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mp_codec_params*, %struct.mp_codec_params** %3, align 8
  %32 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %31, i32 0, i32 10
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mp_codec_to_av_codec_id(i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 11
  store i32 %34, i32* %36, align 8
  %37 = load %struct.mp_codec_params*, %struct.mp_codec_params** %3, align 8
  %38 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 10
  store i32 %39, i32* %41, align 4
  %42 = load %struct.mp_codec_params*, %struct.mp_codec_params** %3, align 8
  %43 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %42, i32 0, i32 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %76

46:                                               ; preds = %24
  %47 = load %struct.mp_codec_params*, %struct.mp_codec_params** %3, align 8
  %48 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %47, i32 0, i32 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @av_mallocz(i64 %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 9
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %46
  br label %125

60:                                               ; preds = %46
  %61 = load %struct.mp_codec_params*, %struct.mp_codec_params** %3, align 8
  %62 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %61, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 8
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.mp_codec_params*, %struct.mp_codec_params** %3, align 8
  %70 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 8
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @memcpy(i32 %68, i32 %71, i64 %74)
  br label %76

76:                                               ; preds = %60, %24
  %77 = load %struct.mp_codec_params*, %struct.mp_codec_params** %3, align 8
  %78 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 4
  %82 = load %struct.mp_codec_params*, %struct.mp_codec_params** %3, align 8
  %83 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  %87 = load %struct.mp_codec_params*, %struct.mp_codec_params** %3, align 8
  %88 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load %struct.mp_codec_params*, %struct.mp_codec_params** %3, align 8
  %93 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load %struct.mp_codec_params*, %struct.mp_codec_params** %3, align 8
  %98 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.mp_codec_params*, %struct.mp_codec_params** %3, align 8
  %103 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.mp_codec_params*, %struct.mp_codec_params** %3, align 8
  %108 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.mp_codec_params*, %struct.mp_codec_params** %3, align 8
  %114 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %113, i32 0, i32 0
  %115 = call i32 @mp_chmap_is_unknown(%struct.TYPE_9__* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %76
  %118 = load %struct.mp_codec_params*, %struct.mp_codec_params** %3, align 8
  %119 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %118, i32 0, i32 0
  %120 = call i32 @mp_chmap_to_lavc(%struct.TYPE_9__* %119)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %117, %76
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %124, %struct.TYPE_8__** %2, align 8
  br label %127

125:                                              ; preds = %59, %21
  %126 = call i32 @avcodec_parameters_free(%struct.TYPE_8__** %4)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %127

127:                                              ; preds = %125, %123, %22, %8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %128
}

declare dso_local %struct.TYPE_8__* @avcodec_parameters_alloc(...) #1

declare dso_local i64 @avcodec_parameters_copy(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mp_to_av_stream_type(i32) #1

declare dso_local i32 @mp_codec_to_av_codec_id(i32) #1

declare dso_local i32 @av_mallocz(i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @mp_chmap_is_unknown(%struct.TYPE_9__*) #1

declare dso_local i32 @mp_chmap_to_lavc(%struct.TYPE_9__*) #1

declare dso_local i32 @avcodec_parameters_free(%struct.TYPE_8__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
