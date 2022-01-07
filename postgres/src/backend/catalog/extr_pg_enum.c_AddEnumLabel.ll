; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_enum.c_AddEnumLabel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_enum.c_AddEnumLabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@Natts_pg_enum = common dso_local global i32 0, align 4
@NAMEDATALEN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid enum label \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Labels must be %d characters or less.\00", align 1
@TypeRelationId = common dso_local global i32 0, align 4
@ExclusiveLock = common dso_local global i32 0, align 4
@ENUMTYPOIDNAME = common dso_local global i32 0, align 4
@NOTICE = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"enum label \22%s\22 already exists, skipping\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"enum label \22%s\22 already exists\00", align 1
@EnumRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@sort_order_cmp = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"\22%s\22 is not an existing enum label\00", align 1
@IsBinaryUpgrade = common dso_local global i64 0, align 8
@binary_upgrade_next_pg_enum_oid = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"pg_enum OID value not set when in binary upgrade mode\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"ALTER TYPE ADD BEFORE/AFTER is incompatible with binary upgrade\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@EnumOidIndexId = common dso_local global i32 0, align 4
@Anum_pg_enum_oid = common dso_local global i32 0, align 4
@Anum_pg_enum_enumtypid = common dso_local global i32 0, align 4
@Anum_pg_enum_enumsortorder = common dso_local global i32 0, align 4
@Anum_pg_enum_enumlabel = common dso_local global i32 0, align 4
@enum_blacklist = common dso_local global i32* null, align 8
@HASH_ENTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddEnumLabel(i32 %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32**, align 8
  %20 = alloca %struct.TYPE_8__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_7__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_7__*, align 8
  %28 = alloca %struct.TYPE_7__*, align 8
  %29 = alloca %struct.TYPE_7__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca %struct.TYPE_7__*, align 8
  %34 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %35 = load i32, i32* @Natts_pg_enum, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %13, align 8
  %38 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %14, align 8
  %39 = load i32, i32* @Natts_pg_enum, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %15, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = load i32, i32* @NAMEDATALEN, align 4
  %45 = sub nsw i32 %44, 1
  %46 = icmp sgt i32 %43, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %5
  %48 = load i32, i32* @ERROR, align 4
  %49 = load i32, i32* @ERRCODE_INVALID_NAME, align 4
  %50 = call i32 @errcode(i32 %49)
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @NAMEDATALEN, align 4
  %54 = sub nsw i32 %53, 1
  %55 = call i32 @errdetail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = call i32 @ereport(i32 %48, i32 %55)
  br label %57

57:                                               ; preds = %47, %5
  %58 = load i32, i32* @TypeRelationId, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @ExclusiveLock, align 4
  %61 = call i32 @LockDatabaseObject(i32 %58, i32 %59, i32 0, i32 %60)
  %62 = load i32, i32* @ENUMTYPOIDNAME, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @ObjectIdGetDatum(i32 %63)
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @CStringGetDatum(i8* %65)
  %67 = call i32* @SearchSysCache2(i32 %62, i32 %64, i32 %66)
  store i32* %67, i32** %17, align 8
  %68 = load i32*, i32** %17, align 8
  %69 = call i64 @HeapTupleIsValid(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %57
  %72 = load i32*, i32** %17, align 8
  %73 = call i32 @ReleaseSysCache(i32* %72)
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i32, i32* @NOTICE, align 4
  %78 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %79 = call i32 @errcode(i32 %78)
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  %82 = call i32 @ereport(i32 %77, i32 %81)
  store i32 1, i32* %23, align 4
  br label %405

83:                                               ; preds = %71
  %84 = load i32, i32* @ERROR, align 4
  %85 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %86 = call i32 @errcode(i32 %85)
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  %89 = call i32 @ereport(i32 %84, i32 %88)
  br label %90

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %57
  %92 = load i32, i32* @EnumRelationId, align 4
  %93 = load i32, i32* @RowExclusiveLock, align 4
  %94 = call i32 @table_open(i32 %92, i32 %93)
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %250, %91
  %96 = load i32, i32* @ENUMTYPOIDNAME, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @ObjectIdGetDatum(i32 %97)
  %99 = call %struct.TYPE_8__* @SearchSysCacheList1(i32 %96, i32 %98)
  store %struct.TYPE_8__* %99, %struct.TYPE_8__** %20, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %21, align 4
  %103 = load i32, i32* %21, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 8
  %106 = trunc i64 %105 to i32
  %107 = call i64 @palloc(i32 %106)
  %108 = inttoptr i64 %107 to i32**
  store i32** %108, i32*** %19, align 8
  store i32 0, i32* %22, align 4
  br label %109

109:                                              ; preds = %126, %95
  %110 = load i32, i32* %22, align 4
  %111 = load i32, i32* %21, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %109
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %115, align 8
  %117 = load i32, i32* %22, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %116, i64 %118
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32**, i32*** %19, align 8
  %123 = load i32, i32* %22, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  store i32* %121, i32** %125, align 8
  br label %126

126:                                              ; preds = %113
  %127 = load i32, i32* %22, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %22, align 4
  br label %109

129:                                              ; preds = %109
  %130 = load i32**, i32*** %19, align 8
  %131 = load i32, i32* %21, align 4
  %132 = load i32, i32* @sort_order_cmp, align 4
  %133 = call i32 @qsort(i32** %130, i32 %131, i32 8, i32 %132)
  %134 = load i8*, i8** %8, align 8
  %135 = icmp eq i8* %134, null
  br i1 %135, label %136, label %154

136:                                              ; preds = %129
  %137 = load i32, i32* %21, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %136
  %140 = load i32**, i32*** %19, align 8
  %141 = load i32, i32* %21, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32*, i32** %140, i64 %143
  %145 = load i32*, i32** %144, align 8
  %146 = call i64 @GETSTRUCT(i32* %145)
  %147 = inttoptr i64 %146 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %147, %struct.TYPE_7__** %24, align 8
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %18, align 4
  br label %153

152:                                              ; preds = %136
  store i32 1, i32* %18, align 4
  br label %153

153:                                              ; preds = %152, %139
  br label %263

154:                                              ; preds = %129
  store i32 0, i32* %25, align 4
  br label %155

155:                                              ; preds = %176, %154
  %156 = load i32, i32* %25, align 4
  %157 = load i32, i32* %21, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %179

159:                                              ; preds = %155
  %160 = load i32**, i32*** %19, align 8
  %161 = load i32, i32* %25, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32*, i32** %160, i64 %162
  %164 = load i32*, i32** %163, align 8
  %165 = call i64 @GETSTRUCT(i32* %164)
  %166 = inttoptr i64 %165 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %166, %struct.TYPE_7__** %29, align 8
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @NameStr(i32 %169)
  %171 = load i8*, i8** %8, align 8
  %172 = call i64 @strcmp(i32 %170, i8* %171)
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %159
  br label %179

175:                                              ; preds = %159
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %25, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %25, align 4
  br label %155

179:                                              ; preds = %174, %155
  %180 = load i32, i32* %25, align 4
  %181 = load i32, i32* %21, align 4
  %182 = icmp sge i32 %180, %181
  br i1 %182, label %183, label %190

183:                                              ; preds = %179
  %184 = load i32, i32* @ERROR, align 4
  %185 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %186 = call i32 @errcode(i32 %185)
  %187 = load i8*, i8** %8, align 8
  %188 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %187)
  %189 = call i32 @ereport(i32 %184, i32 %188)
  br label %190

190:                                              ; preds = %183, %179
  %191 = load i32**, i32*** %19, align 8
  %192 = load i32, i32* %25, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32*, i32** %191, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = call i64 @GETSTRUCT(i32* %195)
  %197 = inttoptr i64 %196 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %197, %struct.TYPE_7__** %27, align 8
  %198 = load i32, i32* %9, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %190
  %201 = load i32, i32* %25, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %26, align 4
  br label %206

203:                                              ; preds = %190
  %204 = load i32, i32* %25, align 4
  %205 = sub nsw i32 %204, 1
  store i32 %205, i32* %26, align 4
  br label %206

206:                                              ; preds = %203, %200
  %207 = load i32, i32* %26, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = sub nsw i32 %212, 1
  store i32 %213, i32* %18, align 4
  br label %262

214:                                              ; preds = %206
  %215 = load i32, i32* %26, align 4
  %216 = load i32, i32* %21, align 4
  %217 = icmp sge i32 %215, %216
  br i1 %217, label %218, label %223

218:                                              ; preds = %214
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %18, align 4
  br label %261

223:                                              ; preds = %214
  %224 = load i32**, i32*** %19, align 8
  %225 = load i32, i32* %26, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32*, i32** %224, i64 %226
  %228 = load i32*, i32** %227, align 8
  %229 = call i64 @GETSTRUCT(i32* %228)
  %230 = inttoptr i64 %229 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %230, %struct.TYPE_7__** %28, align 8
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %233, %236
  %238 = sdiv i32 %237, 2
  store volatile i32 %238, i32* %30, align 4
  %239 = load volatile i32, i32* %30, align 4
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %239, %242
  br i1 %243, label %250, label %244

244:                                              ; preds = %223
  %245 = load volatile i32, i32* %30, align 4
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %245, %248
  br i1 %249, label %250, label %259

250:                                              ; preds = %244, %223
  %251 = load i32, i32* %11, align 4
  %252 = load i32**, i32*** %19, align 8
  %253 = load i32, i32* %21, align 4
  %254 = call i32 @RenumberEnumType(i32 %251, i32** %252, i32 %253)
  %255 = load i32**, i32*** %19, align 8
  %256 = call i32 @pfree(i32** %255)
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %258 = call i32 @ReleaseCatCacheList(%struct.TYPE_8__* %257)
  br label %95

259:                                              ; preds = %244
  %260 = load volatile i32, i32* %30, align 4
  store i32 %260, i32* %18, align 4
  br label %261

261:                                              ; preds = %259, %218
  br label %262

262:                                              ; preds = %261, %209
  br label %263

263:                                              ; preds = %262, %153
  %264 = load i64, i64* @IsBinaryUpgrade, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %288

266:                                              ; preds = %263
  %267 = load i32, i32* @binary_upgrade_next_pg_enum_oid, align 4
  %268 = call i32 @OidIsValid(i32 %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %276, label %270

270:                                              ; preds = %266
  %271 = load i32, i32* @ERROR, align 4
  %272 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %273 = call i32 @errcode(i32 %272)
  %274 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %275 = call i32 @ereport(i32 %271, i32 %274)
  br label %276

276:                                              ; preds = %270, %266
  %277 = load i8*, i8** %8, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %279, label %285

279:                                              ; preds = %276
  %280 = load i32, i32* @ERROR, align 4
  %281 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %282 = call i32 @errcode(i32 %281)
  %283 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0))
  %284 = call i32 @ereport(i32 %280, i32 %283)
  br label %285

285:                                              ; preds = %279, %276
  %286 = load i32, i32* @binary_upgrade_next_pg_enum_oid, align 4
  store i32 %286, i32* %12, align 4
  %287 = load i32, i32* @InvalidOid, align 4
  store i32 %287, i32* @binary_upgrade_next_pg_enum_oid, align 4
  br label %353

288:                                              ; preds = %263
  br label %289

289:                                              ; preds = %351, %288
  %290 = load i32, i32* %11, align 4
  %291 = load i32, i32* @EnumOidIndexId, align 4
  %292 = load i32, i32* @Anum_pg_enum_oid, align 4
  %293 = call i32 @GetNewOidWithIndex(i32 %290, i32 %291, i32 %292)
  store i32 %293, i32* %12, align 4
  store i32 1, i32* %31, align 4
  store i32 0, i32* %22, align 4
  br label %294

294:                                              ; preds = %333, %289
  %295 = load i32, i32* %22, align 4
  %296 = load i32, i32* %21, align 4
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %298, label %336

298:                                              ; preds = %294
  %299 = load i32**, i32*** %19, align 8
  %300 = load i32, i32* %22, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32*, i32** %299, i64 %301
  %303 = load i32*, i32** %302, align 8
  store i32* %303, i32** %32, align 8
  %304 = load i32*, i32** %32, align 8
  %305 = call i64 @GETSTRUCT(i32* %304)
  %306 = inttoptr i64 %305 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %306, %struct.TYPE_7__** %33, align 8
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  store i32 %309, i32* %34, align 4
  %310 = load i32, i32* %34, align 4
  %311 = and i32 %310, 1
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %298
  br label %333

314:                                              ; preds = %298
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* %18, align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %320, label %326

320:                                              ; preds = %314
  %321 = load i32, i32* %34, align 4
  %322 = load i32, i32* %12, align 4
  %323 = icmp sge i32 %321, %322
  br i1 %323, label %324, label %325

324:                                              ; preds = %320
  store i32 0, i32* %31, align 4
  br label %336

325:                                              ; preds = %320
  br label %332

326:                                              ; preds = %314
  %327 = load i32, i32* %34, align 4
  %328 = load i32, i32* %12, align 4
  %329 = icmp sle i32 %327, %328
  br i1 %329, label %330, label %331

330:                                              ; preds = %326
  store i32 0, i32* %31, align 4
  br label %336

331:                                              ; preds = %326
  br label %332

332:                                              ; preds = %331, %325
  br label %333

333:                                              ; preds = %332, %313
  %334 = load i32, i32* %22, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %22, align 4
  br label %294

336:                                              ; preds = %330, %324, %294
  %337 = load i32, i32* %31, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %345

339:                                              ; preds = %336
  %340 = load i32, i32* %12, align 4
  %341 = and i32 %340, 1
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %344

343:                                              ; preds = %339
  br label %352

344:                                              ; preds = %339
  br label %351

345:                                              ; preds = %336
  %346 = load i32, i32* %12, align 4
  %347 = and i32 %346, 1
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %345
  br label %352

350:                                              ; preds = %345
  br label %351

351:                                              ; preds = %350, %344
  br label %289

352:                                              ; preds = %349, %343
  br label %353

353:                                              ; preds = %352, %285
  %354 = load i32**, i32*** %19, align 8
  %355 = call i32 @pfree(i32** %354)
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %357 = call i32 @ReleaseCatCacheList(%struct.TYPE_8__* %356)
  %358 = mul nuw i64 4, %40
  %359 = trunc i64 %358 to i32
  %360 = call i32 @memset(i32* %41, i32 0, i32 %359)
  %361 = load i32, i32* %12, align 4
  %362 = call i32 @ObjectIdGetDatum(i32 %361)
  %363 = load i32, i32* @Anum_pg_enum_oid, align 4
  %364 = sub nsw i32 %363, 1
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %38, i64 %365
  store i32 %362, i32* %366, align 4
  %367 = load i32, i32* %6, align 4
  %368 = call i32 @ObjectIdGetDatum(i32 %367)
  %369 = load i32, i32* @Anum_pg_enum_enumtypid, align 4
  %370 = sub nsw i32 %369, 1
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %38, i64 %371
  store i32 %368, i32* %372, align 4
  %373 = load i32, i32* %18, align 4
  %374 = call i32 @Float4GetDatum(i32 %373)
  %375 = load i32, i32* @Anum_pg_enum_enumsortorder, align 4
  %376 = sub nsw i32 %375, 1
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %38, i64 %377
  store i32 %374, i32* %378, align 4
  %379 = load i8*, i8** %7, align 8
  %380 = call i32 @namestrcpy(i32* %16, i8* %379)
  %381 = call i32 @NameGetDatum(i32* %16)
  %382 = load i32, i32* @Anum_pg_enum_enumlabel, align 4
  %383 = sub nsw i32 %382, 1
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %38, i64 %384
  store i32 %381, i32* %385, align 4
  %386 = load i32, i32* %11, align 4
  %387 = call i32 @RelationGetDescr(i32 %386)
  %388 = call i32* @heap_form_tuple(i32 %387, i32* %38, i32* %41)
  store i32* %388, i32** %17, align 8
  %389 = load i32, i32* %11, align 4
  %390 = load i32*, i32** %17, align 8
  %391 = call i32 @CatalogTupleInsert(i32 %389, i32* %390)
  %392 = load i32*, i32** %17, align 8
  %393 = call i32 @heap_freetuple(i32* %392)
  %394 = load i32, i32* %11, align 4
  %395 = load i32, i32* @RowExclusiveLock, align 4
  %396 = call i32 @table_close(i32 %394, i32 %395)
  %397 = load i32*, i32** @enum_blacklist, align 8
  %398 = icmp eq i32* %397, null
  br i1 %398, label %399, label %401

399:                                              ; preds = %353
  %400 = call i32 (...) @init_enum_blacklist()
  br label %401

401:                                              ; preds = %399, %353
  %402 = load i32*, i32** @enum_blacklist, align 8
  %403 = load i32, i32* @HASH_ENTER, align 4
  %404 = call i32 @hash_search(i32* %402, i32* %12, i32 %403, i32* null)
  store i32 0, i32* %23, align 4
  br label %405

405:                                              ; preds = %401, %76
  %406 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %406)
  %407 = load i32, i32* %23, align 4
  switch i32 %407, label %409 [
    i32 0, label %408
    i32 1, label %408
  ]

408:                                              ; preds = %405, %405
  ret void

409:                                              ; preds = %405
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i32 @errdetail(i8*, i32) #2

declare dso_local i32 @LockDatabaseObject(i32, i32, i32, i32) #2

declare dso_local i32* @SearchSysCache2(i32, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @CStringGetDatum(i8*) #2

declare dso_local i64 @HeapTupleIsValid(i32*) #2

declare dso_local i32 @ReleaseSysCache(i32*) #2

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local %struct.TYPE_8__* @SearchSysCacheList1(i32, i32) #2

declare dso_local i64 @palloc(i32) #2

declare dso_local i32 @qsort(i32**, i32, i32, i32) #2

declare dso_local i64 @GETSTRUCT(i32*) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @NameStr(i32) #2

declare dso_local i32 @RenumberEnumType(i32, i32**, i32) #2

declare dso_local i32 @pfree(i32**) #2

declare dso_local i32 @ReleaseCatCacheList(%struct.TYPE_8__*) #2

declare dso_local i32 @OidIsValid(i32) #2

declare dso_local i32 @GetNewOidWithIndex(i32, i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @Float4GetDatum(i32) #2

declare dso_local i32 @namestrcpy(i32*, i8*) #2

declare dso_local i32 @NameGetDatum(i32*) #2

declare dso_local i32* @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleInsert(i32, i32*) #2

declare dso_local i32 @heap_freetuple(i32*) #2

declare dso_local i32 @table_close(i32, i32) #2

declare dso_local i32 @init_enum_blacklist(...) #2

declare dso_local i32 @hash_search(i32*, i32*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
