; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_numeric.c_set_var_from_str.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_numeric.c_set_var_from_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64*, i32, i64, i8* }

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@NUMERIC_NAN = common dso_local global i8* null, align 8
@PGTYPES_NUM_BAD_NUMERIC = common dso_local global i64 0, align 8
@NUMERIC_POS = common dso_local global i8* null, align 8
@NUMERIC_NEG = common dso_local global i8* null, align 8
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, %struct.TYPE_4__*)* @set_var_from_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_var_from_str(i8* %0, i8** %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* @errno, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i8**, i8*** %6, align 8
  store i8* %12, i8** %13, align 8
  br label %14

14:                                               ; preds = %26, %3
  %15 = load i8**, i8*** %6, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load i8**, i8*** %6, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @isspace(i8 zeroext %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %30

26:                                               ; preds = %19
  %27 = load i8**, i8*** %6, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %27, align 8
  br label %14

30:                                               ; preds = %25, %14
  %31 = load i8**, i8*** %6, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @pg_strncasecmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %30
  %36 = load i8**, i8*** %6, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 3
  store i8* %38, i8** %36, align 8
  %39 = load i8*, i8** @NUMERIC_NAN, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %55, %35
  %43 = load i8**, i8*** %6, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load i8**, i8*** %6, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @isspace(i8 zeroext %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = load i64, i64* @PGTYPES_NUM_BAD_NUMERIC, align 8
  store i64 %54, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %296

55:                                               ; preds = %47
  %56 = load i8**, i8*** %6, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %56, align 8
  br label %42

59:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %296

60:                                               ; preds = %30
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = load i8**, i8*** %6, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = call i64 @alloc_var(%struct.TYPE_4__* %61, i32 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 -1, i32* %4, align 4
  br label %296

68:                                               ; preds = %60
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 -1, i32* %70, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load i8*, i8** @NUMERIC_POS, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 5
  store i8* %73, i8** %75, align 8
  %76 = load i8**, i8*** %6, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  switch i32 %79, label %94 [
    i32 43, label %80
    i32 45, label %87
  ]

80:                                               ; preds = %68
  %81 = load i8*, i8** @NUMERIC_POS, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 5
  store i8* %81, i8** %83, align 8
  %84 = load i8**, i8*** %6, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %84, align 8
  br label %94

87:                                               ; preds = %68
  %88 = load i8*, i8** @NUMERIC_NEG, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 5
  store i8* %88, i8** %90, align 8
  %91 = load i8**, i8*** %6, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %91, align 8
  br label %94

94:                                               ; preds = %68, %87, %80
  %95 = load i8**, i8*** %6, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 46
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  store i32 1, i32* %8, align 4
  %101 = load i8**, i8*** %6, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %101, align 8
  br label %104

104:                                              ; preds = %100, %94
  %105 = load i8**, i8*** %6, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = load i8, i8* %106, align 1
  %108 = call i64 @isdigit(i8 zeroext %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %104
  %111 = load i64, i64* @PGTYPES_NUM_BAD_NUMERIC, align 8
  store i64 %111, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %296

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %169, %112
  %114 = load i8**, i8*** %6, align 8
  %115 = load i8*, i8** %114, align 8
  %116 = load i8, i8* %115, align 1
  %117 = icmp ne i8 %116, 0
  br i1 %117, label %118, label %170

118:                                              ; preds = %113
  %119 = load i8**, i8*** %6, align 8
  %120 = load i8*, i8** %119, align 8
  %121 = load i8, i8* %120, align 1
  %122 = call i64 @isdigit(i8 zeroext %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %152

124:                                              ; preds = %118
  %125 = load i8**, i8*** %6, align 8
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %125, align 8
  %128 = load i8, i8* %126, align 1
  %129 = sext i8 %128 to i32
  %130 = sub nsw i32 %129, 48
  %131 = sext i32 %130 to i64
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i64, i64* %134, i64 %137
  store i64 %131, i64* %138, align 8
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %124
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  br label %151

146:                                              ; preds = %124
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %148, align 8
  br label %151

151:                                              ; preds = %146, %141
  br label %169

152:                                              ; preds = %118
  %153 = load i8**, i8*** %6, align 8
  %154 = load i8*, i8** %153, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 46
  br i1 %157, label %158, label %167

158:                                              ; preds = %152
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = load i64, i64* @PGTYPES_NUM_BAD_NUMERIC, align 8
  store i64 %162, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %296

163:                                              ; preds = %158
  store i32 1, i32* %8, align 4
  %164 = load i8**, i8*** %6, align 8
  %165 = load i8*, i8** %164, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %164, align 8
  br label %168

167:                                              ; preds = %152
  br label %170

168:                                              ; preds = %163
  br label %169

169:                                              ; preds = %168, %151
  br label %113

170:                                              ; preds = %167, %113
  %171 = load i32, i32* %9, align 4
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 8
  %174 = load i8**, i8*** %6, align 8
  %175 = load i8*, i8** %174, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 101
  br i1 %178, label %185, label %179

179:                                              ; preds = %170
  %180 = load i8**, i8*** %6, align 8
  %181 = load i8*, i8** %180, align 8
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 69
  br i1 %184, label %185, label %237

185:                                              ; preds = %179, %170
  %186 = load i8**, i8*** %6, align 8
  %187 = load i8*, i8** %186, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %186, align 8
  %189 = load i8**, i8*** %6, align 8
  %190 = load i8*, i8** %189, align 8
  %191 = call i64 @strtol(i8* %190, i8** %11, i32 10)
  store i64 %191, i64* %10, align 8
  %192 = load i8*, i8** %11, align 8
  %193 = load i8**, i8*** %6, align 8
  %194 = load i8*, i8** %193, align 8
  %195 = icmp eq i8* %192, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %185
  %197 = load i64, i64* @PGTYPES_NUM_BAD_NUMERIC, align 8
  store i64 %197, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %296

198:                                              ; preds = %185
  %199 = load i8*, i8** %11, align 8
  %200 = load i8**, i8*** %6, align 8
  store i8* %199, i8** %200, align 8
  %201 = load i64, i64* %10, align 8
  %202 = load i32, i32* @INT_MAX, align 4
  %203 = sdiv i32 %202, 2
  %204 = sext i32 %203 to i64
  %205 = icmp sge i64 %201, %204
  br i1 %205, label %213, label %206

206:                                              ; preds = %198
  %207 = load i64, i64* %10, align 8
  %208 = load i32, i32* @INT_MAX, align 4
  %209 = sdiv i32 %208, 2
  %210 = sub nsw i32 0, %209
  %211 = sext i32 %210 to i64
  %212 = icmp sle i64 %207, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %206, %198
  %214 = load i64, i64* @PGTYPES_NUM_BAD_NUMERIC, align 8
  store i64 %214, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %296

215:                                              ; preds = %206
  %216 = load i64, i64* %10, align 8
  %217 = trunc i64 %216 to i32
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = add nsw i32 %220, %217
  store i32 %221, i32* %219, align 8
  %222 = load i64, i64* %10, align 8
  %223 = trunc i64 %222 to i32
  %224 = sext i32 %223 to i64
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = sub nsw i64 %227, %224
  store i64 %228, i64* %226, align 8
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = icmp slt i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %215
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 1
  store i64 0, i64* %235, align 8
  br label %236

236:                                              ; preds = %233, %215
  br label %237

237:                                              ; preds = %236, %179
  br label %238

238:                                              ; preds = %251, %237
  %239 = load i8**, i8*** %6, align 8
  %240 = load i8*, i8** %239, align 8
  %241 = load i8, i8* %240, align 1
  %242 = icmp ne i8 %241, 0
  br i1 %242, label %243, label %255

243:                                              ; preds = %238
  %244 = load i8**, i8*** %6, align 8
  %245 = load i8*, i8** %244, align 8
  %246 = load i8, i8* %245, align 1
  %247 = call i32 @isspace(i8 zeroext %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %251, label %249

249:                                              ; preds = %243
  %250 = load i64, i64* @PGTYPES_NUM_BAD_NUMERIC, align 8
  store i64 %250, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %296

251:                                              ; preds = %243
  %252 = load i8**, i8*** %6, align 8
  %253 = load i8*, i8** %252, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %252, align 8
  br label %238

255:                                              ; preds = %238
  br label %256

256:                                              ; preds = %269, %255
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %256
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 2
  %264 = load i64*, i64** %263, align 8
  %265 = load i64, i64* %264, align 8
  %266 = icmp eq i64 %265, 0
  br label %267

267:                                              ; preds = %261, %256
  %268 = phi i1 [ false, %256 ], [ %266, %261 ]
  br i1 %268, label %269, label %282

269:                                              ; preds = %267
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 2
  %272 = load i64*, i64** %271, align 8
  %273 = getelementptr inbounds i64, i64* %272, i32 1
  store i64* %273, i64** %271, align 8
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = add nsw i32 %276, -1
  store i32 %277, i32* %275, align 8
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 8
  %281 = add nsw i32 %280, -1
  store i32 %281, i32* %279, align 8
  br label %256

282:                                              ; preds = %267
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %282
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 0
  store i32 0, i32* %289, align 8
  br label %290

290:                                              ; preds = %287, %282
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 4
  store i64 %293, i64* %295, align 8
  store i32 0, i32* %4, align 4
  br label %296

296:                                              ; preds = %290, %249, %213, %196, %161, %110, %67, %59, %53
  %297 = load i32, i32* %4, align 4
  ret i32 %297
}

declare dso_local i32 @isspace(i8 zeroext) #1

declare dso_local i64 @pg_strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @alloc_var(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
