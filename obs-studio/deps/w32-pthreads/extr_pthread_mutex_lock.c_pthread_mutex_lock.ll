; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_mutex_lock.c_pthread_mutex_lock.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/extr_pthread_mutex_lock.c_pthread_mutex_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTHREAD_ERRORCHECK_MUTEX_INITIALIZER = common dso_local global %struct.TYPE_9__* null, align 8
@PTHREAD_MUTEX_NORMAL = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@INFINITE = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_RECURSIVE = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@PTW32_ROBUST_NOTRECOVERABLE = common dso_local global i64 0, align 8
@ENOTRECOVERABLE = common dso_local global i32 0, align 4
@EOWNERDEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_mutex_lock(%struct.TYPE_9__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = icmp eq %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %2, align 4
  br label %290

15:                                               ; preds = %1
  %16 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @PTHREAD_ERRORCHECK_MUTEX_INITIALIZER, align 8
  %19 = icmp uge %struct.TYPE_9__* %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %22 = call i32 @ptw32_mutex_check_need_init(%struct.TYPE_9__** %21)
  store i32 %22, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %290

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %15
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %5, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %128

35:                                               ; preds = %27
  %36 = load i32, i32* @PTHREAD_MUTEX_NORMAL, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %35
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 3
  %42 = ptrtoint i32* %41 to i32
  %43 = call i64 @PTW32_INTERLOCKED_EXCHANGE_LONG(i32 %42, i64 1)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %62, %45
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = ptrtoint i32* %48 to i32
  %50 = call i64 @PTW32_INTERLOCKED_EXCHANGE_LONG(i32 %49, i64 -1)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load i64, i64* @WAIT_OBJECT_0, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @INFINITE, align 4
  %58 = call i64 @WaitForSingleObject(i32 %56, i32 %57)
  %59 = icmp ne i64 %53, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %6, align 4
  br label %63

62:                                               ; preds = %52
  br label %46

63:                                               ; preds = %60, %46
  br label %64

64:                                               ; preds = %63, %39
  br label %127

65:                                               ; preds = %35
  %66 = call i8* (...) @pthread_self()
  store i8* %66, i8** %7, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 3
  %69 = ptrtoint i32* %68 to i32
  %70 = call i64 @PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG(i32 %69, i64 1, i64 0)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  br label %126

78:                                               ; preds = %65
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 4
  %81 = load i8*, i8** %80, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i64 @pthread_equal(i8* %81, i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %78
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %96

94:                                               ; preds = %85
  %95 = load i32, i32* @EDEADLK, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %94, %89
  br label %125

97:                                               ; preds = %78
  br label %98

98:                                               ; preds = %114, %97
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = ptrtoint i32* %100 to i32
  %102 = call i64 @PTW32_INTERLOCKED_EXCHANGE_LONG(i32 %101, i64 -1)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %98
  %105 = load i64, i64* @WAIT_OBJECT_0, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @INFINITE, align 4
  %110 = call i64 @WaitForSingleObject(i32 %108, i32 %109)
  %111 = icmp ne i64 %105, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i32, i32* @EINVAL, align 4
  store i32 %113, i32* %6, align 4
  br label %115

114:                                              ; preds = %104
  br label %98

115:                                              ; preds = %112, %98
  %116 = load i32, i32* %6, align 4
  %117 = icmp eq i32 0, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  store i32 1, i32* %120, align 4
  %121 = load i8*, i8** %7, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 4
  store i8* %121, i8** %123, align 8
  br label %124

124:                                              ; preds = %118, %115
  br label %125

125:                                              ; preds = %124, %96
  br label %126

126:                                              ; preds = %125, %72
  br label %127

127:                                              ; preds = %126, %64
  br label %288

128:                                              ; preds = %27
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 5
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  store i32* %132, i32** %8, align 8
  %133 = load i64, i64* @PTW32_ROBUST_NOTRECOVERABLE, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = ptrtoint i32* %134 to i32
  %136 = call i64 @PTW32_INTERLOCKED_EXCHANGE_ADD_LONG(i32 %135, i64 0)
  %137 = icmp eq i64 %133, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %128
  %139 = load i32, i32* @ENOTRECOVERABLE, align 4
  store i32 %139, i32* %6, align 4
  br label %287

140:                                              ; preds = %128
  %141 = call i8* (...) @pthread_self()
  store i8* %141, i8** %9, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sub nsw i32 0, %142
  %144 = sub nsw i32 %143, 1
  store i32 %144, i32* %4, align 4
  %145 = load i32, i32* @PTHREAD_MUTEX_NORMAL, align 4
  %146 = load i32, i32* %4, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %203

148:                                              ; preds = %140
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 3
  %151 = ptrtoint i32* %150 to i32
  %152 = call i64 @PTW32_INTERLOCKED_EXCHANGE_LONG(i32 %151, i64 1)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %191

154:                                              ; preds = %148
  br label %155

155:                                              ; preds = %189, %154
  %156 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %157 = call i32 @ptw32_robust_mutex_inherit(%struct.TYPE_9__** %156)
  store i32 %157, i32* %6, align 4
  %158 = icmp eq i32 0, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %155
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 3
  %162 = ptrtoint i32* %161 to i32
  %163 = call i64 @PTW32_INTERLOCKED_EXCHANGE_LONG(i32 %162, i64 -1)
  %164 = icmp ne i64 %163, 0
  br label %165

165:                                              ; preds = %159, %155
  %166 = phi i1 [ false, %155 ], [ %164, %159 ]
  br i1 %166, label %167, label %190

167:                                              ; preds = %165
  %168 = load i64, i64* @WAIT_OBJECT_0, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @INFINITE, align 4
  %173 = call i64 @WaitForSingleObject(i32 %171, i32 %172)
  %174 = icmp ne i64 %168, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %167
  %176 = load i32, i32* @EINVAL, align 4
  store i32 %176, i32* %6, align 4
  br label %190

177:                                              ; preds = %167
  %178 = load i64, i64* @PTW32_ROBUST_NOTRECOVERABLE, align 8
  %179 = load i32*, i32** %8, align 8
  %180 = ptrtoint i32* %179 to i32
  %181 = call i64 @PTW32_INTERLOCKED_EXCHANGE_ADD_LONG(i32 %180, i64 0)
  %182 = icmp eq i64 %178, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %177
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @SetEvent(i32 %186)
  %188 = load i32, i32* @ENOTRECOVERABLE, align 4
  store i32 %188, i32* %6, align 4
  br label %190

189:                                              ; preds = %177
  br label %155

190:                                              ; preds = %183, %175, %165
  br label %191

191:                                              ; preds = %190, %148
  %192 = load i32, i32* %6, align 4
  %193 = icmp eq i32 0, %192
  br i1 %193, label %198, label %194

194:                                              ; preds = %191
  %195 = load i32, i32* @EOWNERDEAD, align 4
  %196 = load i32, i32* %6, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %194, %191
  %199 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %200 = load i8*, i8** %9, align 8
  %201 = call i32 @ptw32_robust_mutex_add(%struct.TYPE_9__** %199, i8* %200)
  br label %202

202:                                              ; preds = %198, %194
  br label %286

203:                                              ; preds = %140
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 3
  %206 = ptrtoint i32* %205 to i32
  %207 = call i64 @PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG(i32 %206, i64 1, i64 0)
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %203
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 1
  store i32 1, i32* %211, align 4
  %212 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %213 = load i8*, i8** %9, align 8
  %214 = call i32 @ptw32_robust_mutex_add(%struct.TYPE_9__** %212, i8* %213)
  br label %285

215:                                              ; preds = %203
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 4
  %218 = load i8*, i8** %217, align 8
  %219 = load i8*, i8** %9, align 8
  %220 = call i64 @pthread_equal(i8* %218, i8* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %234

222:                                              ; preds = %215
  %223 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %224 = load i32, i32* %4, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %231

226:                                              ; preds = %222
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %228, align 4
  br label %233

231:                                              ; preds = %222
  %232 = load i32, i32* @EDEADLK, align 4
  store i32 %232, i32* %6, align 4
  br label %233

233:                                              ; preds = %231, %226
  br label %284

234:                                              ; preds = %215
  br label %235

235:                                              ; preds = %269, %234
  %236 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %237 = call i32 @ptw32_robust_mutex_inherit(%struct.TYPE_9__** %236)
  store i32 %237, i32* %6, align 4
  %238 = icmp eq i32 0, %237
  br i1 %238, label %239, label %245

239:                                              ; preds = %235
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 3
  %242 = ptrtoint i32* %241 to i32
  %243 = call i64 @PTW32_INTERLOCKED_EXCHANGE_LONG(i32 %242, i64 -1)
  %244 = icmp ne i64 %243, 0
  br label %245

245:                                              ; preds = %239, %235
  %246 = phi i1 [ false, %235 ], [ %244, %239 ]
  br i1 %246, label %247, label %270

247:                                              ; preds = %245
  %248 = load i64, i64* @WAIT_OBJECT_0, align 8
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @INFINITE, align 4
  %253 = call i64 @WaitForSingleObject(i32 %251, i32 %252)
  %254 = icmp ne i64 %248, %253
  br i1 %254, label %255, label %257

255:                                              ; preds = %247
  %256 = load i32, i32* @EINVAL, align 4
  store i32 %256, i32* %6, align 4
  br label %270

257:                                              ; preds = %247
  %258 = load i64, i64* @PTW32_ROBUST_NOTRECOVERABLE, align 8
  %259 = load i32*, i32** %8, align 8
  %260 = ptrtoint i32* %259 to i32
  %261 = call i64 @PTW32_INTERLOCKED_EXCHANGE_ADD_LONG(i32 %260, i64 0)
  %262 = icmp eq i64 %258, %261
  br i1 %262, label %263, label %269

263:                                              ; preds = %257
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @SetEvent(i32 %266)
  %268 = load i32, i32* @ENOTRECOVERABLE, align 4
  store i32 %268, i32* %6, align 4
  br label %270

269:                                              ; preds = %257
  br label %235

270:                                              ; preds = %263, %255, %245
  %271 = load i32, i32* %6, align 4
  %272 = icmp eq i32 0, %271
  br i1 %272, label %277, label %273

273:                                              ; preds = %270
  %274 = load i32, i32* @EOWNERDEAD, align 4
  %275 = load i32, i32* %6, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %283

277:                                              ; preds = %273, %270
  %278 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 1
  store i32 1, i32* %279, align 4
  %280 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %3, align 8
  %281 = load i8*, i8** %9, align 8
  %282 = call i32 @ptw32_robust_mutex_add(%struct.TYPE_9__** %280, i8* %281)
  br label %283

283:                                              ; preds = %277, %273
  br label %284

284:                                              ; preds = %283, %233
  br label %285

285:                                              ; preds = %284, %209
  br label %286

286:                                              ; preds = %285, %202
  br label %287

287:                                              ; preds = %286, %138
  br label %288

288:                                              ; preds = %287, %127
  %289 = load i32, i32* %6, align 4
  store i32 %289, i32* %2, align 4
  br label %290

290:                                              ; preds = %288, %24, %13
  %291 = load i32, i32* %2, align 4
  ret i32 %291
}

declare dso_local i32 @ptw32_mutex_check_need_init(%struct.TYPE_9__**) #1

declare dso_local i64 @PTW32_INTERLOCKED_EXCHANGE_LONG(i32, i64) #1

declare dso_local i64 @WaitForSingleObject(i32, i32) #1

declare dso_local i8* @pthread_self(...) #1

declare dso_local i64 @PTW32_INTERLOCKED_COMPARE_EXCHANGE_LONG(i32, i64, i64) #1

declare dso_local i64 @pthread_equal(i8*, i8*) #1

declare dso_local i64 @PTW32_INTERLOCKED_EXCHANGE_ADD_LONG(i32, i64) #1

declare dso_local i32 @ptw32_robust_mutex_inherit(%struct.TYPE_9__**) #1

declare dso_local i32 @SetEvent(i32) #1

declare dso_local i32 @ptw32_robust_mutex_add(%struct.TYPE_9__**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
