; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_noise-suppress-filter.c_noise_suppress_filter_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_noise-suppress-filter.c_noise_suppress_filter_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_audio_data = type { i32, i64, %struct.ng_audio_info** }
%struct.ng_audio_info = type { i32, i64 }
%struct.noise_suppress_data = type { i32, i64, %struct.obs_audio_data, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_6__, %struct.TYPE_6__*, i64, i32* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_audio_data* (i8*, %struct.obs_audio_data*)* @noise_suppress_filter_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.obs_audio_data* @noise_suppress_filter_audio(i8* %0, %struct.obs_audio_data* %1) #0 {
  %3 = alloca %struct.obs_audio_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.obs_audio_data*, align 8
  %6 = alloca %struct.noise_suppress_data*, align 8
  %7 = alloca %struct.ng_audio_info, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.obs_audio_data* %1, %struct.obs_audio_data** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.noise_suppress_data*
  store %struct.noise_suppress_data* %14, %struct.noise_suppress_data** %6, align 8
  %15 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %16 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  store i64 %19, i64* %8, align 8
  %20 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %21 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %20, i32 0, i32 8
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load %struct.obs_audio_data*, %struct.obs_audio_data** %5, align 8
  store %struct.obs_audio_data* %27, %struct.obs_audio_data** %3, align 8
  br label %190

28:                                               ; preds = %2
  %29 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %30 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %35 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.obs_audio_data*, %struct.obs_audio_data** %5, align 8
  %38 = getelementptr inbounds %struct.obs_audio_data, %struct.obs_audio_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = call i64 @llabs(i64 %40) #3
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp sgt i64 %42, 1000000000
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %46 = call i32 @reset_data(%struct.noise_suppress_data* %45)
  br label %47

47:                                               ; preds = %44, %33
  br label %48

48:                                               ; preds = %47, %28
  %49 = load %struct.obs_audio_data*, %struct.obs_audio_data** %5, align 8
  %50 = getelementptr inbounds %struct.obs_audio_data, %struct.obs_audio_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %53 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %52, i32 0, i32 7
  store i64 %51, i64* %53, align 8
  %54 = load %struct.obs_audio_data*, %struct.obs_audio_data** %5, align 8
  %55 = getelementptr inbounds %struct.obs_audio_data, %struct.obs_audio_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.ng_audio_info, %struct.ng_audio_info* %7, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  %58 = load %struct.obs_audio_data*, %struct.obs_audio_data** %5, align 8
  %59 = getelementptr inbounds %struct.obs_audio_data, %struct.obs_audio_data* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.ng_audio_info, %struct.ng_audio_info* %7, i32 0, i32 1
  store i64 %60, i64* %61, align 8
  %62 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %63 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %62, i32 0, i32 5
  %64 = call i32 @circlebuf_push_back(%struct.TYPE_6__* %63, %struct.ng_audio_info* %7, i32 16)
  store i64 0, i64* %11, align 8
  br label %65

65:                                               ; preds = %90, %48
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %68 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %66, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %65
  %72 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %73 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %72, i32 0, i32 6
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %75
  %77 = load %struct.obs_audio_data*, %struct.obs_audio_data** %5, align 8
  %78 = getelementptr inbounds %struct.obs_audio_data, %struct.obs_audio_data* %77, i32 0, i32 2
  %79 = load %struct.ng_audio_info**, %struct.ng_audio_info*** %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = getelementptr inbounds %struct.ng_audio_info*, %struct.ng_audio_info** %79, i64 %80
  %82 = load %struct.ng_audio_info*, %struct.ng_audio_info** %81, align 8
  %83 = load %struct.obs_audio_data*, %struct.obs_audio_data** %5, align 8
  %84 = getelementptr inbounds %struct.obs_audio_data, %struct.obs_audio_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = trunc i64 %87 to i32
  %89 = call i32 @circlebuf_push_back(%struct.TYPE_6__* %76, %struct.ng_audio_info* %82, i32 %88)
  br label %90

90:                                               ; preds = %71
  %91 = load i64, i64* %11, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %11, align 8
  br label %65

93:                                               ; preds = %65
  br label %94

94:                                               ; preds = %103, %93
  %95 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %96 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %95, i32 0, i32 6
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %8, align 8
  %102 = icmp uge i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %105 = call i32 @process(%struct.noise_suppress_data* %104)
  br label %94

106:                                              ; preds = %94
  %107 = call i32 @memset(%struct.ng_audio_info* %7, i32 0, i32 16)
  %108 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %109 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %108, i32 0, i32 5
  %110 = call i32 @circlebuf_peek_front(%struct.TYPE_6__* %109, %struct.ng_audio_info* %7, i32 16)
  %111 = getelementptr inbounds %struct.ng_audio_info, %struct.ng_audio_info* %7, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 4
  store i64 %114, i64* %9, align 8
  %115 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %116 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %115, i32 0, i32 3
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %9, align 8
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %106
  store %struct.obs_audio_data* null, %struct.obs_audio_data** %3, align 8
  br label %190

124:                                              ; preds = %106
  %125 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %126 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %125, i32 0, i32 5
  %127 = call i32 @circlebuf_pop_front(%struct.TYPE_6__* %126, %struct.ng_audio_info* null, i64 16)
  %128 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %129 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %128, i32 0, i32 4
  %130 = load i64, i64* %9, align 8
  %131 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %132 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = mul i64 %130, %133
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @da_resize(i32* %136, i64 %134)
  store i64 0, i64* %12, align 8
  br label %138

138:                                              ; preds = %174, %124
  %139 = load i64, i64* %12, align 8
  %140 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %141 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ult i64 %139, %142
  br i1 %143, label %144, label %177

144:                                              ; preds = %138
  %145 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %146 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* %12, align 8
  %150 = load i64, i64* %9, align 8
  %151 = mul i64 %149, %150
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = bitcast i32* %152 to %struct.ng_audio_info*
  %154 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %155 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.obs_audio_data, %struct.obs_audio_data* %155, i32 0, i32 2
  %157 = load %struct.ng_audio_info**, %struct.ng_audio_info*** %156, align 8
  %158 = load i64, i64* %12, align 8
  %159 = getelementptr inbounds %struct.ng_audio_info*, %struct.ng_audio_info** %157, i64 %158
  store %struct.ng_audio_info* %153, %struct.ng_audio_info** %159, align 8
  %160 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %161 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %160, i32 0, i32 3
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = load i64, i64* %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i64 %163
  %165 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %166 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.obs_audio_data, %struct.obs_audio_data* %166, i32 0, i32 2
  %168 = load %struct.ng_audio_info**, %struct.ng_audio_info*** %167, align 8
  %169 = load i64, i64* %12, align 8
  %170 = getelementptr inbounds %struct.ng_audio_info*, %struct.ng_audio_info** %168, i64 %169
  %171 = load %struct.ng_audio_info*, %struct.ng_audio_info** %170, align 8
  %172 = load i64, i64* %9, align 8
  %173 = call i32 @circlebuf_pop_front(%struct.TYPE_6__* %164, %struct.ng_audio_info* %171, i64 %172)
  br label %174

174:                                              ; preds = %144
  %175 = load i64, i64* %12, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %12, align 8
  br label %138

177:                                              ; preds = %138
  %178 = getelementptr inbounds %struct.ng_audio_info, %struct.ng_audio_info* %7, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %181 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.obs_audio_data, %struct.obs_audio_data* %181, i32 0, i32 0
  store i32 %179, i32* %182, align 8
  %183 = getelementptr inbounds %struct.ng_audio_info, %struct.ng_audio_info* %7, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %186 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.obs_audio_data, %struct.obs_audio_data* %186, i32 0, i32 1
  store i64 %184, i64* %187, align 8
  %188 = load %struct.noise_suppress_data*, %struct.noise_suppress_data** %6, align 8
  %189 = getelementptr inbounds %struct.noise_suppress_data, %struct.noise_suppress_data* %188, i32 0, i32 2
  store %struct.obs_audio_data* %189, %struct.obs_audio_data** %3, align 8
  br label %190

190:                                              ; preds = %177, %123, %26
  %191 = load %struct.obs_audio_data*, %struct.obs_audio_data** %3, align 8
  ret %struct.obs_audio_data* %191
}

; Function Attrs: nounwind readnone
declare dso_local i64 @llabs(i64) #1

declare dso_local i32 @reset_data(%struct.noise_suppress_data*) #2

declare dso_local i32 @circlebuf_push_back(%struct.TYPE_6__*, %struct.ng_audio_info*, i32) #2

declare dso_local i32 @process(%struct.noise_suppress_data*) #2

declare dso_local i32 @memset(%struct.ng_audio_info*, i32, i32) #2

declare dso_local i32 @circlebuf_peek_front(%struct.TYPE_6__*, %struct.ng_audio_info*, i32) #2

declare dso_local i32 @circlebuf_pop_front(%struct.TYPE_6__*, %struct.ng_audio_info*, i64) #2

declare dso_local i32 @da_resize(i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
