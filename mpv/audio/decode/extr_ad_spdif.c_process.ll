; ModuleID = '/home/carl/AnghaBench/mpv/audio/decode/extr_ad_spdif.c_process.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/decode/extr_ad_spdif.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { i32*, %struct.spdifContext* }
%struct.spdifContext = type { i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.mp_frame = type { i64, %struct.demux_packet* }
%struct.demux_packet = type { double }
%struct.mp_aframe = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }

@MP_FRAME_EOF = common dso_local global i64 0, align 8
@MP_FRAME_PACKET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"unknown frame type\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"spdif mux error: '%s'\0A\00", align 1
@MP_FRAME_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.spdifContext*, align 8
  %4 = alloca %struct.mp_frame, align 8
  %5 = alloca %struct.demux_packet*, align 8
  %6 = alloca %struct.mp_aframe*, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca %struct.mp_frame, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %13 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %14 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %13, i32 0, i32 1
  %15 = load %struct.spdifContext*, %struct.spdifContext** %14, align 8
  store %struct.spdifContext* %15, %struct.spdifContext** %3, align 8
  %16 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %17 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %22 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mp_pin_can_transfer_data(i32 %20, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %184

29:                                               ; preds = %1
  %30 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %31 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call { i64, %struct.demux_packet* } @mp_pin_out_read(i32 %34)
  %36 = bitcast %struct.mp_frame* %4 to { i64, %struct.demux_packet* }*
  %37 = getelementptr inbounds { i64, %struct.demux_packet* }, { i64, %struct.demux_packet* }* %36, i32 0, i32 0
  %38 = extractvalue { i64, %struct.demux_packet* } %35, 0
  store i64 %38, i64* %37, align 8
  %39 = getelementptr inbounds { i64, %struct.demux_packet* }, { i64, %struct.demux_packet* }* %36, i32 0, i32 1
  %40 = extractvalue { i64, %struct.demux_packet* } %35, 1
  store %struct.demux_packet* %40, %struct.demux_packet** %39, align 8
  %41 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MP_FRAME_EOF, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %29
  %46 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %47 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = bitcast %struct.mp_frame* %4 to { i64, %struct.demux_packet* }*
  %52 = getelementptr inbounds { i64, %struct.demux_packet* }, { i64, %struct.demux_packet* }* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds { i64, %struct.demux_packet* }, { i64, %struct.demux_packet* }* %51, i32 0, i32 1
  %55 = load %struct.demux_packet*, %struct.demux_packet** %54, align 8
  %56 = call i32 @mp_pin_in_write(i32 %50, i64 %53, %struct.demux_packet* %55)
  br label %184

57:                                               ; preds = %29
  %58 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MP_FRAME_PACKET, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %68 = call i32 (%struct.mp_filter*, i8*, ...) @MP_ERR(%struct.mp_filter* %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %70 = call i32 @mp_filter_internal_mark_failed(%struct.mp_filter* %69)
  br label %71

71:                                               ; preds = %66, %62
  br label %184

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 1
  %75 = load %struct.demux_packet*, %struct.demux_packet** %74, align 8
  store %struct.demux_packet* %75, %struct.demux_packet** %5, align 8
  store %struct.mp_aframe* null, %struct.mp_aframe** %6, align 8
  %76 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %77 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %76, i32 0, i32 0
  %78 = load double, double* %77, align 8
  store double %78, double* %7, align 8
  %79 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %80 = call i32 @mp_set_av_packet(%struct.TYPE_6__* %8, %struct.demux_packet* %79, i32* null)
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load %struct.spdifContext*, %struct.spdifContext** %3, align 8
  %84 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %83, i32 0, i32 5
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = icmp ne %struct.TYPE_7__* %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %73
  %88 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %89 = call i64 @init_filter(%struct.mp_filter* %88, %struct.TYPE_6__* %8)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %156

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %73
  %94 = load %struct.spdifContext*, %struct.spdifContext** %3, align 8
  %95 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  %96 = load %struct.spdifContext*, %struct.spdifContext** %3, align 8
  %97 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %96, i32 0, i32 5
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = call i32 @av_write_frame(%struct.TYPE_7__* %98, %struct.TYPE_6__* %8)
  store i32 %99, i32* %9, align 4
  %100 = load %struct.spdifContext*, %struct.spdifContext** %3, align 8
  %101 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %100, i32 0, i32 5
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @avio_flush(i32 %104)
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %93
  %109 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @AVUNERROR(i32 %110)
  %112 = call i32 @mp_strerror(i32 %111)
  %113 = call i32 (%struct.mp_filter*, i8*, ...) @MP_ERR(%struct.mp_filter* %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  br label %156

114:                                              ; preds = %93
  %115 = load %struct.spdifContext*, %struct.spdifContext** %3, align 8
  %116 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = call %struct.mp_aframe* @mp_aframe_new_ref(i32 %117)
  store %struct.mp_aframe* %118, %struct.mp_aframe** %6, align 8
  %119 = load %struct.spdifContext*, %struct.spdifContext** %3, align 8
  %120 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.spdifContext*, %struct.spdifContext** %3, align 8
  %123 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sdiv i32 %121, %124
  store i32 %125, i32* %10, align 4
  %126 = load %struct.spdifContext*, %struct.spdifContext** %3, align 8
  %127 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %130 = load i32, i32* %10, align 4
  %131 = call i64 @mp_aframe_pool_allocate(i32 %128, %struct.mp_aframe* %129, i32 %130)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %114
  %134 = call i32 @TA_FREEP(%struct.mp_aframe** %6)
  br label %156

135:                                              ; preds = %114
  %136 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %137 = call i32** @mp_aframe_get_data_rw(%struct.mp_aframe* %136)
  store i32** %137, i32*** %11, align 8
  %138 = load i32**, i32*** %11, align 8
  %139 = icmp ne i32** %138, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %135
  %141 = call i32 @TA_FREEP(%struct.mp_aframe** %6)
  br label %156

142:                                              ; preds = %135
  %143 = load i32**, i32*** %11, align 8
  %144 = getelementptr inbounds i32*, i32** %143, i64 0
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.spdifContext*, %struct.spdifContext** %3, align 8
  %147 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.spdifContext*, %struct.spdifContext** %3, align 8
  %150 = getelementptr inbounds %struct.spdifContext, %struct.spdifContext* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @memcpy(i32* %145, i32 %148, i32 %151)
  %153 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %154 = load double, double* %7, align 8
  %155 = call i32 @mp_aframe_set_pts(%struct.mp_aframe* %153, double %154)
  br label %156

156:                                              ; preds = %142, %140, %133, %108, %91
  %157 = load %struct.demux_packet*, %struct.demux_packet** %5, align 8
  %158 = call i32 @talloc_free(%struct.demux_packet* %157)
  %159 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %160 = icmp ne %struct.mp_aframe* %159, null
  br i1 %160, label %161, label %181

161:                                              ; preds = %156
  %162 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %163 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @MP_FRAME_AUDIO, align 4
  %168 = load %struct.mp_aframe*, %struct.mp_aframe** %6, align 8
  %169 = call { i64, %struct.demux_packet* } @MAKE_FRAME(i32 %167, %struct.mp_aframe* %168)
  %170 = bitcast %struct.mp_frame* %12 to { i64, %struct.demux_packet* }*
  %171 = getelementptr inbounds { i64, %struct.demux_packet* }, { i64, %struct.demux_packet* }* %170, i32 0, i32 0
  %172 = extractvalue { i64, %struct.demux_packet* } %169, 0
  store i64 %172, i64* %171, align 8
  %173 = getelementptr inbounds { i64, %struct.demux_packet* }, { i64, %struct.demux_packet* }* %170, i32 0, i32 1
  %174 = extractvalue { i64, %struct.demux_packet* } %169, 1
  store %struct.demux_packet* %174, %struct.demux_packet** %173, align 8
  %175 = bitcast %struct.mp_frame* %12 to { i64, %struct.demux_packet* }*
  %176 = getelementptr inbounds { i64, %struct.demux_packet* }, { i64, %struct.demux_packet* }* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds { i64, %struct.demux_packet* }, { i64, %struct.demux_packet* }* %175, i32 0, i32 1
  %179 = load %struct.demux_packet*, %struct.demux_packet** %178, align 8
  %180 = call i32 @mp_pin_in_write(i32 %166, i64 %177, %struct.demux_packet* %179)
  br label %184

181:                                              ; preds = %156
  %182 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %183 = call i32 @mp_filter_internal_mark_failed(%struct.mp_filter* %182)
  br label %184

184:                                              ; preds = %28, %45, %71, %181, %161
  ret void
}

declare dso_local i32 @mp_pin_can_transfer_data(i32, i32) #1

declare dso_local { i64, %struct.demux_packet* } @mp_pin_out_read(i32) #1

declare dso_local i32 @mp_pin_in_write(i32, i64, %struct.demux_packet*) #1

declare dso_local i32 @MP_ERR(%struct.mp_filter*, i8*, ...) #1

declare dso_local i32 @mp_filter_internal_mark_failed(%struct.mp_filter*) #1

declare dso_local i32 @mp_set_av_packet(%struct.TYPE_6__*, %struct.demux_packet*, i32*) #1

declare dso_local i64 @init_filter(%struct.mp_filter*, %struct.TYPE_6__*) #1

declare dso_local i32 @av_write_frame(%struct.TYPE_7__*, %struct.TYPE_6__*) #1

declare dso_local i32 @avio_flush(i32) #1

declare dso_local i32 @mp_strerror(i32) #1

declare dso_local i32 @AVUNERROR(i32) #1

declare dso_local %struct.mp_aframe* @mp_aframe_new_ref(i32) #1

declare dso_local i64 @mp_aframe_pool_allocate(i32, %struct.mp_aframe*, i32) #1

declare dso_local i32 @TA_FREEP(%struct.mp_aframe**) #1

declare dso_local i32** @mp_aframe_get_data_rw(%struct.mp_aframe*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @mp_aframe_set_pts(%struct.mp_aframe*, double) #1

declare dso_local i32 @talloc_free(%struct.demux_packet*) #1

declare dso_local { i64, %struct.demux_packet* } @MAKE_FRAME(i32, %struct.mp_aframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
