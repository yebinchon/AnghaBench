; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_process_decoded_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_process_decoded_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i64, double, double, i32, i64 }
%struct.mp_frame = type { i64, %struct.mp_image* }
%struct.mp_image = type { double, i32, i32 }
%struct.demux_packet = type { double, i32 }
%struct.mp_aframe = type { double, i32, i32 }

@MP_FRAME_EOF = common dso_local global i64 0, align 8
@MP_FRAME_VIDEO = common dso_local global i64 0, align 8
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@MP_FRAME_AUDIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"unknown frame type from decoder\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.priv*, %struct.mp_frame*)* @process_decoded_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_decoded_frame(%struct.priv* %0, %struct.mp_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.mp_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mp_image*, align 8
  %8 = alloca %struct.demux_packet*, align 8
  %9 = alloca %struct.mp_aframe*, align 8
  %10 = alloca double, align 8
  store %struct.priv* %0, %struct.priv** %4, align 8
  store %struct.mp_frame* %1, %struct.mp_frame** %5, align 8
  %11 = load %struct.mp_frame*, %struct.mp_frame** %5, align 8
  %12 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MP_FRAME_EOF, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.priv*, %struct.priv** %4, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.mp_frame*, %struct.mp_frame** %5, align 8
  %23 = call i32 @mp_frame_unref(%struct.mp_frame* %22)
  br label %24

24:                                               ; preds = %21, %16
  store i32 1, i32* %3, align 4
  br label %184

25:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %26 = load %struct.mp_frame*, %struct.mp_frame** %5, align 8
  %27 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MP_FRAME_VIDEO, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %127

31:                                               ; preds = %25
  %32 = load %struct.mp_frame*, %struct.mp_frame** %5, align 8
  %33 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %32, i32 0, i32 1
  %34 = load %struct.mp_image*, %struct.mp_image** %33, align 8
  store %struct.mp_image* %34, %struct.mp_image** %7, align 8
  %35 = load %struct.priv*, %struct.priv** %4, align 8
  %36 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %37 = call i32 @crazy_video_pts_stuff(%struct.priv* %35, %struct.mp_image* %36)
  %38 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %39 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.demux_packet* @new_demux_packet_from_buf(i32 %40)
  store %struct.demux_packet* %41, %struct.demux_packet** %8, align 8
  %42 = load %struct.demux_packet*, %struct.demux_packet** %8, align 8
  %43 = icmp ne %struct.demux_packet* %42, null
  br i1 %43, label %44, label %63

44:                                               ; preds = %31
  %45 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %46 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %45, i32 0, i32 2
  %47 = call i32 @av_buffer_unref(i32* %46)
  %48 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %49 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %48, i32 0, i32 0
  %50 = load double, double* %49, align 8
  %51 = load %struct.demux_packet*, %struct.demux_packet** %8, align 8
  %52 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %51, i32 0, i32 0
  store double %50, double* %52, align 8
  %53 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %54 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.demux_packet*, %struct.demux_packet** %8, align 8
  %57 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.priv*, %struct.priv** %4, align 8
  %59 = getelementptr inbounds %struct.priv, %struct.priv* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.demux_packet*, %struct.demux_packet** %8, align 8
  %62 = call i32 @demuxer_feed_caption(i32 %60, %struct.demux_packet* %61)
  br label %63

63:                                               ; preds = %44, %31
  %64 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %65 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %64, i32 0, i32 0
  %66 = load double, double* %65, align 8
  %67 = load double, double* @MP_NOPTS_VALUE, align 8
  %68 = fcmp oeq double %66, %67
  br i1 %68, label %78, label %69

69:                                               ; preds = %63
  %70 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %71 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %70, i32 0, i32 0
  %72 = load double, double* %71, align 8
  %73 = load %struct.priv*, %struct.priv** %4, align 8
  %74 = getelementptr inbounds %struct.priv, %struct.priv* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = sitofp i64 %75 to double
  %77 = fcmp oge double %72, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %69, %63
  %79 = load double, double* @MP_NOPTS_VALUE, align 8
  %80 = fptosi double %79 to i64
  %81 = load %struct.priv*, %struct.priv** %4, align 8
  %82 = getelementptr inbounds %struct.priv, %struct.priv* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %78, %69
  %84 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %85 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %84, i32 0, i32 0
  %86 = load double, double* %85, align 8
  %87 = load double, double* @MP_NOPTS_VALUE, align 8
  %88 = fcmp une double %86, %87
  br i1 %88, label %89, label %126

89:                                               ; preds = %83
  %90 = load %struct.priv*, %struct.priv** %4, align 8
  %91 = getelementptr inbounds %struct.priv, %struct.priv* %90, i32 0, i32 1
  %92 = load double, double* %91, align 8
  %93 = load double, double* @MP_NOPTS_VALUE, align 8
  %94 = fcmp une double %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %89
  %96 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %97 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %96, i32 0, i32 0
  %98 = load double, double* %97, align 8
  %99 = load %struct.priv*, %struct.priv** %4, align 8
  %100 = getelementptr inbounds %struct.priv, %struct.priv* %99, i32 0, i32 1
  %101 = load double, double* %100, align 8
  %102 = fcmp oge double %98, %101
  br label %103

103:                                              ; preds = %95, %89
  %104 = phi i1 [ false, %89 ], [ %102, %95 ]
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %6, align 4
  %106 = load %struct.priv*, %struct.priv** %4, align 8
  %107 = getelementptr inbounds %struct.priv, %struct.priv* %106, i32 0, i32 2
  %108 = load double, double* %107, align 8
  %109 = load double, double* @MP_NOPTS_VALUE, align 8
  %110 = fcmp une double %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %103
  %112 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %113 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %112, i32 0, i32 0
  %114 = load double, double* %113, align 8
  %115 = load %struct.priv*, %struct.priv** %4, align 8
  %116 = getelementptr inbounds %struct.priv, %struct.priv* %115, i32 0, i32 2
  %117 = load double, double* %116, align 8
  %118 = fcmp olt double %114, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %111, %103
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119, %111
  %123 = load %struct.mp_frame*, %struct.mp_frame** %5, align 8
  %124 = call i32 @mp_frame_unref(%struct.mp_frame* %123)
  br label %182

125:                                              ; preds = %119
  br label %126

126:                                              ; preds = %125, %83
  br label %181

127:                                              ; preds = %25
  %128 = load %struct.mp_frame*, %struct.mp_frame** %5, align 8
  %129 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @MP_FRAME_AUDIO, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %177

133:                                              ; preds = %127
  %134 = load %struct.mp_frame*, %struct.mp_frame** %5, align 8
  %135 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %134, i32 0, i32 1
  %136 = load %struct.mp_image*, %struct.mp_image** %135, align 8
  %137 = bitcast %struct.mp_image* %136 to %struct.mp_aframe*
  store %struct.mp_aframe* %137, %struct.mp_aframe** %9, align 8
  %138 = load %struct.mp_aframe*, %struct.mp_aframe** %9, align 8
  %139 = bitcast %struct.mp_aframe* %138 to %struct.mp_image*
  %140 = load %struct.priv*, %struct.priv** %4, align 8
  %141 = getelementptr inbounds %struct.priv, %struct.priv* %140, i32 0, i32 2
  %142 = load double, double* %141, align 8
  %143 = fptosi double %142 to i64
  %144 = load %struct.priv*, %struct.priv** %4, align 8
  %145 = getelementptr inbounds %struct.priv, %struct.priv* %144, i32 0, i32 1
  %146 = load double, double* %145, align 8
  %147 = fptosi double %146 to i64
  %148 = call i32 @mp_aframe_clip_timestamps(%struct.mp_image* %139, i64 %143, i64 %147)
  %149 = load %struct.mp_aframe*, %struct.mp_aframe** %9, align 8
  %150 = bitcast %struct.mp_aframe* %149 to %struct.mp_image*
  %151 = call double @mp_aframe_get_pts(%struct.mp_image* %150)
  store double %151, double* %10, align 8
  %152 = load double, double* %10, align 8
  %153 = load double, double* @MP_NOPTS_VALUE, align 8
  %154 = fcmp une double %152, %153
  br i1 %154, label %155, label %168

155:                                              ; preds = %133
  %156 = load %struct.priv*, %struct.priv** %4, align 8
  %157 = getelementptr inbounds %struct.priv, %struct.priv* %156, i32 0, i32 2
  %158 = load double, double* %157, align 8
  %159 = load double, double* @MP_NOPTS_VALUE, align 8
  %160 = fcmp une double %158, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %155
  %162 = load double, double* %10, align 8
  %163 = load %struct.priv*, %struct.priv** %4, align 8
  %164 = getelementptr inbounds %struct.priv, %struct.priv* %163, i32 0, i32 1
  %165 = load double, double* %164, align 8
  %166 = fcmp oge double %162, %165
  %167 = zext i1 %166 to i32
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %161, %155, %133
  %169 = load %struct.mp_aframe*, %struct.mp_aframe** %9, align 8
  %170 = bitcast %struct.mp_aframe* %169 to %struct.mp_image*
  %171 = call i64 @mp_aframe_get_size(%struct.mp_image* %170)
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load %struct.mp_frame*, %struct.mp_frame** %5, align 8
  %175 = call i32 @mp_frame_unref(%struct.mp_frame* %174)
  br label %182

176:                                              ; preds = %168
  br label %180

177:                                              ; preds = %127
  %178 = load %struct.priv*, %struct.priv** %4, align 8
  %179 = call i32 @MP_ERR(%struct.priv* %178, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %176
  br label %181

181:                                              ; preds = %180, %126
  br label %182

182:                                              ; preds = %181, %173, %122
  %183 = load i32, i32* %6, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %182, %24
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @mp_frame_unref(%struct.mp_frame*) #1

declare dso_local i32 @crazy_video_pts_stuff(%struct.priv*, %struct.mp_image*) #1

declare dso_local %struct.demux_packet* @new_demux_packet_from_buf(i32) #1

declare dso_local i32 @av_buffer_unref(i32*) #1

declare dso_local i32 @demuxer_feed_caption(i32, %struct.demux_packet*) #1

declare dso_local i32 @mp_aframe_clip_timestamps(%struct.mp_image*, i64, i64) #1

declare dso_local double @mp_aframe_get_pts(%struct.mp_image*) #1

declare dso_local i64 @mp_aframe_get_size(%struct.mp_image*) #1

declare dso_local i32 @MP_ERR(%struct.priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
