; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_receive_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_receive_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_data = type { i32, i32*, i64 }
%struct.ffmpeg_output = type { i64, %struct.ffmpeg_data }
%struct.ffmpeg_data = type { i32, i64, i64, i32**, %struct.TYPE_5__**, i64, i32, %struct.TYPE_4__** }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.audio_data*)* @receive_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_audio(i8* %0, i64 %1, %struct.audio_data* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.audio_data*, align 8
  %7 = alloca %struct.ffmpeg_output*, align 8
  %8 = alloca %struct.ffmpeg_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.audio_data, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.audio_data* %2, %struct.audio_data** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.ffmpeg_output*
  store %struct.ffmpeg_output* %16, %struct.ffmpeg_output** %7, align 8
  %17 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %7, align 8
  %18 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %17, i32 0, i32 1
  store %struct.ffmpeg_data* %18, %struct.ffmpeg_data** %8, align 8
  %19 = load %struct.audio_data*, %struct.audio_data** %6, align 8
  %20 = bitcast %struct.audio_data* %10 to i8*
  %21 = bitcast %struct.audio_data* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 24, i1 false)
  %22 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %8, align 8
  %23 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %22, i32 0, i32 7
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %23, align 8
  %25 = icmp ne %struct.TYPE_4__** %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  br label %163

27:                                               ; preds = %3
  %28 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %8, align 8
  %29 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = trunc i64 %31 to i32
  %33 = shl i32 1, %32
  %34 = and i32 %30, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %163

37:                                               ; preds = %27
  %38 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %8, align 8
  %39 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @get_track_order(i32 %40, i64 %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %8, align 8
  %44 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %43, i32 0, i32 7
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %45, i64 %47
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %12, align 8
  %52 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %8, align 8
  %53 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %37
  br label %163

57:                                               ; preds = %37
  %58 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %7, align 8
  %59 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %10, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %7, align 8
  %66 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %8, align 8
  %69 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %8, align 8
  %72 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = mul i64 %70, %73
  store i64 %74, i64* %9, align 8
  store i64 0, i64* %13, align 8
  br label %75

75:                                               ; preds = %105, %67
  %76 = load i64, i64* %13, align 8
  %77 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %8, align 8
  %78 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ult i64 %76, %79
  br i1 %80, label %81, label %108

81:                                               ; preds = %75
  %82 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %8, align 8
  %83 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %82, i32 0, i32 4
  %84 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %84, i64 %86
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i64, i64* %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %89
  %91 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %10, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %13, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %10, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %8, align 8
  %100 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = mul i64 %98, %101
  %103 = trunc i64 %102 to i32
  %104 = call i32 @circlebuf_push_back(%struct.TYPE_5__* %90, i32 %95, i32 %103)
  br label %105

105:                                              ; preds = %81
  %106 = load i64, i64* %13, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %13, align 8
  br label %75

108:                                              ; preds = %75
  br label %109

109:                                              ; preds = %154, %108
  %110 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %8, align 8
  %111 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %110, i32 0, i32 4
  %112 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %112, i64 %114
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %9, align 8
  %121 = icmp uge i64 %119, %120
  br i1 %121, label %122, label %163

122:                                              ; preds = %109
  store i64 0, i64* %14, align 8
  br label %123

123:                                              ; preds = %151, %122
  %124 = load i64, i64* %14, align 8
  %125 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %8, align 8
  %126 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ult i64 %124, %127
  br i1 %128, label %129, label %154

129:                                              ; preds = %123
  %130 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %8, align 8
  %131 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %130, i32 0, i32 4
  %132 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %132, i64 %134
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = load i64, i64* %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i64 %137
  %139 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %8, align 8
  %140 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %139, i32 0, i32 3
  %141 = load i32**, i32*** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32*, i32** %141, i64 %143
  %145 = load i32*, i32** %144, align 8
  %146 = load i64, i64* %14, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i64, i64* %9, align 8
  %150 = call i32 @circlebuf_pop_front(%struct.TYPE_5__* %138, i32 %148, i64 %149)
  br label %151

151:                                              ; preds = %129
  %152 = load i64, i64* %14, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %14, align 8
  br label %123

154:                                              ; preds = %123
  %155 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %7, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load i32*, i32** %12, align 8
  %158 = load %struct.ffmpeg_data*, %struct.ffmpeg_data** %8, align 8
  %159 = getelementptr inbounds %struct.ffmpeg_data, %struct.ffmpeg_data* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = trunc i64 %160 to i32
  %162 = call i32 @encode_audio(%struct.ffmpeg_output* %155, i32 %156, i32* %157, i32 %161)
  br label %109

163:                                              ; preds = %26, %36, %56, %109
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @get_track_order(i32, i64) #2

declare dso_local i32 @circlebuf_push_back(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i32 @circlebuf_pop_front(%struct.TYPE_5__*, i32, i64) #2

declare dso_local i32 @encode_audio(%struct.ffmpeg_output*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
