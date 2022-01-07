; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_constraint.c_DeconstructFkConstraintRow.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_constraint.c_DeconstructFkConstraintRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@CONSTROID = common dso_local global i32 0, align 4
@Anum_pg_constraint_conkey = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"null conkey for constraint %u\00", align 1
@INT2OID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"conkey is not a 1-D smallint array\00", align 1
@INDEX_MAX_KEYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"foreign key constraint cannot have %d columns\00", align 1
@Anum_pg_constraint_confkey = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"null confkey for constraint %u\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"confkey is not a 1-D smallint array\00", align 1
@Anum_pg_constraint_conpfeqop = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"null conpfeqop for constraint %u\00", align 1
@OIDOID = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"conpfeqop is not a 1-D Oid array\00", align 1
@Anum_pg_constraint_conppeqop = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"null conppeqop for constraint %u\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"conppeqop is not a 1-D Oid array\00", align 1
@Anum_pg_constraint_conffeqop = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"null conffeqop for constraint %u\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"conffeqop is not a 1-D Oid array\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DeconstructFkConstraintRow(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @GETSTRUCT(i32 %20)
  %22 = inttoptr i64 %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* @CONSTROID, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @Anum_pg_constraint_conkey, align 4
  %28 = call i32 @SysCacheGetAttr(i32 %25, i32 %26, i32 %27, i32* %17)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %17, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %7
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* %15, align 4
  %34 = call i32 (i32, i8*, ...) @elog(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %7
  %36 = load i32, i32* %16, align 4
  %37 = call i32* @DatumGetArrayTypeP(i32 %36)
  store i32* %37, i32** %18, align 8
  %38 = load i32*, i32** %18, align 8
  %39 = call i32 @ARR_NDIM(i32* %38)
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %50, label %41

41:                                               ; preds = %35
  %42 = load i32*, i32** %18, align 8
  %43 = call i64 @ARR_HASNULL(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load i32*, i32** %18, align 8
  %47 = call i64 @ARR_ELEMTYPE(i32* %46)
  %48 = load i64, i64* @INT2OID, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45, %41, %35
  %51 = load i32, i32* @ERROR, align 4
  %52 = call i32 (i32, i8*, ...) @elog(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32*, i32** %18, align 8
  %55 = call i32* @ARR_DIMS(i32* %54)
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60, %53
  %65 = load i32, i32* @ERROR, align 4
  %66 = load i32, i32* %19, align 4
  %67 = call i32 (i32, i8*, ...) @elog(i32 %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %60
  %69 = load i32*, i32** %10, align 8
  %70 = load i32*, i32** %18, align 8
  %71 = call i32 @ARR_DATA_PTR(i32* %70)
  %72 = load i32, i32* %19, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = trunc i64 %74 to i32
  %76 = call i32 @memcpy(i32* %69, i32 %71, i32 %75)
  %77 = load i32*, i32** %18, align 8
  %78 = ptrtoint i32* %77 to i64
  %79 = load i32, i32* %16, align 4
  %80 = call i64 @DatumGetPointer(i32 %79)
  %81 = icmp ne i64 %78, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %68
  %83 = load i32*, i32** %18, align 8
  %84 = call i32 @pfree(i32* %83)
  br label %85

85:                                               ; preds = %82, %68
  %86 = load i32, i32* @CONSTROID, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @Anum_pg_constraint_confkey, align 4
  %89 = call i32 @SysCacheGetAttr(i32 %86, i32 %87, i32 %88, i32* %17)
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %17, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32, i32* @ERROR, align 4
  %94 = load i32, i32* %15, align 4
  %95 = call i32 (i32, i8*, ...) @elog(i32 %93, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %92, %85
  %97 = load i32, i32* %16, align 4
  %98 = call i32* @DatumGetArrayTypeP(i32 %97)
  store i32* %98, i32** %18, align 8
  %99 = load i32*, i32** %18, align 8
  %100 = call i32 @ARR_NDIM(i32* %99)
  %101 = icmp ne i32 %100, 1
  br i1 %101, label %118, label %102

102:                                              ; preds = %96
  %103 = load i32*, i32** %18, align 8
  %104 = call i32* @ARR_DIMS(i32* %103)
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %19, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %118, label %109

109:                                              ; preds = %102
  %110 = load i32*, i32** %18, align 8
  %111 = call i64 @ARR_HASNULL(i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  %114 = load i32*, i32** %18, align 8
  %115 = call i64 @ARR_ELEMTYPE(i32* %114)
  %116 = load i64, i64* @INT2OID, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %113, %109, %102, %96
  %119 = load i32, i32* @ERROR, align 4
  %120 = call i32 (i32, i8*, ...) @elog(i32 %119, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %113
  %122 = load i32*, i32** %11, align 8
  %123 = load i32*, i32** %18, align 8
  %124 = call i32 @ARR_DATA_PTR(i32* %123)
  %125 = load i32, i32* %19, align 4
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 4
  %128 = trunc i64 %127 to i32
  %129 = call i32 @memcpy(i32* %122, i32 %124, i32 %128)
  %130 = load i32*, i32** %18, align 8
  %131 = ptrtoint i32* %130 to i64
  %132 = load i32, i32* %16, align 4
  %133 = call i64 @DatumGetPointer(i32 %132)
  %134 = icmp ne i64 %131, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %121
  %136 = load i32*, i32** %18, align 8
  %137 = call i32 @pfree(i32* %136)
  br label %138

138:                                              ; preds = %135, %121
  %139 = load i32*, i32** %12, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %195

141:                                              ; preds = %138
  %142 = load i32, i32* @CONSTROID, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @Anum_pg_constraint_conpfeqop, align 4
  %145 = call i32 @SysCacheGetAttr(i32 %142, i32 %143, i32 %144, i32* %17)
  store i32 %145, i32* %16, align 4
  %146 = load i32, i32* %17, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %141
  %149 = load i32, i32* @ERROR, align 4
  %150 = load i32, i32* %15, align 4
  %151 = call i32 (i32, i8*, ...) @elog(i32 %149, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %148, %141
  %153 = load i32, i32* %16, align 4
  %154 = call i32* @DatumGetArrayTypeP(i32 %153)
  store i32* %154, i32** %18, align 8
  %155 = load i32*, i32** %18, align 8
  %156 = call i32 @ARR_NDIM(i32* %155)
  %157 = icmp ne i32 %156, 1
  br i1 %157, label %174, label %158

158:                                              ; preds = %152
  %159 = load i32*, i32** %18, align 8
  %160 = call i32* @ARR_DIMS(i32* %159)
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %19, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %174, label %165

165:                                              ; preds = %158
  %166 = load i32*, i32** %18, align 8
  %167 = call i64 @ARR_HASNULL(i32* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %165
  %170 = load i32*, i32** %18, align 8
  %171 = call i64 @ARR_ELEMTYPE(i32* %170)
  %172 = load i64, i64* @OIDOID, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %169, %165, %158, %152
  %175 = load i32, i32* @ERROR, align 4
  %176 = call i32 (i32, i8*, ...) @elog(i32 %175, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %177

177:                                              ; preds = %174, %169
  %178 = load i32*, i32** %12, align 8
  %179 = load i32*, i32** %18, align 8
  %180 = call i32 @ARR_DATA_PTR(i32* %179)
  %181 = load i32, i32* %19, align 4
  %182 = sext i32 %181 to i64
  %183 = mul i64 %182, 4
  %184 = trunc i64 %183 to i32
  %185 = call i32 @memcpy(i32* %178, i32 %180, i32 %184)
  %186 = load i32*, i32** %18, align 8
  %187 = ptrtoint i32* %186 to i64
  %188 = load i32, i32* %16, align 4
  %189 = call i64 @DatumGetPointer(i32 %188)
  %190 = icmp ne i64 %187, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %177
  %192 = load i32*, i32** %18, align 8
  %193 = call i32 @pfree(i32* %192)
  br label %194

194:                                              ; preds = %191, %177
  br label %195

195:                                              ; preds = %194, %138
  %196 = load i32*, i32** %13, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %252

198:                                              ; preds = %195
  %199 = load i32, i32* @CONSTROID, align 4
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* @Anum_pg_constraint_conppeqop, align 4
  %202 = call i32 @SysCacheGetAttr(i32 %199, i32 %200, i32 %201, i32* %17)
  store i32 %202, i32* %16, align 4
  %203 = load i32, i32* %17, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %198
  %206 = load i32, i32* @ERROR, align 4
  %207 = load i32, i32* %15, align 4
  %208 = call i32 (i32, i8*, ...) @elog(i32 %206, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %207)
  br label %209

209:                                              ; preds = %205, %198
  %210 = load i32, i32* %16, align 4
  %211 = call i32* @DatumGetArrayTypeP(i32 %210)
  store i32* %211, i32** %18, align 8
  %212 = load i32*, i32** %18, align 8
  %213 = call i32 @ARR_NDIM(i32* %212)
  %214 = icmp ne i32 %213, 1
  br i1 %214, label %231, label %215

215:                                              ; preds = %209
  %216 = load i32*, i32** %18, align 8
  %217 = call i32* @ARR_DIMS(i32* %216)
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %19, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %231, label %222

222:                                              ; preds = %215
  %223 = load i32*, i32** %18, align 8
  %224 = call i64 @ARR_HASNULL(i32* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %231, label %226

226:                                              ; preds = %222
  %227 = load i32*, i32** %18, align 8
  %228 = call i64 @ARR_ELEMTYPE(i32* %227)
  %229 = load i64, i64* @OIDOID, align 8
  %230 = icmp ne i64 %228, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %226, %222, %215, %209
  %232 = load i32, i32* @ERROR, align 4
  %233 = call i32 (i32, i8*, ...) @elog(i32 %232, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %234

234:                                              ; preds = %231, %226
  %235 = load i32*, i32** %13, align 8
  %236 = load i32*, i32** %18, align 8
  %237 = call i32 @ARR_DATA_PTR(i32* %236)
  %238 = load i32, i32* %19, align 4
  %239 = sext i32 %238 to i64
  %240 = mul i64 %239, 4
  %241 = trunc i64 %240 to i32
  %242 = call i32 @memcpy(i32* %235, i32 %237, i32 %241)
  %243 = load i32*, i32** %18, align 8
  %244 = ptrtoint i32* %243 to i64
  %245 = load i32, i32* %16, align 4
  %246 = call i64 @DatumGetPointer(i32 %245)
  %247 = icmp ne i64 %244, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %234
  %249 = load i32*, i32** %18, align 8
  %250 = call i32 @pfree(i32* %249)
  br label %251

251:                                              ; preds = %248, %234
  br label %252

252:                                              ; preds = %251, %195
  %253 = load i32*, i32** %14, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %309

255:                                              ; preds = %252
  %256 = load i32, i32* @CONSTROID, align 4
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* @Anum_pg_constraint_conffeqop, align 4
  %259 = call i32 @SysCacheGetAttr(i32 %256, i32 %257, i32 %258, i32* %17)
  store i32 %259, i32* %16, align 4
  %260 = load i32, i32* %17, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %255
  %263 = load i32, i32* @ERROR, align 4
  %264 = load i32, i32* %15, align 4
  %265 = call i32 (i32, i8*, ...) @elog(i32 %263, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %264)
  br label %266

266:                                              ; preds = %262, %255
  %267 = load i32, i32* %16, align 4
  %268 = call i32* @DatumGetArrayTypeP(i32 %267)
  store i32* %268, i32** %18, align 8
  %269 = load i32*, i32** %18, align 8
  %270 = call i32 @ARR_NDIM(i32* %269)
  %271 = icmp ne i32 %270, 1
  br i1 %271, label %288, label %272

272:                                              ; preds = %266
  %273 = load i32*, i32** %18, align 8
  %274 = call i32* @ARR_DIMS(i32* %273)
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %19, align 4
  %278 = icmp ne i32 %276, %277
  br i1 %278, label %288, label %279

279:                                              ; preds = %272
  %280 = load i32*, i32** %18, align 8
  %281 = call i64 @ARR_HASNULL(i32* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %288, label %283

283:                                              ; preds = %279
  %284 = load i32*, i32** %18, align 8
  %285 = call i64 @ARR_ELEMTYPE(i32* %284)
  %286 = load i64, i64* @OIDOID, align 8
  %287 = icmp ne i64 %285, %286
  br i1 %287, label %288, label %291

288:                                              ; preds = %283, %279, %272, %266
  %289 = load i32, i32* @ERROR, align 4
  %290 = call i32 (i32, i8*, ...) @elog(i32 %289, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  br label %291

291:                                              ; preds = %288, %283
  %292 = load i32*, i32** %14, align 8
  %293 = load i32*, i32** %18, align 8
  %294 = call i32 @ARR_DATA_PTR(i32* %293)
  %295 = load i32, i32* %19, align 4
  %296 = sext i32 %295 to i64
  %297 = mul i64 %296, 4
  %298 = trunc i64 %297 to i32
  %299 = call i32 @memcpy(i32* %292, i32 %294, i32 %298)
  %300 = load i32*, i32** %18, align 8
  %301 = ptrtoint i32* %300 to i64
  %302 = load i32, i32* %16, align 4
  %303 = call i64 @DatumGetPointer(i32 %302)
  %304 = icmp ne i64 %301, %303
  br i1 %304, label %305, label %308

305:                                              ; preds = %291
  %306 = load i32*, i32** %18, align 8
  %307 = call i32 @pfree(i32* %306)
  br label %308

308:                                              ; preds = %305, %291
  br label %309

309:                                              ; preds = %308, %252
  %310 = load i32, i32* %19, align 4
  %311 = load i32*, i32** %9, align 8
  store i32 %310, i32* %311, align 4
  ret void
}

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32* @DatumGetArrayTypeP(i32) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i64 @ARR_HASNULL(i32*) #1

declare dso_local i64 @ARR_ELEMTYPE(i32*) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ARR_DATA_PTR(i32*) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
