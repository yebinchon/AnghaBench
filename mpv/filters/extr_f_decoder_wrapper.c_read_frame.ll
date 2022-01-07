; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_read_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_decoder_wrapper.c_read_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_frame = type { i64, i32 }
%struct.priv = type { i32, i32, i32, i32, i64, %struct.TYPE_10__*, i32, i64, i32, i32, %struct.TYPE_11__, %struct.demux_packet*, i64, %struct.mp_frame, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.mp_frame* }
%struct.TYPE_10__ = type { %struct.mp_pin** }
%struct.mp_pin = type { i32 }
%struct.TYPE_11__ = type { i32, i64, i8* }
%struct.demux_packet = type { i64, i32, i32, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }

@MP_EOF_FRAME = common dso_local global %struct.mp_frame zeroinitializer, align 8
@MP_FRAME_VIDEO = common dso_local global i64 0, align 8
@MP_FRAME_EOF = common dso_local global i64 0, align 8
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@MP_NO_FRAME = common dso_local global %struct.mp_frame zeroinitializer, align 8
@MP_FRAME_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.priv*)* @read_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_frame(%struct.priv* %0) #0 {
  %2 = alloca %struct.priv*, align 8
  %3 = alloca %struct.mp_pin*, align 8
  %4 = alloca %struct.mp_frame, align 8
  %5 = alloca %struct.mp_frame, align 8
  %6 = alloca %struct.mp_frame, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.demux_packet*, align 8
  store %struct.priv* %0, %struct.priv** %2, align 8
  %11 = load %struct.priv*, %struct.priv** %2, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 5
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.mp_pin**, %struct.mp_pin*** %14, align 8
  %16 = getelementptr inbounds %struct.mp_pin*, %struct.mp_pin** %15, i64 0
  %17 = load %struct.mp_pin*, %struct.mp_pin** %16, align 8
  store %struct.mp_pin* %17, %struct.mp_pin** %3, align 8
  %18 = bitcast %struct.mp_frame* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  %19 = load %struct.priv*, %struct.priv** %2, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 15
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %25 = call i32 @mp_pin_in_needs_data(%struct.mp_pin* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %1
  br label %330

28:                                               ; preds = %23
  %29 = load %struct.priv*, %struct.priv** %2, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 13
  %31 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %76

34:                                               ; preds = %28
  %35 = load %struct.priv*, %struct.priv** %2, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  %40 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %41 = load %struct.priv*, %struct.priv** %2, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 13
  %43 = bitcast %struct.mp_frame* %42 to { i64, i32 }*
  %44 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %43, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call { i64, i32 } @mp_frame_ref(i64 %45, i32 %47)
  %49 = bitcast %struct.mp_frame* %5 to { i64, i32 }*
  %50 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %49, i32 0, i32 0
  %51 = extractvalue { i64, i32 } %48, 0
  store i64 %51, i64* %50, align 8
  %52 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %49, i32 0, i32 1
  %53 = extractvalue { i64, i32 } %48, 1
  store i32 %53, i32* %52, align 8
  %54 = bitcast %struct.mp_frame* %5 to { i64, i32 }*
  %55 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %54, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @mp_pin_in_write(%struct.mp_pin* %40, i64 %56, i32 %58)
  %60 = load %struct.priv*, %struct.priv** %2, align 8
  %61 = getelementptr inbounds %struct.priv, %struct.priv* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  br label %75

62:                                               ; preds = %34
  %63 = load %struct.priv*, %struct.priv** %2, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %69 = load i64, i64* getelementptr inbounds ({ i64, i32 }, { i64, i32 }* bitcast (%struct.mp_frame* @MP_EOF_FRAME to { i64, i32 }*), i32 0, i32 0), align 8
  %70 = load i32, i32* getelementptr inbounds ({ i64, i32 }, { i64, i32 }* bitcast (%struct.mp_frame* @MP_EOF_FRAME to { i64, i32 }*), i32 0, i32 1), align 8
  %71 = call i32 @mp_pin_in_write(%struct.mp_pin* %68, i64 %69, i32 %70)
  %72 = load %struct.priv*, %struct.priv** %2, align 8
  %73 = getelementptr inbounds %struct.priv, %struct.priv* %72, i32 0, i32 0
  store i32 2, i32* %73, align 8
  br label %74

74:                                               ; preds = %67, %62
  br label %75

75:                                               ; preds = %74, %39
  br label %330

76:                                               ; preds = %28
  %77 = load %struct.priv*, %struct.priv** %2, align 8
  %78 = getelementptr inbounds %struct.priv, %struct.priv* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %76
  %82 = load %struct.priv*, %struct.priv** %2, align 8
  %83 = getelementptr inbounds %struct.priv, %struct.priv* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %81
  %87 = load %struct.priv*, %struct.priv** %2, align 8
  %88 = getelementptr inbounds %struct.priv, %struct.priv* %87, i32 0, i32 16
  %89 = load %struct.mp_frame*, %struct.mp_frame** %88, align 8
  %90 = load %struct.priv*, %struct.priv** %2, align 8
  %91 = getelementptr inbounds %struct.priv, %struct.priv* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %89, i64 %94
  %96 = bitcast %struct.mp_frame* %4 to i8*
  %97 = bitcast %struct.mp_frame* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %97, i64 16, i1 false)
  %98 = load %struct.priv*, %struct.priv** %2, align 8
  %99 = getelementptr inbounds %struct.priv, %struct.priv* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  br label %315

102:                                              ; preds = %81, %76
  %103 = load %struct.priv*, %struct.priv** %2, align 8
  %104 = getelementptr inbounds %struct.priv, %struct.priv* %103, i32 0, i32 1
  store i32 0, i32* %104, align 4
  %105 = load %struct.priv*, %struct.priv** %2, align 8
  %106 = getelementptr inbounds %struct.priv, %struct.priv* %105, i32 0, i32 15
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = call { i64, i32 } @mp_pin_out_read(i32 %113)
  %115 = bitcast %struct.mp_frame* %6 to { i64, i32 }*
  %116 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %115, i32 0, i32 0
  %117 = extractvalue { i64, i32 } %114, 0
  store i64 %117, i64* %116, align 8
  %118 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %115, i32 0, i32 1
  %119 = extractvalue { i64, i32 } %114, 1
  store i32 %119, i32* %118, align 8
  %120 = bitcast %struct.mp_frame* %4 to i8*
  %121 = bitcast %struct.mp_frame* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 8 %121, i64 16, i1 false)
  %122 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %102
  br label %330

126:                                              ; preds = %102
  %127 = load %struct.priv*, %struct.priv** %2, align 8
  %128 = getelementptr inbounds %struct.priv, %struct.priv* %127, i32 0, i32 14
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %147

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @MP_FRAME_VIDEO, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %133
  %139 = load %struct.priv*, %struct.priv** %2, align 8
  %140 = getelementptr inbounds %struct.priv, %struct.priv* %139, i32 0, i32 13
  %141 = bitcast %struct.mp_frame* %140 to i8*
  %142 = bitcast %struct.mp_frame* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %141, i8* align 8 %142, i64 16, i1 false)
  %143 = load %struct.priv*, %struct.priv** %2, align 8
  %144 = getelementptr inbounds %struct.priv, %struct.priv* %143, i32 0, i32 5
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = call i32 @mp_filter_internal_mark_progress(%struct.TYPE_10__* %145)
  br label %330

147:                                              ; preds = %133, %126
  %148 = load %struct.priv*, %struct.priv** %2, align 8
  %149 = getelementptr inbounds %struct.priv, %struct.priv* %148, i32 0, i32 10
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %179

153:                                              ; preds = %147
  %154 = load %struct.priv*, %struct.priv** %2, align 8
  %155 = getelementptr inbounds %struct.priv, %struct.priv* %154, i32 0, i32 12
  %156 = load i64, i64* %155, align 8
  %157 = sub nsw i64 %156, 1
  %158 = call i8* @MPMAX(i32 0, i64 %157)
  %159 = ptrtoint i8* %158 to i32
  store i32 %159, i32* %7, align 4
  %160 = load %struct.priv*, %struct.priv** %2, align 8
  %161 = getelementptr inbounds %struct.priv, %struct.priv* %160, i32 0, i32 10
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 2
  %163 = load i8*, i8** %162, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = sub i64 0, %165
  %167 = getelementptr i8, i8* %163, i64 %166
  %168 = ptrtoint i8* %167 to i64
  %169 = call i8* @MPMAX(i32 0, i64 %168)
  %170 = load %struct.priv*, %struct.priv** %2, align 8
  %171 = getelementptr inbounds %struct.priv, %struct.priv* %170, i32 0, i32 10
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 2
  store i8* %169, i8** %172, align 8
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.priv*, %struct.priv** %2, align 8
  %175 = getelementptr inbounds %struct.priv, %struct.priv* %174, i32 0, i32 10
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, %173
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %153, %147
  %180 = load %struct.priv*, %struct.priv** %2, align 8
  %181 = getelementptr inbounds %struct.priv, %struct.priv* %180, i32 0, i32 12
  store i64 0, i64* %181, align 8
  %182 = load %struct.priv*, %struct.priv** %2, align 8
  %183 = getelementptr inbounds %struct.priv, %struct.priv* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %210

186:                                              ; preds = %179
  %187 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @MP_FRAME_EOF, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %210

191:                                              ; preds = %186
  %192 = bitcast %struct.mp_frame* %4 to { i64, i32 }*
  %193 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %192, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = call double @mp_frame_get_pts(i64 %194, i32 %196)
  store double %197, double* %8, align 8
  %198 = load double, double* %8, align 8
  %199 = load double, double* @MP_NOPTS_VALUE, align 8
  %200 = fcmp oeq double %198, %199
  br i1 %200, label %201, label %207

201:                                              ; preds = %191
  %202 = call i32 @mp_frame_unref(%struct.mp_frame* %4)
  %203 = load %struct.priv*, %struct.priv** %2, align 8
  %204 = getelementptr inbounds %struct.priv, %struct.priv* %203, i32 0, i32 5
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  %206 = call i32 @mp_filter_internal_mark_progress(%struct.TYPE_10__* %205)
  br label %330

207:                                              ; preds = %191
  %208 = load %struct.priv*, %struct.priv** %2, align 8
  %209 = getelementptr inbounds %struct.priv, %struct.priv* %208, i32 0, i32 3
  store i32 0, i32* %209, align 4
  br label %210

210:                                              ; preds = %207, %186, %179
  %211 = load %struct.priv*, %struct.priv** %2, align 8
  %212 = call i32 @process_decoded_frame(%struct.priv* %211, %struct.mp_frame* %4)
  store i32 %212, i32* %9, align 4
  %213 = load %struct.priv*, %struct.priv** %2, align 8
  %214 = getelementptr inbounds %struct.priv, %struct.priv* %213, i32 0, i32 10
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp slt i64 %216, 0
  br i1 %217, label %218, label %231

218:                                              ; preds = %210
  %219 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %218
  %223 = load %struct.priv*, %struct.priv** %2, align 8
  %224 = bitcast %struct.mp_frame* %4 to { i64, i32 }*
  %225 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %224, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @enqueue_backward_frame(%struct.priv* %223, i64 %226, i32 %228)
  %230 = bitcast %struct.mp_frame* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %230, i8* align 8 bitcast (%struct.mp_frame* @MP_NO_FRAME to i8*), i64 16, i1 false)
  br label %231

231:                                              ; preds = %222, %218, %210
  %232 = load i32, i32* %9, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %305

234:                                              ; preds = %231
  %235 = load %struct.priv*, %struct.priv** %2, align 8
  %236 = getelementptr inbounds %struct.priv, %struct.priv* %235, i32 0, i32 11
  %237 = load %struct.demux_packet*, %struct.demux_packet** %236, align 8
  %238 = icmp ne %struct.demux_packet* %237, null
  br i1 %238, label %239, label %305

239:                                              ; preds = %234
  %240 = load %struct.priv*, %struct.priv** %2, align 8
  %241 = getelementptr inbounds %struct.priv, %struct.priv* %240, i32 0, i32 11
  %242 = load %struct.demux_packet*, %struct.demux_packet** %241, align 8
  store %struct.demux_packet* %242, %struct.demux_packet** %10, align 8
  %243 = load %struct.priv*, %struct.priv** %2, align 8
  %244 = getelementptr inbounds %struct.priv, %struct.priv* %243, i32 0, i32 11
  store %struct.demux_packet* null, %struct.demux_packet** %244, align 8
  %245 = load %struct.priv*, %struct.priv** %2, align 8
  %246 = call i32 @reset_decoder(%struct.priv* %245)
  %247 = load %struct.demux_packet*, %struct.demux_packet** %10, align 8
  %248 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %286

251:                                              ; preds = %239
  %252 = load %struct.priv*, %struct.priv** %2, align 8
  %253 = getelementptr inbounds %struct.priv, %struct.priv* %252, i32 0, i32 4
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.demux_packet*, %struct.demux_packet** %10, align 8
  %256 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %254, %257
  br i1 %258, label %259, label %275

259:                                              ; preds = %251
  %260 = load %struct.demux_packet*, %struct.demux_packet** %10, align 8
  %261 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.priv*, %struct.priv** %2, align 8
  %264 = getelementptr inbounds %struct.priv, %struct.priv* %263, i32 0, i32 4
  store i64 %262, i64* %264, align 8
  %265 = load %struct.priv*, %struct.priv** %2, align 8
  %266 = getelementptr inbounds %struct.priv, %struct.priv* %265, i32 0, i32 10
  %267 = call i32 @mp_decoder_wrapper_reinit(%struct.TYPE_11__* %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %274, label %269

269:                                              ; preds = %259
  %270 = load %struct.priv*, %struct.priv** %2, align 8
  %271 = getelementptr inbounds %struct.priv, %struct.priv* %270, i32 0, i32 5
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %271, align 8
  %273 = call i32 @mp_filter_internal_mark_failed(%struct.TYPE_10__* %272)
  br label %274

274:                                              ; preds = %269, %259
  br label %275

275:                                              ; preds = %274, %251
  %276 = load %struct.demux_packet*, %struct.demux_packet** %10, align 8
  %277 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.priv*, %struct.priv** %2, align 8
  %280 = getelementptr inbounds %struct.priv, %struct.priv* %279, i32 0, i32 9
  store i32 %278, i32* %280, align 4
  %281 = load %struct.demux_packet*, %struct.demux_packet** %10, align 8
  %282 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.priv*, %struct.priv** %2, align 8
  %285 = getelementptr inbounds %struct.priv, %struct.priv* %284, i32 0, i32 8
  store i32 %283, i32* %285, align 8
  br label %286

286:                                              ; preds = %275, %239
  %287 = load %struct.priv*, %struct.priv** %2, align 8
  %288 = getelementptr inbounds %struct.priv, %struct.priv* %287, i32 0, i32 7
  store i64 0, i64* %288, align 8
  %289 = load %struct.priv*, %struct.priv** %2, align 8
  %290 = getelementptr inbounds %struct.priv, %struct.priv* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = icmp sgt i32 %291, 0
  %293 = zext i1 %292 to i32
  %294 = load %struct.priv*, %struct.priv** %2, align 8
  %295 = getelementptr inbounds %struct.priv, %struct.priv* %294, i32 0, i32 1
  store i32 %293, i32* %295, align 4
  %296 = load i32, i32* @MP_FRAME_PACKET, align 4
  %297 = load %struct.demux_packet*, %struct.demux_packet** %10, align 8
  %298 = call i32 @MAKE_FRAME(i32 %296, %struct.demux_packet* %297)
  %299 = load %struct.priv*, %struct.priv** %2, align 8
  %300 = getelementptr inbounds %struct.priv, %struct.priv* %299, i32 0, i32 6
  store i32 %298, i32* %300, align 8
  %301 = load %struct.priv*, %struct.priv** %2, align 8
  %302 = getelementptr inbounds %struct.priv, %struct.priv* %301, i32 0, i32 5
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %302, align 8
  %304 = call i32 @mp_filter_internal_mark_progress(%struct.TYPE_10__* %303)
  br label %305

305:                                              ; preds = %286, %234, %231
  %306 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %314, label %309

309:                                              ; preds = %305
  %310 = load %struct.priv*, %struct.priv** %2, align 8
  %311 = getelementptr inbounds %struct.priv, %struct.priv* %310, i32 0, i32 5
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %311, align 8
  %313 = call i32 @mp_filter_internal_mark_progress(%struct.TYPE_10__* %312)
  br label %330

314:                                              ; preds = %305
  br label %315

315:                                              ; preds = %314, %86
  %316 = load %struct.priv*, %struct.priv** %2, align 8
  %317 = bitcast %struct.mp_frame* %4 to { i64, i32 }*
  %318 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %317, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = call i32 @process_output_frame(%struct.priv* %316, i64 %319, i32 %321)
  %323 = load %struct.mp_pin*, %struct.mp_pin** %3, align 8
  %324 = bitcast %struct.mp_frame* %4 to { i64, i32 }*
  %325 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %324, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @mp_pin_in_write(%struct.mp_pin* %323, i64 %326, i32 %328)
  br label %330

330:                                              ; preds = %315, %309, %201, %138, %125, %75, %27
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mp_pin_in_needs_data(%struct.mp_pin*) #2

declare dso_local i32 @mp_pin_in_write(%struct.mp_pin*, i64, i32) #2

declare dso_local { i64, i32 } @mp_frame_ref(i64, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local { i64, i32 } @mp_pin_out_read(i32) #2

declare dso_local i32 @mp_filter_internal_mark_progress(%struct.TYPE_10__*) #2

declare dso_local i8* @MPMAX(i32, i64) #2

declare dso_local double @mp_frame_get_pts(i64, i32) #2

declare dso_local i32 @mp_frame_unref(%struct.mp_frame*) #2

declare dso_local i32 @process_decoded_frame(%struct.priv*, %struct.mp_frame*) #2

declare dso_local i32 @enqueue_backward_frame(%struct.priv*, i64, i32) #2

declare dso_local i32 @reset_decoder(%struct.priv*) #2

declare dso_local i32 @mp_decoder_wrapper_reinit(%struct.TYPE_11__*) #2

declare dso_local i32 @mp_filter_internal_mark_failed(%struct.TYPE_10__*) #2

declare dso_local i32 @MAKE_FRAME(i32, %struct.demux_packet*) #2

declare dso_local i32 @process_output_frame(%struct.priv*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
