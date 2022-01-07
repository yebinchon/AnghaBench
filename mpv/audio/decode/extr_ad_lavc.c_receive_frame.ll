; ModuleID = '/home/carl/AnghaBench/mpv/audio/decode/extr_ad_lavc.c_receive_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/decode/extr_ad_lavc.c_receive_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { double, i64, i64, i32, %struct.TYPE_14__*, %struct.TYPE_13__, i32, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32, i32, i32* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.mp_frame = type { i32 }
%struct.mp_aframe = type { i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Error decoding audio.\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Converting libavcodec frame to mpv frame failed.\0A\00", align 1
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@MP_FRAME_AUDIO = common dso_local global i32 0, align 4
@AV_FRAME_DATA_SKIP_SAMPLES = common dso_local global i32 0, align 4
@AV_FRAME_FLAG_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_filter*, %struct.mp_frame*)* @receive_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_frame(%struct.mp_filter* %0, %struct.mp_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca %struct.mp_frame*, align 8
  %6 = alloca %struct.priv*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca %struct.mp_aframe*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mp_frame, align 4
  store %struct.mp_filter* %0, %struct.mp_filter** %4, align 8
  store %struct.mp_frame* %1, %struct.mp_frame** %5, align 8
  %14 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %15 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %14, i32 0, i32 0
  %16 = load %struct.priv*, %struct.priv** %15, align 8
  store %struct.priv* %16, %struct.priv** %6, align 8
  %17 = load %struct.priv*, %struct.priv** %6, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 7
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %7, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %21 = load %struct.priv*, %struct.priv** %6, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = call i32 @avcodec_receive_frame(%struct.TYPE_12__* %20, %struct.TYPE_14__* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @AVERROR_EOF, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load %struct.priv*, %struct.priv** %6, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 7
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = call i32 @avcodec_flush_buffers(%struct.TYPE_12__* %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %181

34:                                               ; preds = %2
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = call i32 @AVERROR(i32 %39)
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %44 = call i32 @MP_ERR(%struct.mp_filter* %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %37, %34
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.priv*, %struct.priv** %6, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %181

57:                                               ; preds = %46
  %58 = load %struct.priv*, %struct.priv** %6, align 8
  %59 = getelementptr inbounds %struct.priv, %struct.priv* %58, i32 0, i32 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.priv*, %struct.priv** %6, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 6
  %65 = call double @mp_pts_from_av(i32 %62, i32* %64)
  store double %65, double* %9, align 8
  %66 = load %struct.priv*, %struct.priv** %6, align 8
  %67 = getelementptr inbounds %struct.priv, %struct.priv* %66, i32 0, i32 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = call %struct.mp_aframe* @mp_aframe_from_avframe(%struct.TYPE_14__* %68)
  store %struct.mp_aframe* %69, %struct.mp_aframe** %10, align 8
  %70 = load %struct.mp_aframe*, %struct.mp_aframe** %10, align 8
  %71 = icmp ne %struct.mp_aframe* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %57
  %73 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %74 = call i32 @MP_ERR(%struct.mp_filter* %73, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %181

76:                                               ; preds = %57
  %77 = load %struct.priv*, %struct.priv** %6, align 8
  %78 = getelementptr inbounds %struct.priv, %struct.priv* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load %struct.mp_aframe*, %struct.mp_aframe** %10, align 8
  %84 = load %struct.priv*, %struct.priv** %6, align 8
  %85 = getelementptr inbounds %struct.priv, %struct.priv* %84, i32 0, i32 5
  %86 = call i32 @mp_aframe_set_chmap(%struct.mp_aframe* %83, %struct.TYPE_13__* %85)
  br label %87

87:                                               ; preds = %82, %76
  %88 = load double, double* %9, align 8
  %89 = load double, double* @MP_NOPTS_VALUE, align 8
  %90 = fcmp oeq double %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load %struct.priv*, %struct.priv** %6, align 8
  %93 = getelementptr inbounds %struct.priv, %struct.priv* %92, i32 0, i32 0
  %94 = load double, double* %93, align 8
  store double %94, double* %9, align 8
  br label %95

95:                                               ; preds = %91, %87
  %96 = load %struct.mp_aframe*, %struct.mp_aframe** %10, align 8
  %97 = load double, double* %9, align 8
  %98 = call i32 @mp_aframe_set_pts(%struct.mp_aframe* %96, double %97)
  %99 = load %struct.mp_aframe*, %struct.mp_aframe** %10, align 8
  %100 = call double @mp_aframe_end_pts(%struct.mp_aframe* %99)
  %101 = load %struct.priv*, %struct.priv** %6, align 8
  %102 = getelementptr inbounds %struct.priv, %struct.priv* %101, i32 0, i32 0
  store double %100, double* %102, align 8
  %103 = load %struct.priv*, %struct.priv** %6, align 8
  %104 = getelementptr inbounds %struct.priv, %struct.priv* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %95
  %108 = load %struct.priv*, %struct.priv** %6, align 8
  %109 = getelementptr inbounds %struct.priv, %struct.priv* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %107
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.priv*, %struct.priv** %6, align 8
  %117 = getelementptr inbounds %struct.priv, %struct.priv* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %112, %107
  %119 = load %struct.priv*, %struct.priv** %6, align 8
  %120 = getelementptr inbounds %struct.priv, %struct.priv* %119, i32 0, i32 3
  store i32 1, i32* %120, align 8
  br label %121

121:                                              ; preds = %118, %95
  %122 = load %struct.priv*, %struct.priv** %6, align 8
  %123 = getelementptr inbounds %struct.priv, %struct.priv* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.mp_aframe*, %struct.mp_aframe** %10, align 8
  %126 = call i64 @mp_aframe_get_size(%struct.mp_aframe* %125)
  %127 = call i64 @MPMIN(i64 %124, i64 %126)
  store i64 %127, i64* %11, align 8
  %128 = load i64, i64* %11, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %121
  %131 = load %struct.mp_aframe*, %struct.mp_aframe** %10, align 8
  %132 = load i64, i64* %11, align 8
  %133 = call i32 @mp_aframe_skip_samples(%struct.mp_aframe* %131, i64 %132)
  %134 = load i64, i64* %11, align 8
  %135 = load %struct.priv*, %struct.priv** %6, align 8
  %136 = getelementptr inbounds %struct.priv, %struct.priv* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = sub nsw i64 %137, %134
  store i64 %138, i64* %136, align 8
  br label %139

139:                                              ; preds = %130, %121
  %140 = load %struct.priv*, %struct.priv** %6, align 8
  %141 = getelementptr inbounds %struct.priv, %struct.priv* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.mp_aframe*, %struct.mp_aframe** %10, align 8
  %144 = call i64 @mp_aframe_get_size(%struct.mp_aframe* %143)
  %145 = call i64 @MPMIN(i64 %142, i64 %144)
  store i64 %145, i64* %12, align 8
  %146 = load i64, i64* %12, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %139
  %149 = load %struct.mp_aframe*, %struct.mp_aframe** %10, align 8
  %150 = load %struct.mp_aframe*, %struct.mp_aframe** %10, align 8
  %151 = call i64 @mp_aframe_get_size(%struct.mp_aframe* %150)
  %152 = load i64, i64* %12, align 8
  %153 = sub nsw i64 %151, %152
  %154 = call i32 @mp_aframe_set_size(%struct.mp_aframe* %149, i64 %153)
  %155 = load i64, i64* %12, align 8
  %156 = load %struct.priv*, %struct.priv** %6, align 8
  %157 = getelementptr inbounds %struct.priv, %struct.priv* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = sub nsw i64 %158, %155
  store i64 %159, i64* %157, align 8
  br label %160

160:                                              ; preds = %148, %139
  %161 = load %struct.mp_aframe*, %struct.mp_aframe** %10, align 8
  %162 = call i64 @mp_aframe_get_size(%struct.mp_aframe* %161)
  %163 = icmp sgt i64 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %160
  %165 = load %struct.mp_frame*, %struct.mp_frame** %5, align 8
  %166 = load i32, i32* @MP_FRAME_AUDIO, align 4
  %167 = load %struct.mp_aframe*, %struct.mp_aframe** %10, align 8
  %168 = call i32 @MAKE_FRAME(i32 %166, %struct.mp_aframe* %167)
  %169 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %13, i32 0, i32 0
  store i32 %168, i32* %169, align 4
  %170 = bitcast %struct.mp_frame* %165 to i8*
  %171 = bitcast %struct.mp_frame* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %170, i8* align 4 %171, i64 4, i1 false)
  br label %175

172:                                              ; preds = %160
  %173 = load %struct.mp_aframe*, %struct.mp_aframe** %10, align 8
  %174 = call i32 @talloc_free(%struct.mp_aframe* %173)
  br label %175

175:                                              ; preds = %172, %164
  %176 = load %struct.priv*, %struct.priv** %6, align 8
  %177 = getelementptr inbounds %struct.priv, %struct.priv* %176, i32 0, i32 4
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %177, align 8
  %179 = call i32 @av_frame_unref(%struct.TYPE_14__* %178)
  %180 = load i32, i32* %8, align 4
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %175, %72, %55, %28
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @avcodec_receive_frame(%struct.TYPE_12__*, %struct.TYPE_14__*) #1

declare dso_local i32 @avcodec_flush_buffers(%struct.TYPE_12__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @MP_ERR(%struct.mp_filter*, i8*) #1

declare dso_local double @mp_pts_from_av(i32, i32*) #1

declare dso_local %struct.mp_aframe* @mp_aframe_from_avframe(%struct.TYPE_14__*) #1

declare dso_local i32 @mp_aframe_set_chmap(%struct.mp_aframe*, %struct.TYPE_13__*) #1

declare dso_local i32 @mp_aframe_set_pts(%struct.mp_aframe*, double) #1

declare dso_local double @mp_aframe_end_pts(%struct.mp_aframe*) #1

declare dso_local i64 @MPMIN(i64, i64) #1

declare dso_local i64 @mp_aframe_get_size(%struct.mp_aframe*) #1

declare dso_local i32 @mp_aframe_skip_samples(%struct.mp_aframe*, i64) #1

declare dso_local i32 @mp_aframe_set_size(%struct.mp_aframe*, i64) #1

declare dso_local i32 @MAKE_FRAME(i32, %struct.mp_aframe*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @talloc_free(%struct.mp_aframe*) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
