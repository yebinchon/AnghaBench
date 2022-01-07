; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_shm_mq.c_shm_mq_sendv.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_shm_mq.c_shm_mq_sendv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i64, i8* }

@MyProc = common dso_local global i64 0, align 8
@SHM_MQ_DETACHED = common dso_local global i64 0, align 8
@SHM_MQ_SUCCESS = common dso_local global i64 0, align 8
@MAXIMUM_ALIGNOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @shm_mq_sendv(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %11, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %16, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MyProc, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  store i32 0, i32* %15, align 4
  br label %33

33:                                               ; preds = %46, %4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %13, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %13, align 8
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %15, align 4
  br label %33

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %127, %49
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %56, label %131

56:                                               ; preds = %50
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp ult i64 %60, 8
  %62 = zext i1 %61 to i32
  %63 = call i32 @Assert(i32 %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = sub i64 8, %68
  %70 = bitcast i64* %13 to i8*
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %70, i64 %74
  %76 = load i32, i32* %9, align 4
  %77 = call i64 @shm_mq_send_bytes(%struct.TYPE_9__* %64, i64 %69, i8* %75, i32 %76, i64* %14)
  store i64 %77, i64* %10, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* @SHM_MQ_DETACHED, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %56
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store i32 0, i32* %83, align 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  %86 = load i64, i64* %10, align 8
  store i64 %86, i64* %5, align 8
  br label %375

87:                                               ; preds = %56
  %88 = load i64, i64* %14, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %88
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp uge i64 %98, 8
  br i1 %99, label %100, label %112

100:                                              ; preds = %87
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = icmp eq i64 %104, 8
  %106 = zext i1 %105 to i32
  %107 = call i32 @Assert(i32 %106)
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  store i32 0, i32* %109, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  br label %112

112:                                              ; preds = %100, %87
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* @SHM_MQ_SUCCESS, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i64, i64* %10, align 8
  store i64 %117, i64* %5, align 8
  br label %375

118:                                              ; preds = %112
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* @MAXIMUM_ALIGNOF, align 4
  %125 = sext i32 %124 to i64
  %126 = icmp ugt i64 8, %125
  br label %127

127:                                              ; preds = %123, %118
  %128 = phi i1 [ true, %118 ], [ %126, %123 ]
  %129 = zext i1 %128 to i32
  %130 = call i32 @Assert(i32 %129)
  br label %50

131:                                              ; preds = %50
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* %13, align 8
  %137 = icmp sle i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @Assert(i32 %138)
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  store i64 %143, i64* %17, align 8
  br label %144

144:                                              ; preds = %326, %131
  %145 = load i64, i64* %17, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %147 = load i32, i32* %16, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp sge i64 %145, %151
  br i1 %152, label %153, label %169

153:                                              ; preds = %144
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %155 = load i32, i32* %16, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %17, align 8
  %161 = sub nsw i64 %160, %159
  store i64 %161, i64* %17, align 8
  %162 = load i32, i32* %16, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %16, align 4
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp sge i32 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %153
  br label %333

168:                                              ; preds = %153
  br label %326

169:                                              ; preds = %144
  %170 = load i32, i32* %16, align 4
  %171 = add nsw i32 %170, 1
  %172 = load i32, i32* %8, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %271

174:                                              ; preds = %169
  %175 = load i64, i64* %17, align 8
  %176 = load i32, i32* @MAXIMUM_ALIGNOF, align 4
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %175, %177
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %180 = load i32, i32* %16, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp sgt i64 %178, %184
  br i1 %185, label %186, label %271

186:                                              ; preds = %174
  %187 = load i32, i32* @MAXIMUM_ALIGNOF, align 4
  %188 = zext i32 %187 to i64
  %189 = call i8* @llvm.stacksave()
  store i8* %189, i8** %19, align 8
  %190 = alloca i8, i64 %188, align 16
  store i64 %188, i64* %20, align 8
  store i32 0, i32* %21, align 4
  br label %191

191:                                              ; preds = %238, %186
  %192 = load i64, i64* %17, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %194 = load i32, i32* %16, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp slt i64 %192, %198
  br i1 %199, label %200, label %222

200:                                              ; preds = %191
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %202 = load i32, i32* %16, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 1
  %206 = load i8*, i8** %205, align 8
  %207 = load i64, i64* %17, align 8
  %208 = getelementptr inbounds i8, i8* %206, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = load i32, i32* %21, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %190, i64 %211
  store i8 %209, i8* %212, align 1
  %213 = load i32, i32* %21, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %21, align 4
  %215 = load i64, i64* %17, align 8
  %216 = add nsw i64 %215, 1
  store i64 %216, i64* %17, align 8
  %217 = load i32, i32* %21, align 4
  %218 = load i32, i32* @MAXIMUM_ALIGNOF, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %200
  br label %239

221:                                              ; preds = %200
  br label %238

222:                                              ; preds = %191
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %224 = load i32, i32* %16, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* %17, align 8
  %230 = sub nsw i64 %229, %228
  store i64 %230, i64* %17, align 8
  %231 = load i32, i32* %16, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %16, align 4
  %233 = load i32, i32* %16, align 4
  %234 = load i32, i32* %8, align 4
  %235 = icmp sge i32 %233, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %222
  br label %239

237:                                              ; preds = %222
  br label %238

238:                                              ; preds = %237, %221
  br label %191

239:                                              ; preds = %236, %220
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %241 = load i32, i32* %21, align 4
  %242 = sext i32 %241 to i64
  %243 = load i32, i32* %9, align 4
  %244 = call i64 @shm_mq_send_bytes(%struct.TYPE_9__* %240, i64 %242, i8* %190, i32 %243, i64* %14)
  store i64 %244, i64* %10, align 8
  %245 = load i64, i64* %10, align 8
  %246 = load i64, i64* @SHM_MQ_DETACHED, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %254

248:                                              ; preds = %239
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 1
  store i32 0, i32* %250, align 4
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 0
  store i32 0, i32* %252, align 8
  %253 = load i64, i64* %10, align 8
  store i64 %253, i64* %5, align 8
  store i32 1, i32* %22, align 4
  br label %268

254:                                              ; preds = %239
  %255 = load i64, i64* %14, align 8
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %259, %255
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %257, align 4
  %262 = load i64, i64* %10, align 8
  %263 = load i64, i64* @SHM_MQ_SUCCESS, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %254
  %266 = load i64, i64* %10, align 8
  store i64 %266, i64* %5, align 8
  store i32 1, i32* %22, align 4
  br label %268

267:                                              ; preds = %254
  store i32 8, i32* %22, align 4
  br label %268

268:                                              ; preds = %267, %265, %248
  %269 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %269)
  %270 = load i32, i32* %22, align 4
  switch i32 %270, label %377 [
    i32 1, label %375
    i32 8, label %326
  ]

271:                                              ; preds = %174, %169
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %273 = load i32, i32* %16, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* %17, align 8
  %279 = sub nsw i64 %277, %278
  store i64 %279, i64* %18, align 8
  %280 = load i32, i32* %16, align 4
  %281 = add nsw i32 %280, 1
  %282 = load i32, i32* %8, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %287

284:                                              ; preds = %271
  %285 = load i64, i64* %18, align 8
  %286 = call i64 @MAXALIGN_DOWN(i64 %285)
  store i64 %286, i64* %18, align 8
  br label %287

287:                                              ; preds = %284, %271
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %289 = load i64, i64* %18, align 8
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %291 = load i32, i32* %16, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 1
  %295 = load i8*, i8** %294, align 8
  %296 = load i64, i64* %17, align 8
  %297 = getelementptr inbounds i8, i8* %295, i64 %296
  %298 = load i32, i32* %9, align 4
  %299 = call i64 @shm_mq_send_bytes(%struct.TYPE_9__* %288, i64 %289, i8* %297, i32 %298, i64* %14)
  store i64 %299, i64* %10, align 8
  %300 = load i64, i64* %10, align 8
  %301 = load i64, i64* @SHM_MQ_DETACHED, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %303, label %309

303:                                              ; preds = %287
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 0
  store i32 0, i32* %305, align 8
  %306 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %306, i32 0, i32 1
  store i32 0, i32* %307, align 4
  %308 = load i64, i64* %10, align 8
  store i64 %308, i64* %5, align 8
  br label %375

309:                                              ; preds = %287
  %310 = load i64, i64* %14, align 8
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = sext i32 %313 to i64
  %315 = add nsw i64 %314, %310
  %316 = trunc i64 %315 to i32
  store i32 %316, i32* %312, align 4
  %317 = load i64, i64* %14, align 8
  %318 = load i64, i64* %17, align 8
  %319 = add nsw i64 %318, %317
  store i64 %319, i64* %17, align 8
  %320 = load i64, i64* %10, align 8
  %321 = load i64, i64* @SHM_MQ_SUCCESS, align 8
  %322 = icmp ne i64 %320, %321
  br i1 %322, label %323, label %325

323:                                              ; preds = %309
  %324 = load i64, i64* %10, align 8
  store i64 %324, i64* %5, align 8
  br label %375

325:                                              ; preds = %309
  br label %326

326:                                              ; preds = %325, %268, %168
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = sext i32 %329 to i64
  %331 = load i64, i64* %13, align 8
  %332 = icmp slt i64 %330, %331
  br i1 %332, label %144, label %333

333:                                              ; preds = %326, %167
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 1
  store i32 0, i32* %335, align 4
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 0
  store i32 0, i32* %337, align 8
  %338 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %339 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %338, i32 0, i32 3
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %333
  %343 = load i64, i64* @SHM_MQ_DETACHED, align 8
  store i64 %343, i64* %5, align 8
  br label %375

344:                                              ; preds = %333
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %353

349:                                              ; preds = %344
  %350 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 2
  %352 = load %struct.TYPE_11__*, %struct.TYPE_11__** %351, align 8
  store %struct.TYPE_11__* %352, %struct.TYPE_11__** %12, align 8
  br label %370

353:                                              ; preds = %344
  %354 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %355 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %354, i32 0, i32 1
  %356 = call i32 @SpinLockAcquire(i32* %355)
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 2
  %359 = load %struct.TYPE_11__*, %struct.TYPE_11__** %358, align 8
  store %struct.TYPE_11__* %359, %struct.TYPE_11__** %12, align 8
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i32 0, i32 1
  %362 = call i32 @SpinLockRelease(i32* %361)
  %363 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %364 = icmp eq %struct.TYPE_11__* %363, null
  br i1 %364, label %365, label %367

365:                                              ; preds = %353
  %366 = load i64, i64* @SHM_MQ_SUCCESS, align 8
  store i64 %366, i64* %5, align 8
  br label %375

367:                                              ; preds = %353
  %368 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %368, i32 0, i32 2
  store i32 1, i32* %369, align 8
  br label %370

370:                                              ; preds = %367, %349
  %371 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %372 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %371, i32 0, i32 0
  %373 = call i32 @SetLatch(i32* %372)
  %374 = load i64, i64* @SHM_MQ_SUCCESS, align 8
  store i64 %374, i64* %5, align 8
  br label %375

375:                                              ; preds = %370, %365, %342, %323, %303, %268, %116, %81
  %376 = load i64, i64* %5, align 8
  ret i64 %376

377:                                              ; preds = %268
  unreachable
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @shm_mq_send_bytes(%struct.TYPE_9__*, i64, i8*, i32, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @MAXALIGN_DOWN(i64) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @SetLatch(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
