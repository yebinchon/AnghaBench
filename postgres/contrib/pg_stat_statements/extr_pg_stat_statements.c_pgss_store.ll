; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_stat_statements/extr_pg_stat_statements.c_pgss_store.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_stat_statements/extr_pg_stat_statements.c_pgss_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@pgss = common dso_local global %struct.TYPE_14__* null, align 8
@pgss_hash = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@USAGE_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32, i32, double, i64, %struct.TYPE_13__*, i32*)* @pgss_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgss_store(i8* %0, i64 %1, i32 %2, i32 %3, double %4, i64 %5, %struct.TYPE_13__* %6, i32* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_11__, align 8
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_12__*, align 8
  %26 = alloca double, align 8
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store double %4, double* %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.TYPE_13__* %6, %struct.TYPE_13__** %15, align 8
  store i32* %7, i32** %16, align 8
  store i8* null, i8** %19, align 8
  %27 = call i32 (...) @GetDatabaseEncoding()
  store i32 %27, i32* %20, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pgss, align 8
  %33 = icmp ne %struct.TYPE_14__* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %8
  %35 = load i32, i32* @pgss_hash, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34, %8
  br label %472

38:                                               ; preds = %34
  %39 = load i32, i32* %11, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = icmp sle i32 %42, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @Assert(i32 %46)
  %48 = load i32, i32* %11, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %9, align 8
  %52 = load i32, i32* %12, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @strlen(i8* %55)
  store i32 %56, i32* %12, align 4
  br label %64

57:                                               ; preds = %41
  %58 = load i32, i32* %12, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = icmp sle i32 %58, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @Assert(i32 %62)
  br label %64

64:                                               ; preds = %57, %54
  br label %68

65:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @strlen(i8* %66)
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %65, %64
  br label %69

69:                                               ; preds = %80, %68
  %70 = load i32, i32* %12, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = call i64 @scanner_isspace(i8 signext %75)
  %77 = icmp ne i64 %76, 0
  br label %78

78:                                               ; preds = %72, %69
  %79 = phi i1 [ false, %69 ], [ %77, %72 ]
  br i1 %79, label %80, label %87

80:                                               ; preds = %78
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %9, align 8
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %12, align 4
  br label %69

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %102, %87
  %89 = load i32, i32* %12, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  %92 = load i8*, i8** %9, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = call i64 @scanner_isspace(i8 signext %97)
  %99 = icmp ne i64 %98, 0
  br label %100

100:                                              ; preds = %91, %88
  %101 = phi i1 [ false, %88 ], [ %99, %91 ]
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %12, align 4
  br label %88

105:                                              ; preds = %100
  %106 = load i64, i64* %10, align 8
  %107 = call i64 @UINT64CONST(i32 0)
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %105
  %110 = load i8*, i8** %9, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i64 @pgss_hash_string(i8* %110, i32 %111)
  store i64 %112, i64* %10, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i64 @UINT64CONST(i32 0)
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = call i64 @UINT64CONST(i32 2)
  store i64 %117, i64* %10, align 8
  br label %118

118:                                              ; preds = %116, %109
  br label %119

119:                                              ; preds = %118, %105
  %120 = call i32 (...) @GetUserId()
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* @MyDatabaseId, align 4
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  store i32 %122, i32* %123, align 8
  %124 = load i64, i64* %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store i64 %124, i64* %125, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pgss, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @LW_SHARED, align 4
  %130 = call i32 @LWLockAcquire(i32 %128, i32 %129)
  %131 = load i32, i32* @pgss_hash, align 4
  %132 = load i32, i32* @HASH_FIND, align 4
  %133 = call i64 @hash_search(i32 %131, %struct.TYPE_11__* %17, i32 %132, i32* null)
  %134 = inttoptr i64 %133 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %134, %struct.TYPE_12__** %18, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %136 = icmp ne %struct.TYPE_12__* %135, null
  br i1 %136, label %212, label %137

137:                                              ; preds = %119
  %138 = load i32*, i32** %16, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %155

140:                                              ; preds = %137
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pgss, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @LWLockRelease(i32 %143)
  %145 = load i32*, i32** %16, align 8
  %146 = load i8*, i8** %9, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %20, align 4
  %149 = call i8* @generate_normalized_query(i32* %145, i8* %146, i32 %147, i32* %12, i32 %148)
  store i8* %149, i8** %19, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pgss, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @LW_SHARED, align 4
  %154 = call i32 @LWLockAcquire(i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %140, %137
  %156 = load i8*, i8** %19, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i8*, i8** %19, align 8
  br label %162

160:                                              ; preds = %155
  %161 = load i8*, i8** %9, align 8
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi i8* [ %159, %158 ], [ %161, %160 ]
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @qtext_store(i8* %163, i32 %164, i32* %21, i32* %22)
  store i32 %165, i32* %23, align 4
  %166 = call i32 (...) @need_gc_qtexts()
  store i32 %166, i32* %24, align 4
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pgss, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @LWLockRelease(i32 %169)
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pgss, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @LW_EXCLUSIVE, align 4
  %175 = call i32 @LWLockAcquire(i32 %173, i32 %174)
  %176 = load i32, i32* %23, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %162
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pgss, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %22, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %195

184:                                              ; preds = %178, %162
  %185 = load i8*, i8** %19, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = load i8*, i8** %19, align 8
  br label %191

189:                                              ; preds = %184
  %190 = load i8*, i8** %9, align 8
  br label %191

191:                                              ; preds = %189, %187
  %192 = phi i8* [ %188, %187 ], [ %190, %189 ]
  %193 = load i32, i32* %12, align 4
  %194 = call i32 @qtext_store(i8* %192, i32 %193, i32* %21, i32* null)
  store i32 %194, i32* %23, align 4
  br label %195

195:                                              ; preds = %191, %178
  %196 = load i32, i32* %23, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %195
  br label %462

199:                                              ; preds = %195
  %200 = load i32, i32* %21, align 4
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* %20, align 4
  %203 = load i32*, i32** %16, align 8
  %204 = icmp ne i32* %203, null
  %205 = zext i1 %204 to i32
  %206 = call %struct.TYPE_12__* @entry_alloc(%struct.TYPE_11__* %17, i32 %200, i32 %201, i32 %202, i32 %205)
  store %struct.TYPE_12__* %206, %struct.TYPE_12__** %18, align 8
  %207 = load i32, i32* %24, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %199
  %210 = call i32 (...) @gc_qtexts()
  br label %211

211:                                              ; preds = %209, %199
  br label %212

212:                                              ; preds = %211, %119
  %213 = load i32*, i32** %16, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %461, label %215

215:                                              ; preds = %212
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %216, %struct.TYPE_12__** %25, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = call i32 @SpinLockAcquire(i32* %218)
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = load volatile i32, i32* %222, align 8
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %215
  %226 = load i32, i32* @USAGE_INIT, align 4
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 6
  store volatile i32 %226, i32* %229, align 8
  br label %230

230:                                              ; preds = %225, %215
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 0
  %234 = load volatile i32, i32* %233, align 8
  %235 = add nsw i32 %234, 1
  store volatile i32 %235, i32* %233, align 8
  %236 = load double, double* %13, align 8
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 1
  %240 = load volatile double, double* %239, align 8
  %241 = fadd double %240, %236
  store volatile double %241, double* %239, align 8
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  %245 = load volatile i32, i32* %244, align 8
  %246 = icmp eq i32 %245, 1
  br i1 %246, label %247, label %260

247:                                              ; preds = %230
  %248 = load double, double* %13, align 8
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 2
  store volatile double %248, double* %251, align 8
  %252 = load double, double* %13, align 8
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 3
  store volatile double %252, double* %255, align 8
  %256 = load double, double* %13, align 8
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 4
  store volatile double %256, double* %259, align 8
  br label %318

260:                                              ; preds = %230
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 4
  %264 = load volatile double, double* %263, align 8
  store double %264, double* %26, align 8
  %265 = load double, double* %13, align 8
  %266 = load double, double* %26, align 8
  %267 = fsub double %265, %266
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 0
  %271 = load volatile i32, i32* %270, align 8
  %272 = sitofp i32 %271 to double
  %273 = fdiv double %267, %272
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 4
  %277 = load volatile double, double* %276, align 8
  %278 = fadd double %277, %273
  store volatile double %278, double* %276, align 8
  %279 = load double, double* %13, align 8
  %280 = load double, double* %26, align 8
  %281 = fsub double %279, %280
  %282 = load double, double* %13, align 8
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 4
  %286 = load volatile double, double* %285, align 8
  %287 = fsub double %282, %286
  %288 = fmul double %281, %287
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 5
  %292 = load volatile double, double* %291, align 8
  %293 = fadd double %292, %288
  store volatile double %293, double* %291, align 8
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 2
  %297 = load volatile double, double* %296, align 8
  %298 = load double, double* %13, align 8
  %299 = fcmp ogt double %297, %298
  br i1 %299, label %300, label %305

300:                                              ; preds = %260
  %301 = load double, double* %13, align 8
  %302 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 2
  store volatile double %301, double* %304, align 8
  br label %305

305:                                              ; preds = %300, %260
  %306 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 3
  %309 = load volatile double, double* %308, align 8
  %310 = load double, double* %13, align 8
  %311 = fcmp olt double %309, %310
  br i1 %311, label %312, label %317

312:                                              ; preds = %305
  %313 = load double, double* %13, align 8
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 3
  store volatile double %313, double* %316, align 8
  br label %317

317:                                              ; preds = %312, %305
  br label %318

318:                                              ; preds = %317, %247
  %319 = load i64, i64* %14, align 8
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 19
  %323 = load volatile i32, i32* %322, align 4
  %324 = sext i32 %323 to i64
  %325 = add nsw i64 %324, %319
  %326 = trunc i64 %325 to i32
  store volatile i32 %326, i32* %322, align 4
  %327 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i32 0, i32 11
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 18
  %333 = load volatile i32, i32* %332, align 8
  %334 = sext i32 %333 to i64
  %335 = add nsw i64 %334, %329
  %336 = trunc i64 %335 to i32
  store volatile i32 %336, i32* %332, align 8
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 10
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 17
  %343 = load volatile i32, i32* %342, align 4
  %344 = sext i32 %343 to i64
  %345 = add nsw i64 %344, %339
  %346 = trunc i64 %345 to i32
  store volatile i32 %346, i32* %342, align 4
  %347 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 9
  %349 = load i64, i64* %348, align 8
  %350 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %351 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i32 0, i32 16
  %353 = load volatile i32, i32* %352, align 8
  %354 = sext i32 %353 to i64
  %355 = add nsw i64 %354, %349
  %356 = trunc i64 %355 to i32
  store volatile i32 %356, i32* %352, align 8
  %357 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %357, i32 0, i32 8
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %361, i32 0, i32 15
  %363 = load volatile i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  %365 = add nsw i64 %364, %359
  %366 = trunc i64 %365 to i32
  store volatile i32 %366, i32* %362, align 4
  %367 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %368 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %367, i32 0, i32 7
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %371 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %371, i32 0, i32 14
  %373 = load volatile i32, i32* %372, align 8
  %374 = sext i32 %373 to i64
  %375 = add nsw i64 %374, %369
  %376 = trunc i64 %375 to i32
  store volatile i32 %376, i32* %372, align 8
  %377 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %378 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %377, i32 0, i32 6
  %379 = load i64, i64* %378, align 8
  %380 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %381 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 13
  %383 = load volatile i32, i32* %382, align 4
  %384 = sext i32 %383 to i64
  %385 = add nsw i64 %384, %379
  %386 = trunc i64 %385 to i32
  store volatile i32 %386, i32* %382, align 4
  %387 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %388 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %387, i32 0, i32 5
  %389 = load i64, i64* %388, align 8
  %390 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %391 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %391, i32 0, i32 12
  %393 = load volatile i32, i32* %392, align 8
  %394 = sext i32 %393 to i64
  %395 = add nsw i64 %394, %389
  %396 = trunc i64 %395 to i32
  store volatile i32 %396, i32* %392, align 8
  %397 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %398 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %397, i32 0, i32 4
  %399 = load i64, i64* %398, align 8
  %400 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %401 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %401, i32 0, i32 11
  %403 = load volatile i32, i32* %402, align 4
  %404 = sext i32 %403 to i64
  %405 = add nsw i64 %404, %399
  %406 = trunc i64 %405 to i32
  store volatile i32 %406, i32* %402, align 4
  %407 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %408 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %407, i32 0, i32 3
  %409 = load i64, i64* %408, align 8
  %410 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %411 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %410, i32 0, i32 1
  %412 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %411, i32 0, i32 10
  %413 = load volatile i32, i32* %412, align 8
  %414 = sext i32 %413 to i64
  %415 = add nsw i64 %414, %409
  %416 = trunc i64 %415 to i32
  store volatile i32 %416, i32* %412, align 8
  %417 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %418 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %417, i32 0, i32 2
  %419 = load i64, i64* %418, align 8
  %420 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %421 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %421, i32 0, i32 9
  %423 = load volatile i32, i32* %422, align 4
  %424 = sext i32 %423 to i64
  %425 = add nsw i64 %424, %419
  %426 = trunc i64 %425 to i32
  store volatile i32 %426, i32* %422, align 4
  %427 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %428 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = call i64 @INSTR_TIME_GET_MILLISEC(i32 %429)
  %431 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %432 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %431, i32 0, i32 1
  %433 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %432, i32 0, i32 8
  %434 = load volatile i32, i32* %433, align 8
  %435 = sext i32 %434 to i64
  %436 = add nsw i64 %435, %430
  %437 = trunc i64 %436 to i32
  store volatile i32 %437, i32* %433, align 8
  %438 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %439 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = call i64 @INSTR_TIME_GET_MILLISEC(i32 %440)
  %442 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %443 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %443, i32 0, i32 7
  %445 = load volatile i32, i32* %444, align 4
  %446 = sext i32 %445 to i64
  %447 = add nsw i64 %446, %441
  %448 = trunc i64 %447 to i32
  store volatile i32 %448, i32* %444, align 4
  %449 = load double, double* %13, align 8
  %450 = call i64 @USAGE_EXEC(double %449)
  %451 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %452 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %451, i32 0, i32 1
  %453 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %452, i32 0, i32 6
  %454 = load volatile i32, i32* %453, align 8
  %455 = sext i32 %454 to i64
  %456 = add nsw i64 %455, %450
  %457 = trunc i64 %456 to i32
  store volatile i32 %457, i32* %453, align 8
  %458 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %459 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %458, i32 0, i32 0
  %460 = call i32 @SpinLockRelease(i32* %459)
  br label %461

461:                                              ; preds = %318, %212
  br label %462

462:                                              ; preds = %461, %198
  %463 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pgss, align 8
  %464 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 4
  %466 = call i32 @LWLockRelease(i32 %465)
  %467 = load i8*, i8** %19, align 8
  %468 = icmp ne i8* %467, null
  br i1 %468, label %469, label %472

469:                                              ; preds = %462
  %470 = load i8*, i8** %19, align 8
  %471 = call i32 @pfree(i8* %470)
  br label %472

472:                                              ; preds = %37, %469, %462
  ret void
}

declare dso_local i32 @GetDatabaseEncoding(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @scanner_isspace(i8 signext) #1

declare dso_local i64 @UINT64CONST(i32) #1

declare dso_local i64 @pgss_hash_string(i8*, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @hash_search(i32, %struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i8* @generate_normalized_query(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @qtext_store(i8*, i32, i32*, i32*) #1

declare dso_local i32 @need_gc_qtexts(...) #1

declare dso_local %struct.TYPE_12__* @entry_alloc(%struct.TYPE_11__*, i32, i32, i32, i32) #1

declare dso_local i32 @gc_qtexts(...) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i64 @INSTR_TIME_GET_MILLISEC(i32) #1

declare dso_local i64 @USAGE_EXEC(double) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
