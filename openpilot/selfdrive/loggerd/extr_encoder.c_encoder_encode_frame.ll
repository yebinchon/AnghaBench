; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/loggerd/extr_encoder.c_encoder_encode_frame.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/loggerd/extr_encoder.c_encoder_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i64, i32, i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64, i64, i32, i32, i32* }

@COLOR_FMT_NV12 = common dso_local global i32 0, align 4
@kFilterNone = common dso_local global i32 0, align 4
@OMX_BUFFERFLAG_ENDOFFRAME = common dso_local global i32 0, align 4
@OMX_ErrorNone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @encoder_encode_frame(%struct.TYPE_15__* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32* %6, %struct.TYPE_13__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store %struct.TYPE_13__* %7, %struct.TYPE_13__** %17, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 8
  %29 = call i32 @pthread_mutex_lock(i32* %28)
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 16
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @encoder_open(%struct.TYPE_15__* %35, i32 %38)
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  br label %42

42:                                               ; preds = %34, %8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 18
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 8
  %50 = call i32 @pthread_mutex_unlock(i32* %49)
  store i32 -1, i32* %9, align 4
  br label %261

51:                                               ; preds = %42
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 8
  %54 = call i32 @pthread_mutex_unlock(i32* %53)
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 17
  %57 = call %struct.TYPE_14__* @queue_pop(i32* %56)
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %19, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 8
  %60 = call i32 @pthread_mutex_lock(i32* %59)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %51
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %67 = call i32 @encoder_close(%struct.TYPE_15__* %66)
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 16
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @encoder_open(%struct.TYPE_15__* %68, i32 %71)
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %65, %51
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %20, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  store i32* %86, i32** %21, align 8
  %87 = load i32*, i32** %21, align 8
  store i32* %87, i32** %22, align 8
  %88 = load i32, i32* @COLOR_FMT_NV12, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @VENUS_Y_STRIDE(i32 %88, i32 %91)
  store i32 %92, i32* %23, align 4
  %93 = load i32, i32* @COLOR_FMT_NV12, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @VENUS_UV_STRIDE(i32 %93, i32 %96)
  store i32 %97, i32* %24, align 4
  %98 = load i32*, i32** %21, align 8
  %99 = load i32, i32* %23, align 4
  %100 = load i32, i32* @COLOR_FMT_NV12, align 4
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 11
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @VENUS_Y_SCANLINES(i32 %100, i32 %103)
  %105 = mul nsw i32 %99, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %98, i64 %106
  store i32* %107, i32** %25, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 15
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %160

112:                                              ; preds = %80
  %113 = load i32*, i32** %11, align 8
  %114 = load i32, i32* %14, align 4
  %115 = load i32*, i32** %12, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sdiv i32 %116, 2
  %118 = load i32*, i32** %13, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sdiv i32 %119, 2
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 14
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 13
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = sdiv i32 %134, 2
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 12
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = sdiv i32 %141, 2
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 11
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @kFilterNone, align 4
  %150 = call i32 @I420Scale(i32* %113, i32 %114, i32* %115, i32 %117, i32* %118, i32 %120, i32 %121, i32 %122, i32* %125, i32 %128, i32* %131, i32 %135, i32* %138, i32 %142, i32 %145, i32 %148, i32 %149)
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 14
  %153 = load i32*, i32** %152, align 8
  store i32* %153, i32** %11, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 13
  %156 = load i32*, i32** %155, align 8
  store i32* %156, i32** %12, align 8
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 12
  %159 = load i32*, i32** %158, align 8
  store i32* %159, i32** %13, align 8
  br label %160

160:                                              ; preds = %112, %80
  %161 = load i32*, i32** %11, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %12, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = sdiv i32 %168, 2
  %170 = load i32*, i32** %13, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = sdiv i32 %173, 2
  %175 = load i32*, i32** %22, align 8
  %176 = load i32, i32* %23, align 4
  %177 = load i32*, i32** %25, align 8
  %178 = load i32, i32* %24, align 4
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 11
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @I420ToNV12(i32* %161, i32 %164, i32* %165, i32 %169, i32* %170, i32 %174, i32* %175, i32 %176, i32* %177, i32 %178, i32 %181, i32 %184)
  store i32 %185, i32* %18, align 4
  %186 = load i32, i32* %18, align 4
  %187 = icmp eq i32 %186, 0
  %188 = zext i1 %187 to i32
  %189 = call i32 @assert(i32 %188)
  %190 = load i32, i32* @COLOR_FMT_NV12, align 4
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 11
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @VENUS_BUFFER_SIZE(i32 %190, i32 %193, i32 %196)
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 3
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* @OMX_BUFFERFLAG_ENDOFFRAME, align 4
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 1
  store i64 0, i64* %204, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = sdiv i64 %207, 1000
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  store i64 %208, i64* %210, align 8
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 10
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %215 = call i32 @OMX_EmptyThisBuffer(i32 %213, %struct.TYPE_14__* %214)
  store i32 %215, i32* %18, align 4
  %216 = load i32, i32* %18, align 4
  %217 = load i32, i32* @OMX_ErrorNone, align 4
  %218 = icmp eq i32 %216, %217
  %219 = zext i1 %218 to i32
  %220 = call i32 @assert(i32 %219)
  br label %221

221:                                              ; preds = %160, %228
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 9
  %224 = call %struct.TYPE_14__* @queue_try_pop(i32* %223)
  store %struct.TYPE_14__* %224, %struct.TYPE_14__** %26, align 8
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %226 = icmp ne %struct.TYPE_14__* %225, null
  br i1 %226, label %228, label %227

227:                                              ; preds = %221
  br label %232

228:                                              ; preds = %221
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %231 = call i32 @handle_out_buf(%struct.TYPE_15__* %229, %struct.TYPE_14__* %230)
  br label %221

232:                                              ; preds = %227
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 6
  store i32 1, i32* %234, align 8
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %236, align 8
  %239 = load i32*, i32** %16, align 8
  %240 = icmp ne i32* %239, null
  br i1 %240, label %241, label %246

241:                                              ; preds = %232
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = load i32*, i32** %16, align 8
  store i32 %244, i32* %245, align 4
  br label %246

246:                                              ; preds = %241, %232
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 7
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %246
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %253 = call i32 @encoder_close(%struct.TYPE_15__* %252)
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 7
  store i32 0, i32* %255, align 4
  br label %256

256:                                              ; preds = %251, %246
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 8
  %259 = call i32 @pthread_mutex_unlock(i32* %258)
  %260 = load i32, i32* %20, align 4
  store i32 %260, i32* %9, align 4
  br label %261

261:                                              ; preds = %256, %47
  %262 = load i32, i32* %9, align 4
  ret i32 %262
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @encoder_open(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_14__* @queue_pop(i32*) #1

declare dso_local i32 @encoder_close(%struct.TYPE_15__*) #1

declare dso_local i32 @VENUS_Y_STRIDE(i32, i32) #1

declare dso_local i32 @VENUS_UV_STRIDE(i32, i32) #1

declare dso_local i32 @VENUS_Y_SCANLINES(i32, i32) #1

declare dso_local i32 @I420Scale(i32*, i32, i32*, i32, i32*, i32, i32, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @I420ToNV12(i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VENUS_BUFFER_SIZE(i32, i32, i32) #1

declare dso_local i32 @OMX_EmptyThisBuffer(i32, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @queue_try_pop(i32*) #1

declare dso_local i32 @handle_out_buf(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
