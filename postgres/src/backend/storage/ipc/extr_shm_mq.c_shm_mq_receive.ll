; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_shm_mq.c_shm_mq_receive.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_shm_mq.c_shm_mq_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }

@MyProc = common dso_local global i64 0, align 8
@SHM_MQ_DETACHED = common dso_local global i64 0, align 8
@SHM_MQ_WOULD_BLOCK = common dso_local global i64 0, align 8
@SHM_MQ_SUCCESS = common dso_local global i64 0, align 8
@MAXIMUM_ALIGNOF = common dso_local global i32 0, align 4
@MQH_INITIAL_BUFSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @shm_mq_receive(%struct.TYPE_9__* %0, i32* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 9
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %10, align 8
  store i32 0, i32* %12, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MyProc, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %75, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @shm_mq_counterparty_gone(%struct.TYPE_10__* %38, i32 %41)
  store i32 %42, i32* %15, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %44 = call i32* @shm_mq_get_sender(%struct.TYPE_10__* %43)
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i64, i64* @SHM_MQ_DETACHED, align 8
  store i64 %50, i64* %5, align 8
  br label %436

51:                                               ; preds = %46
  %52 = load i64, i64* @SHM_MQ_WOULD_BLOCK, align 8
  store i64 %52, i64* %5, align 8
  br label %436

53:                                               ; preds = %37
  br label %72

54:                                               ; preds = %34
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @shm_mq_wait_internal(%struct.TYPE_10__* %55, i32* %57, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %54
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %65 = call i32* @shm_mq_get_sender(%struct.TYPE_10__* %64)
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  store i32 1, i32* %69, align 8
  %70 = load i64, i64* @SHM_MQ_DETACHED, align 8
  store i64 %70, i64* %5, align 8
  br label %436

71:                                               ; preds = %63, %54
  br label %72

72:                                               ; preds = %71, %53
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  br label %75

75:                                               ; preds = %72, %4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = sdiv i32 %81, 4
  %83 = icmp sgt i32 %78, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %75
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @shm_mq_inc_bytes_read(%struct.TYPE_10__* %85, i32 %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  store i32 0, i32* %91, align 4
  br label %92

92:                                               ; preds = %84, %75
  br label %93

93:                                               ; preds = %265, %92
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  br i1 %98, label %99, label %266

99:                                               ; preds = %93
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp ult i64 %103, 4
  %105 = zext i1 %104 to i32
  %106 = call i32 @Assert(i32 %105)
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = sub i64 4, %111
  %113 = trunc i64 %112 to i32
  %114 = load i32, i32* %9, align 4
  %115 = call i64 @shm_mq_receive_bytes(%struct.TYPE_9__* %107, i32 %113, i32 %114, i32* %12, i8** %14)
  store i64 %115, i64* %11, align 8
  %116 = load i64, i64* %11, align 8
  %117 = load i64, i64* @SHM_MQ_SUCCESS, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %99
  %120 = load i64, i64* %11, align 8
  store i64 %120, i64* %5, align 8
  br label %436

121:                                              ; preds = %99
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %169

126:                                              ; preds = %121
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = icmp uge i64 %128, 4
  br i1 %129, label %130, label %169

130:                                              ; preds = %126
  %131 = load i8*, i8** %14, align 8
  %132 = bitcast i8* %131 to i32*
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %13, align 4
  %134 = call i32 @MAXALIGN(i32 4)
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @MAXALIGN(i32 %135)
  %137 = add nsw i32 %134, %136
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %16, align 4
  %140 = icmp sge i32 %138, %139
  br i1 %140, label %141, label %155

141:                                              ; preds = %130
  %142 = load i32, i32* %16, align 4
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = load i32, i32* %13, align 4
  %148 = load i32*, i32** %7, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i8*, i8** %14, align 8
  %150 = call i32 @MAXALIGN(i32 4)
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i8**, i8*** %8, align 8
  store i8* %152, i8** %153, align 8
  %154 = load i64, i64* @SHM_MQ_SUCCESS, align 8
  store i64 %154, i64* %5, align 8
  br label %436

155:                                              ; preds = %130
  %156 = load i32, i32* %13, align 4
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 4
  store i32 %156, i32* %158, align 8
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 2
  store i32 1, i32* %160, align 8
  %161 = call i32 @MAXALIGN(i32 4)
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, %161
  store i32 %165, i32* %163, align 4
  %166 = call i32 @MAXALIGN(i32 4)
  %167 = load i32, i32* %12, align 4
  %168 = sub nsw i32 %167, %166
  store i32 %168, i32* %12, align 4
  br label %265

169:                                              ; preds = %126, %121
  %170 = load i32, i32* @MAXIMUM_ALIGNOF, align 4
  %171 = sext i32 %170 to i64
  %172 = icmp ugt i64 4, %171
  %173 = zext i1 %172 to i32
  %174 = call i32 @Assert(i32 %173)
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 6
  %177 = load i32*, i32** %176, align 8
  %178 = icmp eq i32* %177, null
  br i1 %178, label %179, label %191

179:                                              ; preds = %169
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @MQH_INITIAL_BUFSIZE, align 4
  %184 = call i8* @MemoryContextAlloc(i32 %182, i32 %183)
  %185 = bitcast i8* %184 to i32*
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 6
  store i32* %185, i32** %187, align 8
  %188 = load i32, i32* @MQH_INITIAL_BUFSIZE, align 4
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 5
  store i32 %188, i32* %190, align 4
  br label %191

191:                                              ; preds = %179, %169
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = icmp uge i64 %195, 4
  %197 = zext i1 %196 to i32
  %198 = call i32 @Assert(i32 %197)
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %12, align 4
  %203 = add nsw i32 %201, %202
  %204 = sext i32 %203 to i64
  %205 = icmp ugt i64 %204, 4
  br i1 %205, label %206, label %213

206:                                              ; preds = %191
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = sub i64 4, %210
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %17, align 4
  br label %215

213:                                              ; preds = %191
  %214 = load i32, i32* %12, align 4
  store i32 %214, i32* %17, align 4
  br label %215

215:                                              ; preds = %213, %206
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 6
  %218 = load i32*, i32** %217, align 8
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %218, i64 %222
  %224 = load i8*, i8** %14, align 8
  %225 = load i32, i32* %17, align 4
  %226 = call i32 @memcpy(i32* %223, i8* %224, i32 %225)
  %227 = load i32, i32* %17, align 4
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, %227
  store i32 %231, i32* %229, align 4
  %232 = load i32, i32* %17, align 4
  %233 = call i32 @MAXALIGN(i32 %232)
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, %233
  store i32 %237, i32* %235, align 4
  %238 = load i32, i32* %17, align 4
  %239 = load i32, i32* %12, align 4
  %240 = sub nsw i32 %239, %238
  store i32 %240, i32* %12, align 4
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = icmp uge i64 %244, 4
  br i1 %245, label %246, label %264

246:                                              ; preds = %215
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = icmp eq i64 %250, 4
  %252 = zext i1 %251 to i32
  %253 = call i32 @Assert(i32 %252)
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 6
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 4
  store i32 %257, i32* %259, align 8
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 2
  store i32 1, i32* %261, align 8
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 3
  store i32 0, i32* %263, align 4
  br label %264

264:                                              ; preds = %246, %215
  br label %265

265:                                              ; preds = %264, %155
  br label %93

266:                                              ; preds = %93
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  store i32 %269, i32* %13, align 4
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %348

274:                                              ; preds = %266
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %276 = load i32, i32* %13, align 4
  %277 = load i32, i32* %9, align 4
  %278 = call i64 @shm_mq_receive_bytes(%struct.TYPE_9__* %275, i32 %276, i32 %277, i32* %12, i8** %14)
  store i64 %278, i64* %11, align 8
  %279 = load i64, i64* %11, align 8
  %280 = load i64, i64* @SHM_MQ_SUCCESS, align 8
  %281 = icmp ne i64 %279, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %274
  %283 = load i64, i64* %11, align 8
  store i64 %283, i64* %5, align 8
  br label %436

284:                                              ; preds = %274
  %285 = load i32, i32* %12, align 4
  %286 = load i32, i32* %13, align 4
  %287 = icmp sge i32 %285, %286
  br i1 %287, label %288, label %302

288:                                              ; preds = %284
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 2
  store i32 0, i32* %290, align 8
  %291 = load i32, i32* %13, align 4
  %292 = call i32 @MAXALIGN(i32 %291)
  %293 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = add nsw i32 %295, %292
  store i32 %296, i32* %294, align 4
  %297 = load i32, i32* %13, align 4
  %298 = load i32*, i32** %7, align 8
  store i32 %297, i32* %298, align 4
  %299 = load i8*, i8** %14, align 8
  %300 = load i8**, i8*** %8, align 8
  store i8* %299, i8** %300, align 8
  %301 = load i64, i64* @SHM_MQ_SUCCESS, align 8
  store i64 %301, i64* %5, align 8
  br label %436

302:                                              ; preds = %284
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %13, align 4
  %307 = icmp slt i32 %305, %306
  br i1 %307, label %308, label %347

308:                                              ; preds = %302
  %309 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @MQH_INITIAL_BUFSIZE, align 4
  %313 = call i32 @Max(i32 %311, i32 %312)
  store i32 %313, i32* %18, align 4
  br label %314

314:                                              ; preds = %318, %308
  %315 = load i32, i32* %18, align 4
  %316 = load i32, i32* %13, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %318, label %321

318:                                              ; preds = %314
  %319 = load i32, i32* %18, align 4
  %320 = mul nsw i32 %319, 2
  store i32 %320, i32* %18, align 4
  br label %314

321:                                              ; preds = %314
  %322 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %322, i32 0, i32 6
  %324 = load i32*, i32** %323, align 8
  %325 = icmp ne i32* %324, null
  br i1 %325, label %326, label %335

326:                                              ; preds = %321
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 6
  %329 = load i32*, i32** %328, align 8
  %330 = call i32 @pfree(i32* %329)
  %331 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 6
  store i32* null, i32** %332, align 8
  %333 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 5
  store i32 0, i32* %334, align 4
  br label %335

335:                                              ; preds = %326, %321
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 7
  %338 = load i32, i32* %337, align 8
  %339 = load i32, i32* %18, align 4
  %340 = call i8* @MemoryContextAlloc(i32 %338, i32 %339)
  %341 = bitcast i8* %340 to i32*
  %342 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i32 0, i32 6
  store i32* %341, i32** %343, align 8
  %344 = load i32, i32* %18, align 4
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 5
  store i32 %344, i32* %346, align 4
  br label %347

347:                                              ; preds = %335, %302
  br label %348

348:                                              ; preds = %347, %266
  br label %349

349:                                              ; preds = %422, %348
  %350 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* %12, align 4
  %354 = add nsw i32 %352, %353
  %355 = load i32, i32* %13, align 4
  %356 = icmp sle i32 %354, %355
  %357 = zext i1 %356 to i32
  %358 = call i32 @Assert(i32 %357)
  %359 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %359, i32 0, i32 6
  %361 = load i32*, i32** %360, align 8
  %362 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 3
  %364 = load i32, i32* %363, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %361, i64 %365
  %367 = load i8*, i8** %14, align 8
  %368 = load i32, i32* %12, align 4
  %369 = call i32 @memcpy(i32* %366, i8* %367, i32 %368)
  %370 = load i32, i32* %12, align 4
  %371 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 4
  %374 = add nsw i32 %373, %370
  store i32 %374, i32* %372, align 4
  %375 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %375, i32 0, i32 3
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* %13, align 4
  %379 = icmp eq i32 %377, %378
  br i1 %379, label %385, label %380

380:                                              ; preds = %349
  %381 = load i32, i32* %12, align 4
  %382 = load i32, i32* %12, align 4
  %383 = call i32 @MAXALIGN(i32 %382)
  %384 = icmp eq i32 %381, %383
  br label %385

385:                                              ; preds = %380, %349
  %386 = phi i1 [ true, %349 ], [ %384, %380 ]
  %387 = zext i1 %386 to i32
  %388 = call i32 @Assert(i32 %387)
  %389 = load i32, i32* %12, align 4
  %390 = call i32 @MAXALIGN(i32 %389)
  %391 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = add nsw i32 %393, %390
  store i32 %394, i32* %392, align 4
  %395 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %396 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %395, i32 0, i32 3
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* %13, align 4
  %399 = icmp sge i32 %397, %398
  br i1 %399, label %400, label %401

400:                                              ; preds = %385
  br label %423

401:                                              ; preds = %385
  %402 = load i32, i32* %13, align 4
  %403 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %404 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %403, i32 0, i32 3
  %405 = load i32, i32* %404, align 4
  %406 = sub nsw i32 %402, %405
  store i32 %406, i32* %19, align 4
  %407 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %408 = load i32, i32* %19, align 4
  %409 = load i32, i32* %9, align 4
  %410 = call i64 @shm_mq_receive_bytes(%struct.TYPE_9__* %407, i32 %408, i32 %409, i32* %12, i8** %14)
  store i64 %410, i64* %11, align 8
  %411 = load i64, i64* %11, align 8
  %412 = load i64, i64* @SHM_MQ_SUCCESS, align 8
  %413 = icmp ne i64 %411, %412
  br i1 %413, label %414, label %416

414:                                              ; preds = %401
  %415 = load i64, i64* %11, align 8
  store i64 %415, i64* %5, align 8
  br label %436

416:                                              ; preds = %401
  %417 = load i32, i32* %12, align 4
  %418 = load i32, i32* %19, align 4
  %419 = icmp sgt i32 %417, %418
  br i1 %419, label %420, label %422

420:                                              ; preds = %416
  %421 = load i32, i32* %19, align 4
  store i32 %421, i32* %12, align 4
  br label %422

422:                                              ; preds = %420, %416
  br label %349

423:                                              ; preds = %400
  %424 = load i32, i32* %13, align 4
  %425 = load i32*, i32** %7, align 8
  store i32 %424, i32* %425, align 4
  %426 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %427 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %426, i32 0, i32 6
  %428 = load i32*, i32** %427, align 8
  %429 = bitcast i32* %428 to i8*
  %430 = load i8**, i8*** %8, align 8
  store i8* %429, i8** %430, align 8
  %431 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %432 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %431, i32 0, i32 2
  store i32 0, i32* %432, align 8
  %433 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %434 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %433, i32 0, i32 3
  store i32 0, i32* %434, align 4
  %435 = load i64, i64* @SHM_MQ_SUCCESS, align 8
  store i64 %435, i64* %5, align 8
  br label %436

436:                                              ; preds = %423, %414, %288, %282, %141, %119, %67, %51, %49
  %437 = load i64, i64* %5, align 8
  ret i64 %437
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @shm_mq_counterparty_gone(%struct.TYPE_10__*, i32) #1

declare dso_local i32* @shm_mq_get_sender(%struct.TYPE_10__*) #1

declare dso_local i32 @shm_mq_wait_internal(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @shm_mq_inc_bytes_read(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @shm_mq_receive_bytes(%struct.TYPE_9__*, i32, i32, i32*, i8**) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i8* @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
