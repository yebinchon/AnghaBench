; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_feed_packet.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_feed_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.demux_packet* }
%struct.demux_packet = type { double, double, i64 }
%struct.priv = type { double, double, i32, double, i32, i32, i32, %struct.TYPE_17__, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__, %struct.demux_packet*, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { %struct.TYPE_16__*, i32 (%struct.TYPE_16__*, i32, i32*)* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i64 }

@MP_FRAME_EOF = common dso_local global i64 0, align 8
@MP_FRAME_PACKET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"invalid frame type from demuxer\0A\00", align 1
@MP_EOF_FRAME = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@VDCTRL_SET_FRAMEDROP = common dso_local global i32 0, align 4
@MP_NO_FRAME = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.priv*)* @feed_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @feed_packet(%struct.priv* %0) #0 {
  %2 = alloca %struct.priv*, align 8
  %3 = alloca %struct.TYPE_17__, align 8
  %4 = alloca %struct.demux_packet*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store %struct.priv* %0, %struct.priv** %2, align 8
  %10 = load %struct.priv*, %struct.priv** %2, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %13 = icmp ne %struct.TYPE_15__* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.priv*, %struct.priv** %2, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mp_pin_in_needs_data(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %14, %1
  br label %356

27:                                               ; preds = %14
  %28 = load %struct.priv*, %struct.priv** %2, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 14
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %356

34:                                               ; preds = %27
  %35 = load %struct.priv*, %struct.priv** %2, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %90, label %40

40:                                               ; preds = %34
  %41 = load %struct.priv*, %struct.priv** %2, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 11
  %43 = load %struct.demux_packet*, %struct.demux_packet** %42, align 8
  %44 = icmp ne %struct.demux_packet* %43, null
  br i1 %44, label %90, label %45

45:                                               ; preds = %40
  %46 = load %struct.priv*, %struct.priv** %2, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 7
  %48 = load %struct.priv*, %struct.priv** %2, align 8
  %49 = getelementptr inbounds %struct.priv, %struct.priv* %48, i32 0, i32 13
  %50 = load i32, i32* %49, align 4
  %51 = call { i64, %struct.demux_packet* } @mp_pin_out_read(i32 %50)
  %52 = bitcast %struct.TYPE_17__* %3 to { i64, %struct.demux_packet* }*
  %53 = getelementptr inbounds { i64, %struct.demux_packet* }, { i64, %struct.demux_packet* }* %52, i32 0, i32 0
  %54 = extractvalue { i64, %struct.demux_packet* } %51, 0
  store i64 %54, i64* %53, align 8
  %55 = getelementptr inbounds { i64, %struct.demux_packet* }, { i64, %struct.demux_packet* }* %52, i32 0, i32 1
  %56 = extractvalue { i64, %struct.demux_packet* } %51, 1
  store %struct.demux_packet* %56, %struct.demux_packet** %55, align 8
  %57 = bitcast %struct.TYPE_17__* %47 to i8*
  %58 = bitcast %struct.TYPE_17__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 16, i1 false)
  %59 = load %struct.priv*, %struct.priv** %2, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 7
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %45
  br label %356

65:                                               ; preds = %45
  %66 = load %struct.priv*, %struct.priv** %2, align 8
  %67 = getelementptr inbounds %struct.priv, %struct.priv* %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @MP_FRAME_EOF, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %65
  %73 = load %struct.priv*, %struct.priv** %2, align 8
  %74 = getelementptr inbounds %struct.priv, %struct.priv* %73, i32 0, i32 7
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MP_FRAME_PACKET, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %72
  %80 = load %struct.priv*, %struct.priv** %2, align 8
  %81 = call i32 @MP_ERR(%struct.priv* %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %82 = load %struct.priv*, %struct.priv** %2, align 8
  %83 = getelementptr inbounds %struct.priv, %struct.priv* %82, i32 0, i32 7
  %84 = call i32 @mp_frame_unref(%struct.TYPE_17__* %83)
  %85 = load %struct.priv*, %struct.priv** %2, align 8
  %86 = getelementptr inbounds %struct.priv, %struct.priv* %85, i32 0, i32 12
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @mp_filter_internal_mark_failed(i32 %87)
  br label %356

89:                                               ; preds = %72, %65
  br label %90

90:                                               ; preds = %89, %40, %34
  %91 = load %struct.priv*, %struct.priv** %2, align 8
  %92 = getelementptr inbounds %struct.priv, %struct.priv* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  br label %356

97:                                               ; preds = %90
  %98 = load %struct.priv*, %struct.priv** %2, align 8
  %99 = load %struct.priv*, %struct.priv** %2, align 8
  %100 = getelementptr inbounds %struct.priv, %struct.priv* %99, i32 0, i32 7
  %101 = bitcast %struct.TYPE_17__* %100 to { i64, %struct.demux_packet* }*
  %102 = getelementptr inbounds { i64, %struct.demux_packet* }, { i64, %struct.demux_packet* }* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds { i64, %struct.demux_packet* }, { i64, %struct.demux_packet* }* %101, i32 0, i32 1
  %105 = load %struct.demux_packet*, %struct.demux_packet** %104, align 8
  %106 = call i64 @is_new_segment(%struct.priv* %98, i64 %103, %struct.demux_packet* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %97
  %109 = load %struct.priv*, %struct.priv** %2, align 8
  %110 = getelementptr inbounds %struct.priv, %struct.priv* %109, i32 0, i32 11
  %111 = load %struct.demux_packet*, %struct.demux_packet** %110, align 8
  %112 = icmp ne %struct.demux_packet* %111, null
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load %struct.priv*, %struct.priv** %2, align 8
  %117 = getelementptr inbounds %struct.priv, %struct.priv* %116, i32 0, i32 7
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  %119 = load %struct.demux_packet*, %struct.demux_packet** %118, align 8
  %120 = load %struct.priv*, %struct.priv** %2, align 8
  %121 = getelementptr inbounds %struct.priv, %struct.priv* %120, i32 0, i32 11
  store %struct.demux_packet* %119, %struct.demux_packet** %121, align 8
  %122 = load %struct.priv*, %struct.priv** %2, align 8
  %123 = getelementptr inbounds %struct.priv, %struct.priv* %122, i32 0, i32 7
  %124 = bitcast %struct.TYPE_17__* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 bitcast (%struct.TYPE_17__* @MP_EOF_FRAME to i8*), i64 16, i1 false)
  br label %125

125:                                              ; preds = %108, %97
  %126 = load %struct.priv*, %struct.priv** %2, align 8
  %127 = getelementptr inbounds %struct.priv, %struct.priv* %126, i32 0, i32 7
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @MP_FRAME_PACKET, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %139, label %132

132:                                              ; preds = %125
  %133 = load %struct.priv*, %struct.priv** %2, align 8
  %134 = getelementptr inbounds %struct.priv, %struct.priv* %133, i32 0, i32 7
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @MP_FRAME_EOF, align 8
  %138 = icmp eq i64 %136, %137
  br label %139

139:                                              ; preds = %132, %125
  %140 = phi i1 [ true, %125 ], [ %138, %132 ]
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = load %struct.priv*, %struct.priv** %2, align 8
  %144 = getelementptr inbounds %struct.priv, %struct.priv* %143, i32 0, i32 7
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @MP_FRAME_PACKET, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %139
  %150 = load %struct.priv*, %struct.priv** %2, align 8
  %151 = getelementptr inbounds %struct.priv, %struct.priv* %150, i32 0, i32 7
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  %153 = load %struct.demux_packet*, %struct.demux_packet** %152, align 8
  br label %155

154:                                              ; preds = %139
  br label %155

155:                                              ; preds = %154, %149
  %156 = phi %struct.demux_packet* [ %153, %149 ], [ null, %154 ]
  store %struct.demux_packet* %156, %struct.demux_packet** %4, align 8
  %157 = load %struct.priv*, %struct.priv** %2, align 8
  %158 = getelementptr inbounds %struct.priv, %struct.priv* %157, i32 0, i32 8
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  %161 = load i32 (%struct.TYPE_16__*, i32, i32*)*, i32 (%struct.TYPE_16__*, i32, i32*)** %160, align 8
  %162 = icmp ne i32 (%struct.TYPE_16__*, i32, i32*)* %161, null
  br i1 %162, label %163, label %232

163:                                              ; preds = %155
  %164 = load %struct.priv*, %struct.priv** %2, align 8
  %165 = getelementptr inbounds %struct.priv, %struct.priv* %164, i32 0, i32 0
  %166 = load double, double* %165, align 8
  store double %166, double* %5, align 8
  %167 = load %struct.priv*, %struct.priv** %2, align 8
  %168 = getelementptr inbounds %struct.priv, %struct.priv* %167, i32 0, i32 1
  %169 = load double, double* %168, align 8
  %170 = load double, double* @MP_NOPTS_VALUE, align 8
  %171 = fcmp une double %169, %170
  br i1 %171, label %172, label %186

172:                                              ; preds = %163
  %173 = load double, double* %5, align 8
  %174 = load double, double* @MP_NOPTS_VALUE, align 8
  %175 = fcmp oeq double %173, %174
  br i1 %175, label %182, label %176

176:                                              ; preds = %172
  %177 = load %struct.priv*, %struct.priv** %2, align 8
  %178 = getelementptr inbounds %struct.priv, %struct.priv* %177, i32 0, i32 1
  %179 = load double, double* %178, align 8
  %180 = load double, double* %5, align 8
  %181 = fcmp ogt double %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %176, %172
  %183 = load %struct.priv*, %struct.priv** %2, align 8
  %184 = getelementptr inbounds %struct.priv, %struct.priv* %183, i32 0, i32 1
  %185 = load double, double* %184, align 8
  store double %185, double* %5, align 8
  br label %186

186:                                              ; preds = %182, %176, %163
  store i32 0, i32* %6, align 4
  %187 = load %struct.priv*, %struct.priv** %2, align 8
  %188 = getelementptr inbounds %struct.priv, %struct.priv* %187, i32 0, i32 10
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  store i32 1, i32* %6, align 4
  br label %193

193:                                              ; preds = %192, %186
  %194 = load double, double* %5, align 8
  %195 = load double, double* @MP_NOPTS_VALUE, align 8
  %196 = fcmp une double %194, %195
  br i1 %196, label %197, label %219

197:                                              ; preds = %193
  %198 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %199 = icmp ne %struct.demux_packet* %198, null
  br i1 %199, label %200, label %219

200:                                              ; preds = %197
  %201 = load %struct.priv*, %struct.priv** %2, align 8
  %202 = getelementptr inbounds %struct.priv, %struct.priv* %201, i32 0, i32 10
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp sgt i64 %204, 0
  br i1 %205, label %206, label %219

206:                                              ; preds = %200
  %207 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %208 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %207, i32 0, i32 0
  %209 = load double, double* %208, align 8
  %210 = load double, double* %5, align 8
  %211 = fsub double %210, 5.000000e-03
  %212 = fcmp olt double %209, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %206
  %214 = load %struct.priv*, %struct.priv** %2, align 8
  %215 = getelementptr inbounds %struct.priv, %struct.priv* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %213
  store i32 2, i32* %6, align 4
  br label %219

219:                                              ; preds = %218, %213, %206, %200, %197, %193
  %220 = load %struct.priv*, %struct.priv** %2, align 8
  %221 = getelementptr inbounds %struct.priv, %struct.priv* %220, i32 0, i32 8
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 1
  %224 = load i32 (%struct.TYPE_16__*, i32, i32*)*, i32 (%struct.TYPE_16__*, i32, i32*)** %223, align 8
  %225 = load %struct.priv*, %struct.priv** %2, align 8
  %226 = getelementptr inbounds %struct.priv, %struct.priv* %225, i32 0, i32 8
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %228, align 8
  %230 = load i32, i32* @VDCTRL_SET_FRAMEDROP, align 4
  %231 = call i32 %224(%struct.TYPE_16__* %229, i32 %230, i32* %6)
  br label %232

232:                                              ; preds = %219, %155
  %233 = load %struct.priv*, %struct.priv** %2, align 8
  %234 = getelementptr inbounds %struct.priv, %struct.priv* %233, i32 0, i32 10
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %245

238:                                              ; preds = %232
  %239 = load %struct.priv*, %struct.priv** %2, align 8
  %240 = getelementptr inbounds %struct.priv, %struct.priv* %239, i32 0, i32 10
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %244 = call i32 @mp_recorder_feed_packet(i64 %242, %struct.demux_packet* %243)
  br label %245

245:                                              ; preds = %238, %232
  %246 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %247 = icmp ne %struct.demux_packet* %246, null
  br i1 %247, label %248, label %252

248:                                              ; preds = %245
  %249 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %250 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %249, i32 0, i32 0
  %251 = load double, double* %250, align 8
  br label %254

252:                                              ; preds = %245
  %253 = load double, double* @MP_NOPTS_VALUE, align 8
  br label %254

254:                                              ; preds = %252, %248
  %255 = phi double [ %251, %248 ], [ %253, %252 ]
  store double %255, double* %7, align 8
  %256 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %257 = icmp ne %struct.demux_packet* %256, null
  br i1 %257, label %258, label %262

258:                                              ; preds = %254
  %259 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %260 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %259, i32 0, i32 1
  %261 = load double, double* %260, align 8
  br label %264

262:                                              ; preds = %254
  %263 = load double, double* @MP_NOPTS_VALUE, align 8
  br label %264

264:                                              ; preds = %262, %258
  %265 = phi double [ %261, %258 ], [ %263, %262 ]
  store double %265, double* %8, align 8
  %266 = load double, double* %7, align 8
  %267 = load double, double* @MP_NOPTS_VALUE, align 8
  %268 = fcmp oeq double %266, %267
  br i1 %268, label %269, label %272

269:                                              ; preds = %264
  %270 = load %struct.priv*, %struct.priv** %2, align 8
  %271 = getelementptr inbounds %struct.priv, %struct.priv* %270, i32 0, i32 2
  store i32 1, i32* %271, align 8
  br label %272

272:                                              ; preds = %269, %264
  %273 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %274 = icmp ne %struct.demux_packet* %273, null
  br i1 %274, label %275, label %294

275:                                              ; preds = %272
  %276 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %277 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %276, i32 0, i32 1
  %278 = load double, double* %277, align 8
  %279 = load double, double* @MP_NOPTS_VALUE, align 8
  %280 = fcmp oeq double %278, %279
  br i1 %280, label %281, label %294

281:                                              ; preds = %275
  %282 = load %struct.priv*, %struct.priv** %2, align 8
  %283 = getelementptr inbounds %struct.priv, %struct.priv* %282, i32 0, i32 9
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %294, label %288

288:                                              ; preds = %281
  %289 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %290 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %289, i32 0, i32 0
  %291 = load double, double* %290, align 8
  %292 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %293 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %292, i32 0, i32 1
  store double %291, double* %293, align 8
  br label %294

294:                                              ; preds = %288, %281, %275, %272
  %295 = load double, double* %7, align 8
  %296 = load double, double* @MP_NOPTS_VALUE, align 8
  %297 = fcmp oeq double %295, %296
  br i1 %297, label %298, label %300

298:                                              ; preds = %294
  %299 = load double, double* %8, align 8
  br label %302

300:                                              ; preds = %294
  %301 = load double, double* %7, align 8
  br label %302

302:                                              ; preds = %300, %298
  %303 = phi double [ %299, %298 ], [ %301, %300 ]
  store double %303, double* %9, align 8
  %304 = load %struct.priv*, %struct.priv** %2, align 8
  %305 = getelementptr inbounds %struct.priv, %struct.priv* %304, i32 0, i32 3
  %306 = load double, double* %305, align 8
  %307 = load double, double* @MP_NOPTS_VALUE, align 8
  %308 = fcmp oeq double %306, %307
  br i1 %308, label %309, label %313

309:                                              ; preds = %302
  %310 = load double, double* %9, align 8
  %311 = load %struct.priv*, %struct.priv** %2, align 8
  %312 = getelementptr inbounds %struct.priv, %struct.priv* %311, i32 0, i32 3
  store double %310, double* %312, align 8
  br label %313

313:                                              ; preds = %309, %302
  %314 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %315 = icmp ne %struct.demux_packet* %314, null
  br i1 %315, label %316, label %329

316:                                              ; preds = %313
  %317 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %318 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %317, i32 0, i32 2
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %329

321:                                              ; preds = %316
  %322 = load %struct.priv*, %struct.priv** %2, align 8
  %323 = getelementptr inbounds %struct.priv, %struct.priv* %322, i32 0, i32 4
  store i32 1, i32* %323, align 8
  %324 = load double, double* @MP_NOPTS_VALUE, align 8
  %325 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %326 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %325, i32 0, i32 1
  store double %324, double* %326, align 8
  %327 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %328 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %327, i32 0, i32 0
  store double %324, double* %328, align 8
  br label %329

329:                                              ; preds = %321, %316, %313
  %330 = load %struct.priv*, %struct.priv** %2, align 8
  %331 = getelementptr inbounds %struct.priv, %struct.priv* %330, i32 0, i32 8
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 0
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.priv*, %struct.priv** %2, align 8
  %340 = getelementptr inbounds %struct.priv, %struct.priv* %339, i32 0, i32 7
  %341 = bitcast %struct.TYPE_17__* %340 to { i64, %struct.demux_packet* }*
  %342 = getelementptr inbounds { i64, %struct.demux_packet* }, { i64, %struct.demux_packet* }* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = getelementptr inbounds { i64, %struct.demux_packet* }, { i64, %struct.demux_packet* }* %341, i32 0, i32 1
  %345 = load %struct.demux_packet*, %struct.demux_packet** %344, align 8
  %346 = call i32 @mp_pin_in_write(i32 %338, i64 %343, %struct.demux_packet* %345)
  %347 = load %struct.priv*, %struct.priv** %2, align 8
  %348 = getelementptr inbounds %struct.priv, %struct.priv* %347, i32 0, i32 5
  store i32 1, i32* %348, align 4
  %349 = load %struct.priv*, %struct.priv** %2, align 8
  %350 = getelementptr inbounds %struct.priv, %struct.priv* %349, i32 0, i32 7
  %351 = bitcast %struct.TYPE_17__* %350 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %351, i8* align 8 bitcast (%struct.TYPE_17__* @MP_NO_FRAME to i8*), i64 16, i1 false)
  %352 = load %struct.priv*, %struct.priv** %2, align 8
  %353 = getelementptr inbounds %struct.priv, %struct.priv* %352, i32 0, i32 6
  %354 = load i32, i32* %353, align 8
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %353, align 8
  br label %356

356:                                              ; preds = %329, %96, %79, %64, %33, %26
  ret void
}

declare dso_local i32 @mp_pin_in_needs_data(i32) #1

declare dso_local { i64, %struct.demux_packet* } @mp_pin_out_read(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MP_ERR(%struct.priv*, i8*) #1

declare dso_local i32 @mp_frame_unref(%struct.TYPE_17__*) #1

declare dso_local i32 @mp_filter_internal_mark_failed(i32) #1

declare dso_local i64 @is_new_segment(%struct.priv*, i64, %struct.demux_packet*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_recorder_feed_packet(i64, %struct.demux_packet*) #1

declare dso_local i32 @mp_pin_in_write(i32, i64, %struct.demux_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
