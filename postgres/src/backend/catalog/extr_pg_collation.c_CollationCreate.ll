; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_collation.c_CollationCreate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_collation.c_CollationCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, i32 }

@Natts_pg_collation = common dso_local global i32 0, align 4
@COLLNAMEENCNSP = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i8* null, align 8
@NOTICE = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"collation \22%s\22 already exists, skipping\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"collation \22%s\22 for encoding \22%s\22 already exists, skipping\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"collation \22%s\22 already exists\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"collation \22%s\22 for encoding \22%s\22 already exists\00", align 1
@CollationRelationId = common dso_local global i32 0, align 4
@ShareRowExclusiveLock = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@CollationOidIndexId = common dso_local global i32 0, align 4
@Anum_pg_collation_oid = common dso_local global i32 0, align 4
@Anum_pg_collation_collname = common dso_local global i32 0, align 4
@Anum_pg_collation_collnamespace = common dso_local global i32 0, align 4
@Anum_pg_collation_collowner = common dso_local global i32 0, align 4
@Anum_pg_collation_collprovider = common dso_local global i32 0, align 4
@Anum_pg_collation_collisdeterministic = common dso_local global i32 0, align 4
@Anum_pg_collation_collencoding = common dso_local global i32 0, align 4
@Anum_pg_collation_collcollate = common dso_local global i32 0, align 4
@Anum_pg_collation_collctype = common dso_local global i32 0, align 4
@Anum_pg_collation_collversion = common dso_local global i32 0, align 4
@NamespaceRelationId = common dso_local global i32 0, align 4
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CollationCreate(i8* %0, i8* %1, i8* %2, i8 signext %3, i32 %4, i32 %5, i8* %6, i8* %7, i8* %8, i32 %9, i32 %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca %struct.TYPE_5__, align 8
  %35 = alloca %struct.TYPE_5__, align 8
  %36 = alloca i32, align 4
  store i8* %0, i8** %13, align 8
  store i8* %1, i8** %14, align 8
  store i8* %2, i8** %15, align 8
  store i8 %3, i8* %16, align 1
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i8* %6, i8** %19, align 8
  store i8* %7, i8** %20, align 8
  store i8* %8, i8** %21, align 8
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  %37 = load i32, i32* @Natts_pg_collation, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %27, align 8
  %40 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %28, align 8
  %41 = load i32, i32* @Natts_pg_collation, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i32, i64 %42, align 16
  store i64 %42, i64* %29, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = call i32 @AssertArg(i8* %44)
  %46 = load i8*, i8** %14, align 8
  %47 = call i32 @AssertArg(i8* %46)
  %48 = load i8*, i8** %15, align 8
  %49 = call i32 @AssertArg(i8* %48)
  %50 = load i8*, i8** %19, align 8
  %51 = call i32 @AssertArg(i8* %50)
  %52 = load i8*, i8** %20, align 8
  %53 = call i32 @AssertArg(i8* %52)
  %54 = load i32, i32* @COLLNAMEENCNSP, align 4
  %55 = load i8*, i8** %13, align 8
  %56 = call i32 @PointerGetDatum(i8* %55)
  %57 = load i32, i32* %18, align 4
  %58 = call i32 @Int32GetDatum(i32 %57)
  %59 = load i8*, i8** %14, align 8
  %60 = call i32 @ObjectIdGetDatum(i8* %59)
  %61 = call i64 @SearchSysCacheExists3(i32 %54, i32 %56, i32 %58, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %108

63:                                               ; preds = %11
  %64 = load i32, i32* %23, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i8*, i8** @InvalidOid, align 8
  store i8* %67, i8** %12, align 8
  store i32 1, i32* %36, align 4
  br label %283

68:                                               ; preds = %63
  %69 = load i32, i32* %22, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %68
  %72 = load i32, i32* @NOTICE, align 4
  %73 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %74 = call i32 @errcode(i32 %73)
  %75 = load i32, i32* %18, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %78)
  br label %85

80:                                               ; preds = %71
  %81 = load i8*, i8** %13, align 8
  %82 = load i32, i32* %18, align 4
  %83 = call i32 @pg_encoding_to_char(i32 %82)
  %84 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %81, i32 %83)
  br label %85

85:                                               ; preds = %80, %77
  %86 = phi i32 [ %79, %77 ], [ %84, %80 ]
  %87 = call i32 @ereport(i32 %72, i32 %86)
  %88 = load i8*, i8** @InvalidOid, align 8
  store i8* %88, i8** %12, align 8
  store i32 1, i32* %36, align 4
  br label %283

89:                                               ; preds = %68
  %90 = load i32, i32* @ERROR, align 4
  %91 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %92 = call i32 @errcode(i32 %91)
  %93 = load i32, i32* %18, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i8*, i8** %13, align 8
  %97 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %96)
  br label %103

98:                                               ; preds = %89
  %99 = load i8*, i8** %13, align 8
  %100 = load i32, i32* %18, align 4
  %101 = call i32 @pg_encoding_to_char(i32 %100)
  %102 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %99, i32 %101)
  br label %103

103:                                              ; preds = %98, %95
  %104 = phi i32 [ %97, %95 ], [ %102, %98 ]
  %105 = call i32 @ereport(i32 %90, i32 %104)
  br label %106

106:                                              ; preds = %103
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107, %11
  %109 = load i32, i32* @CollationRelationId, align 4
  %110 = load i32, i32* @ShareRowExclusiveLock, align 4
  %111 = call i32 @table_open(i32 %109, i32 %110)
  store i32 %111, i32* %24, align 4
  %112 = load i32, i32* %18, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %124

114:                                              ; preds = %108
  %115 = load i32, i32* @COLLNAMEENCNSP, align 4
  %116 = load i8*, i8** %13, align 8
  %117 = call i32 @PointerGetDatum(i8* %116)
  %118 = call i32 (...) @GetDatabaseEncoding()
  %119 = call i32 @Int32GetDatum(i32 %118)
  %120 = load i8*, i8** %14, align 8
  %121 = call i32 @ObjectIdGetDatum(i8* %120)
  %122 = call i64 @SearchSysCacheExists3(i32 %115, i32 %117, i32 %119, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %136, label %124

124:                                              ; preds = %114, %108
  %125 = load i32, i32* %18, align 4
  %126 = icmp ne i32 %125, -1
  br i1 %126, label %127, label %167

127:                                              ; preds = %124
  %128 = load i32, i32* @COLLNAMEENCNSP, align 4
  %129 = load i8*, i8** %13, align 8
  %130 = call i32 @PointerGetDatum(i8* %129)
  %131 = call i32 @Int32GetDatum(i32 -1)
  %132 = load i8*, i8** %14, align 8
  %133 = call i32 @ObjectIdGetDatum(i8* %132)
  %134 = call i64 @SearchSysCacheExists3(i32 %128, i32 %130, i32 %131, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %167

136:                                              ; preds = %127, %114
  %137 = load i32, i32* %23, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i32, i32* %24, align 4
  %141 = load i32, i32* @NoLock, align 4
  %142 = call i32 @table_close(i32 %140, i32 %141)
  %143 = load i8*, i8** @InvalidOid, align 8
  store i8* %143, i8** %12, align 8
  store i32 1, i32* %36, align 4
  br label %283

144:                                              ; preds = %136
  %145 = load i32, i32* %22, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %144
  %148 = load i32, i32* %24, align 4
  %149 = load i32, i32* @NoLock, align 4
  %150 = call i32 @table_close(i32 %148, i32 %149)
  %151 = load i32, i32* @NOTICE, align 4
  %152 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %153 = call i32 @errcode(i32 %152)
  %154 = load i8*, i8** %13, align 8
  %155 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %154)
  %156 = call i32 @ereport(i32 %151, i32 %155)
  %157 = load i8*, i8** @InvalidOid, align 8
  store i8* %157, i8** %12, align 8
  store i32 1, i32* %36, align 4
  br label %283

158:                                              ; preds = %144
  %159 = load i32, i32* @ERROR, align 4
  %160 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %161 = call i32 @errcode(i32 %160)
  %162 = load i8*, i8** %13, align 8
  %163 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %162)
  %164 = call i32 @ereport(i32 %159, i32 %163)
  br label %165

165:                                              ; preds = %158
  br label %166

166:                                              ; preds = %165
  br label %167

167:                                              ; preds = %166, %127, %124
  %168 = load i32, i32* %24, align 4
  %169 = call i32 @RelationGetDescr(i32 %168)
  store i32 %169, i32* %25, align 4
  %170 = mul nuw i64 4, %42
  %171 = trunc i64 %170 to i32
  %172 = call i32 @memset(i32* %43, i32 0, i32 %171)
  %173 = load i8*, i8** %13, align 8
  %174 = call i32 @namestrcpy(i32* %30, i8* %173)
  %175 = load i32, i32* %24, align 4
  %176 = load i32, i32* @CollationOidIndexId, align 4
  %177 = load i32, i32* @Anum_pg_collation_oid, align 4
  %178 = call i8* @GetNewOidWithIndex(i32 %175, i32 %176, i32 %177)
  store i8* %178, i8** %33, align 8
  %179 = load i8*, i8** %33, align 8
  %180 = call i32 @ObjectIdGetDatum(i8* %179)
  %181 = load i32, i32* @Anum_pg_collation_oid, align 4
  %182 = sub nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %40, i64 %183
  store i32 %180, i32* %184, align 4
  %185 = call i32 @NameGetDatum(i32* %30)
  %186 = load i32, i32* @Anum_pg_collation_collname, align 4
  %187 = sub nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %40, i64 %188
  store i32 %185, i32* %189, align 4
  %190 = load i8*, i8** %14, align 8
  %191 = call i32 @ObjectIdGetDatum(i8* %190)
  %192 = load i32, i32* @Anum_pg_collation_collnamespace, align 4
  %193 = sub nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %40, i64 %194
  store i32 %191, i32* %195, align 4
  %196 = load i8*, i8** %15, align 8
  %197 = call i32 @ObjectIdGetDatum(i8* %196)
  %198 = load i32, i32* @Anum_pg_collation_collowner, align 4
  %199 = sub nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %40, i64 %200
  store i32 %197, i32* %201, align 4
  %202 = load i8, i8* %16, align 1
  %203 = call i32 @CharGetDatum(i8 signext %202)
  %204 = load i32, i32* @Anum_pg_collation_collprovider, align 4
  %205 = sub nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %40, i64 %206
  store i32 %203, i32* %207, align 4
  %208 = load i32, i32* %17, align 4
  %209 = call i32 @BoolGetDatum(i32 %208)
  %210 = load i32, i32* @Anum_pg_collation_collisdeterministic, align 4
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %40, i64 %212
  store i32 %209, i32* %213, align 4
  %214 = load i32, i32* %18, align 4
  %215 = call i32 @Int32GetDatum(i32 %214)
  %216 = load i32, i32* @Anum_pg_collation_collencoding, align 4
  %217 = sub nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %40, i64 %218
  store i32 %215, i32* %219, align 4
  %220 = load i8*, i8** %19, align 8
  %221 = call i32 @namestrcpy(i32* %31, i8* %220)
  %222 = call i32 @NameGetDatum(i32* %31)
  %223 = load i32, i32* @Anum_pg_collation_collcollate, align 4
  %224 = sub nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %40, i64 %225
  store i32 %222, i32* %226, align 4
  %227 = load i8*, i8** %20, align 8
  %228 = call i32 @namestrcpy(i32* %32, i8* %227)
  %229 = call i32 @NameGetDatum(i32* %32)
  %230 = load i32, i32* @Anum_pg_collation_collctype, align 4
  %231 = sub nsw i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %40, i64 %232
  store i32 %229, i32* %233, align 4
  %234 = load i8*, i8** %21, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %236, label %243

236:                                              ; preds = %167
  %237 = load i8*, i8** %21, align 8
  %238 = call i32 @CStringGetTextDatum(i8* %237)
  %239 = load i32, i32* @Anum_pg_collation_collversion, align 4
  %240 = sub nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %40, i64 %241
  store i32 %238, i32* %242, align 4
  br label %248

243:                                              ; preds = %167
  %244 = load i32, i32* @Anum_pg_collation_collversion, align 4
  %245 = sub nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %43, i64 %246
  store i32 1, i32* %247, align 4
  br label %248

248:                                              ; preds = %243, %236
  %249 = load i32, i32* %25, align 4
  %250 = call i32 @heap_form_tuple(i32 %249, i32* %40, i32* %43)
  store i32 %250, i32* %26, align 4
  %251 = load i32, i32* %24, align 4
  %252 = load i32, i32* %26, align 4
  %253 = call i32 @CatalogTupleInsert(i32 %251, i32 %252)
  %254 = load i8*, i8** %33, align 8
  %255 = call i32 @OidIsValid(i8* %254)
  %256 = call i32 @Assert(i32 %255)
  %257 = load i32, i32* @CollationRelationId, align 4
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  store i32 %257, i32* %258, align 8
  %259 = load i8*, i8** %33, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i8* %259, i8** %260, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i64 0, i64* %261, align 8
  %262 = load i32, i32* @NamespaceRelationId, align 4
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i32 %262, i32* %263, align 8
  %264 = load i8*, i8** %14, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i8* %264, i8** %265, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i64 0, i64* %266, align 8
  %267 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %268 = call i32 @recordDependencyOn(%struct.TYPE_5__* %34, %struct.TYPE_5__* %35, i32 %267)
  %269 = load i32, i32* @CollationRelationId, align 4
  %270 = load i8*, i8** %33, align 8
  %271 = load i8*, i8** %15, align 8
  %272 = call i32 @recordDependencyOnOwner(i32 %269, i8* %270, i8* %271)
  %273 = call i32 @recordDependencyOnCurrentExtension(%struct.TYPE_5__* %34, i32 0)
  %274 = load i32, i32* @CollationRelationId, align 4
  %275 = load i8*, i8** %33, align 8
  %276 = call i32 @InvokeObjectPostCreateHook(i32 %274, i8* %275, i32 0)
  %277 = load i32, i32* %26, align 4
  %278 = call i32 @heap_freetuple(i32 %277)
  %279 = load i32, i32* %24, align 4
  %280 = load i32, i32* @NoLock, align 4
  %281 = call i32 @table_close(i32 %279, i32 %280)
  %282 = load i8*, i8** %33, align 8
  store i8* %282, i8** %12, align 8
  store i32 1, i32* %36, align 4
  br label %283

283:                                              ; preds = %248, %147, %139, %85, %66
  %284 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %284)
  %285 = load i8*, i8** %12, align 8
  ret i8* %285
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @AssertArg(i8*) #2

declare dso_local i64 @SearchSysCacheExists3(i32, i32, i32, i32) #2

declare dso_local i32 @PointerGetDatum(i8*) #2

declare dso_local i32 @Int32GetDatum(i32) #2

declare dso_local i32 @ObjectIdGetDatum(i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i8*, ...) #2

declare dso_local i32 @pg_encoding_to_char(i32) #2

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local i32 @GetDatabaseEncoding(...) #2

declare dso_local i32 @table_close(i32, i32) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @namestrcpy(i32*, i8*) #2

declare dso_local i8* @GetNewOidWithIndex(i32, i32, i32) #2

declare dso_local i32 @NameGetDatum(i32*) #2

declare dso_local i32 @CharGetDatum(i8 signext) #2

declare dso_local i32 @BoolGetDatum(i32) #2

declare dso_local i32 @CStringGetTextDatum(i8*) #2

declare dso_local i32 @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32 @CatalogTupleInsert(i32, i32) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @OidIsValid(i8*) #2

declare dso_local i32 @recordDependencyOn(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #2

declare dso_local i32 @recordDependencyOnOwner(i32, i8*, i8*) #2

declare dso_local i32 @recordDependencyOnCurrentExtension(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @InvokeObjectPostCreateHook(i32, i8*, i32) #2

declare dso_local i32 @heap_freetuple(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
