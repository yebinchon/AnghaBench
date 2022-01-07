; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_type.c_TypeCreate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_type.c_TypeCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i64 }

@Natts_pg_type = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_OBJECT_DEFINITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid type internal size %d\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"alignment \22%c\22 is invalid for passed-by-value type of size %d\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"internal size %d is invalid for passed-by-value type\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"alignment \22%c\22 is invalid for variable-length type\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"fixed-size types must have storage PLAIN\00", align 1
@RELKIND_COMPOSITE_TYPE = common dso_local global i8 0, align 1
@Anum_pg_type_typname = common dso_local global i32 0, align 4
@Anum_pg_type_typnamespace = common dso_local global i32 0, align 4
@Anum_pg_type_typowner = common dso_local global i32 0, align 4
@Anum_pg_type_typlen = common dso_local global i32 0, align 4
@Anum_pg_type_typbyval = common dso_local global i32 0, align 4
@Anum_pg_type_typtype = common dso_local global i32 0, align 4
@Anum_pg_type_typcategory = common dso_local global i32 0, align 4
@Anum_pg_type_typispreferred = common dso_local global i32 0, align 4
@Anum_pg_type_typisdefined = common dso_local global i32 0, align 4
@Anum_pg_type_typdelim = common dso_local global i32 0, align 4
@Anum_pg_type_typrelid = common dso_local global i32 0, align 4
@Anum_pg_type_typelem = common dso_local global i32 0, align 4
@Anum_pg_type_typarray = common dso_local global i32 0, align 4
@Anum_pg_type_typinput = common dso_local global i32 0, align 4
@Anum_pg_type_typoutput = common dso_local global i32 0, align 4
@Anum_pg_type_typreceive = common dso_local global i32 0, align 4
@Anum_pg_type_typsend = common dso_local global i32 0, align 4
@Anum_pg_type_typmodin = common dso_local global i32 0, align 4
@Anum_pg_type_typmodout = common dso_local global i32 0, align 4
@Anum_pg_type_typanalyze = common dso_local global i32 0, align 4
@Anum_pg_type_typalign = common dso_local global i32 0, align 4
@Anum_pg_type_typstorage = common dso_local global i32 0, align 4
@Anum_pg_type_typnotnull = common dso_local global i32 0, align 4
@Anum_pg_type_typbasetype = common dso_local global i32 0, align 4
@Anum_pg_type_typtypmod = common dso_local global i32 0, align 4
@Anum_pg_type_typndims = common dso_local global i32 0, align 4
@Anum_pg_type_typcollation = common dso_local global i32 0, align 4
@Anum_pg_type_typdefaultbin = common dso_local global i32 0, align 4
@Anum_pg_type_typdefault = common dso_local global i32 0, align 4
@OBJECT_TYPE = common dso_local global i32 0, align 4
@Anum_pg_type_typacl = common dso_local global i32 0, align 4
@TypeRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@TYPENAMENSP = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"type \22%s\22 already exists\00", align 1
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"cannot assign new OID to existing shell type\00", align 1
@Anum_pg_type_oid = common dso_local global i32 0, align 4
@IsBinaryUpgrade = common dso_local global i64 0, align 8
@binary_upgrade_next_pg_type_oid = common dso_local global i64 0, align 8
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [54 x i8] c"pg_type OID value not set when in binary upgrade mode\00", align 1
@InvalidOid = common dso_local global i64 0, align 8
@TypeOidIndexId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TypeCreate(i64 %0, i8* %1, i64 %2, i64 %3, i8 signext %4, i64 %5, i32 %6, i8 signext %7, i8 signext %8, i32 %9, i8 signext %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i32 %19, i64 %20, i64 %21, i8* %22, i8* %23, i32 %24, i8 signext %25, i8 signext %26, i32 %27, i32 %28, i32 %29, i64 %30) #0 {
  %32 = alloca i64, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i8, align 1
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  %39 = alloca i8, align 1
  %40 = alloca i8, align 1
  %41 = alloca i32, align 4
  %42 = alloca i8, align 1
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca i64, align 8
  %50 = alloca i64, align 8
  %51 = alloca i32, align 4
  %52 = alloca i64, align 8
  %53 = alloca i64, align 8
  %54 = alloca i8*, align 8
  %55 = alloca i8*, align 8
  %56 = alloca i32, align 4
  %57 = alloca i8, align 1
  %58 = alloca i8, align 1
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i64, align 8
  %63 = alloca i32, align 4
  %64 = alloca i64, align 8
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32*, align 8
  %68 = alloca %struct.TYPE_12__*, align 8
  %69 = alloca i8*, align 8
  %70 = alloca i64, align 8
  %71 = alloca i64, align 8
  %72 = alloca i64, align 8
  %73 = alloca i32, align 4
  %74 = alloca i32, align 4
  %75 = alloca i32, align 4
  %76 = alloca %struct.TYPE_13__*, align 8
  store i64 %0, i64* %32, align 8
  store i8* %1, i8** %33, align 8
  store i64 %2, i64* %34, align 8
  store i64 %3, i64* %35, align 8
  store i8 %4, i8* %36, align 1
  store i64 %5, i64* %37, align 8
  store i32 %6, i32* %38, align 4
  store i8 %7, i8* %39, align 1
  store i8 %8, i8* %40, align 1
  store i32 %9, i32* %41, align 4
  store i8 %10, i8* %42, align 1
  store i64 %11, i64* %43, align 8
  store i64 %12, i64* %44, align 8
  store i64 %13, i64* %45, align 8
  store i64 %14, i64* %46, align 8
  store i64 %15, i64* %47, align 8
  store i64 %16, i64* %48, align 8
  store i64 %17, i64* %49, align 8
  store i64 %18, i64* %50, align 8
  store i32 %19, i32* %51, align 4
  store i64 %20, i64* %52, align 8
  store i64 %21, i64* %53, align 8
  store i8* %22, i8** %54, align 8
  store i8* %23, i8** %55, align 8
  store i32 %24, i32* %56, align 4
  store i8 %25, i8* %57, align 1
  store i8 %26, i8* %58, align 1
  store i32 %27, i32* %59, align 4
  store i32 %28, i32* %60, align 4
  store i32 %29, i32* %61, align 4
  store i64 %30, i64* %62, align 8
  store i32 0, i32* %66, align 4
  %77 = load i32, i32* @Natts_pg_type, align 4
  %78 = zext i32 %77 to i64
  %79 = call i8* @llvm.stacksave()
  store i8* %79, i8** %69, align 8
  %80 = alloca i32, i64 %78, align 16
  store i64 %78, i64* %70, align 8
  %81 = load i32, i32* @Natts_pg_type, align 4
  %82 = zext i32 %81 to i64
  %83 = alloca i32, i64 %82, align 16
  store i64 %82, i64* %71, align 8
  %84 = load i32, i32* @Natts_pg_type, align 4
  %85 = zext i32 %84 to i64
  %86 = alloca i64, i64 %85, align 16
  store i64 %85, i64* %72, align 8
  %87 = load i32, i32* %38, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %31
  %90 = load i32, i32* %38, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %102, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %38, align 4
  %94 = icmp eq i32 %93, -2
  br i1 %94, label %102, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @ERROR, align 4
  %97 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %98 = call i32 @errcode(i32 %97)
  %99 = load i32, i32* %38, align 4
  %100 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = call i32 @ereport(i32 %96, i32 %100)
  br label %102

102:                                              ; preds = %95, %92, %89, %31
  %103 = load i32, i32* %56, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %166

105:                                              ; preds = %102
  %106 = load i32, i32* %38, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = load i8, i8* %57, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 99
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load i32, i32* @ERROR, align 4
  %114 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %115 = call i32 @errcode(i32 %114)
  %116 = load i8, i8* %57, align 1
  %117 = sext i8 %116 to i32
  %118 = load i32, i32* %38, align 4
  %119 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %118)
  %120 = call i32 @ereport(i32 %113, i32 %119)
  br label %121

121:                                              ; preds = %112, %108
  br label %165

122:                                              ; preds = %105
  %123 = load i32, i32* %38, align 4
  %124 = icmp eq i32 %123, 4
  br i1 %124, label %125, label %139

125:                                              ; preds = %122
  %126 = load i8, i8* %57, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 115
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load i32, i32* @ERROR, align 4
  %131 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %132 = call i32 @errcode(i32 %131)
  %133 = load i8, i8* %57, align 1
  %134 = sext i8 %133 to i32
  %135 = load i32, i32* %38, align 4
  %136 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %134, i32 %135)
  %137 = call i32 @ereport(i32 %130, i32 %136)
  br label %138

138:                                              ; preds = %129, %125
  br label %164

139:                                              ; preds = %122
  %140 = load i32, i32* %38, align 4
  %141 = icmp eq i32 %140, 4
  br i1 %141, label %142, label %156

142:                                              ; preds = %139
  %143 = load i8, i8* %57, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 105
  br i1 %145, label %146, label %155

146:                                              ; preds = %142
  %147 = load i32, i32* @ERROR, align 4
  %148 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %149 = call i32 @errcode(i32 %148)
  %150 = load i8, i8* %57, align 1
  %151 = sext i8 %150 to i32
  %152 = load i32, i32* %38, align 4
  %153 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %151, i32 %152)
  %154 = call i32 @ereport(i32 %147, i32 %153)
  br label %155

155:                                              ; preds = %146, %142
  br label %163

156:                                              ; preds = %139
  %157 = load i32, i32* @ERROR, align 4
  %158 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %159 = call i32 @errcode(i32 %158)
  %160 = load i32, i32* %38, align 4
  %161 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %160)
  %162 = call i32 @ereport(i32 %157, i32 %161)
  br label %163

163:                                              ; preds = %156, %155
  br label %164

164:                                              ; preds = %163, %138
  br label %165

165:                                              ; preds = %164, %121
  br label %201

166:                                              ; preds = %102
  %167 = load i32, i32* %38, align 4
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %185

169:                                              ; preds = %166
  %170 = load i8, i8* %57, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 105
  br i1 %172, label %185, label %173

173:                                              ; preds = %169
  %174 = load i8, i8* %57, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 100
  br i1 %176, label %185, label %177

177:                                              ; preds = %173
  %178 = load i32, i32* @ERROR, align 4
  %179 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %180 = call i32 @errcode(i32 %179)
  %181 = load i8, i8* %57, align 1
  %182 = sext i8 %181 to i32
  %183 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %182)
  %184 = call i32 @ereport(i32 %178, i32 %183)
  br label %185

185:                                              ; preds = %177, %173, %169, %166
  %186 = load i32, i32* %38, align 4
  %187 = icmp eq i32 %186, -2
  br i1 %187, label %188, label %200

188:                                              ; preds = %185
  %189 = load i8, i8* %57, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %190, 99
  br i1 %191, label %200, label %192

192:                                              ; preds = %188
  %193 = load i32, i32* @ERROR, align 4
  %194 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %195 = call i32 @errcode(i32 %194)
  %196 = load i8, i8* %57, align 1
  %197 = sext i8 %196 to i32
  %198 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %197)
  %199 = call i32 @ereport(i32 %193, i32 %198)
  br label %200

200:                                              ; preds = %192, %188, %185
  br label %201

201:                                              ; preds = %200, %165
  %202 = load i8, i8* %58, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp ne i32 %203, 112
  br i1 %204, label %205, label %214

205:                                              ; preds = %201
  %206 = load i32, i32* %38, align 4
  %207 = icmp ne i32 %206, -1
  br i1 %207, label %208, label %214

208:                                              ; preds = %205
  %209 = load i32, i32* @ERROR, align 4
  %210 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %211 = call i32 @errcode(i32 %210)
  %212 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %213 = call i32 @ereport(i32 %209, i32 %212)
  br label %214

214:                                              ; preds = %208, %205, %201
  %215 = load i32, i32* %51, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %229, label %217

217:                                              ; preds = %214
  %218 = load i64, i64* %35, align 8
  %219 = call i64 @OidIsValid(i64 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %217
  %222 = load i8, i8* %36, align 1
  %223 = sext i8 %222 to i32
  %224 = load i8, i8* @RELKIND_COMPOSITE_TYPE, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp ne i32 %223, %225
  br label %227

227:                                              ; preds = %221, %217
  %228 = phi i1 [ false, %217 ], [ %226, %221 ]
  br label %229

229:                                              ; preds = %227, %214
  %230 = phi i1 [ true, %214 ], [ %228, %227 ]
  %231 = zext i1 %230 to i32
  store i32 %231, i32* %65, align 4
  store i32 0, i32* %74, align 4
  br label %232

232:                                              ; preds = %246, %229
  %233 = load i32, i32* %74, align 4
  %234 = load i32, i32* @Natts_pg_type, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %249

236:                                              ; preds = %232
  %237 = load i32, i32* %74, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %80, i64 %238
  store i32 0, i32* %239, align 4
  %240 = load i32, i32* %74, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %83, i64 %241
  store i32 1, i32* %242, align 4
  %243 = load i32, i32* %74, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i64, i64* %86, i64 %244
  store i64 0, i64* %245, align 8
  br label %246

246:                                              ; preds = %236
  %247 = load i32, i32* %74, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %74, align 4
  br label %232

249:                                              ; preds = %232
  %250 = load i8*, i8** %33, align 8
  %251 = call i32 @namestrcpy(i32* %73, i8* %250)
  %252 = call i64 @NameGetDatum(i32* %73)
  %253 = load i32, i32* @Anum_pg_type_typname, align 4
  %254 = sub nsw i32 %253, 1
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i64, i64* %86, i64 %255
  store i64 %252, i64* %256, align 8
  %257 = load i64, i64* %34, align 8
  %258 = call i64 @ObjectIdGetDatum(i64 %257)
  %259 = load i32, i32* @Anum_pg_type_typnamespace, align 4
  %260 = sub nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i64, i64* %86, i64 %261
  store i64 %258, i64* %262, align 8
  %263 = load i64, i64* %37, align 8
  %264 = call i64 @ObjectIdGetDatum(i64 %263)
  %265 = load i32, i32* @Anum_pg_type_typowner, align 4
  %266 = sub nsw i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i64, i64* %86, i64 %267
  store i64 %264, i64* %268, align 8
  %269 = load i32, i32* %38, align 4
  %270 = call i64 @Int16GetDatum(i32 %269)
  %271 = load i32, i32* @Anum_pg_type_typlen, align 4
  %272 = sub nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i64, i64* %86, i64 %273
  store i64 %270, i64* %274, align 8
  %275 = load i32, i32* %56, align 4
  %276 = call i64 @BoolGetDatum(i32 %275)
  %277 = load i32, i32* @Anum_pg_type_typbyval, align 4
  %278 = sub nsw i32 %277, 1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i64, i64* %86, i64 %279
  store i64 %276, i64* %280, align 8
  %281 = load i8, i8* %39, align 1
  %282 = call i64 @CharGetDatum(i8 signext %281)
  %283 = load i32, i32* @Anum_pg_type_typtype, align 4
  %284 = sub nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i64, i64* %86, i64 %285
  store i64 %282, i64* %286, align 8
  %287 = load i8, i8* %40, align 1
  %288 = call i64 @CharGetDatum(i8 signext %287)
  %289 = load i32, i32* @Anum_pg_type_typcategory, align 4
  %290 = sub nsw i32 %289, 1
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i64, i64* %86, i64 %291
  store i64 %288, i64* %292, align 8
  %293 = load i32, i32* %41, align 4
  %294 = call i64 @BoolGetDatum(i32 %293)
  %295 = load i32, i32* @Anum_pg_type_typispreferred, align 4
  %296 = sub nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i64, i64* %86, i64 %297
  store i64 %294, i64* %298, align 8
  %299 = call i64 @BoolGetDatum(i32 1)
  %300 = load i32, i32* @Anum_pg_type_typisdefined, align 4
  %301 = sub nsw i32 %300, 1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i64, i64* %86, i64 %302
  store i64 %299, i64* %303, align 8
  %304 = load i8, i8* %42, align 1
  %305 = call i64 @CharGetDatum(i8 signext %304)
  %306 = load i32, i32* @Anum_pg_type_typdelim, align 4
  %307 = sub nsw i32 %306, 1
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i64, i64* %86, i64 %308
  store i64 %305, i64* %309, align 8
  %310 = load i64, i64* %35, align 8
  %311 = call i64 @ObjectIdGetDatum(i64 %310)
  %312 = load i32, i32* @Anum_pg_type_typrelid, align 4
  %313 = sub nsw i32 %312, 1
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i64, i64* %86, i64 %314
  store i64 %311, i64* %315, align 8
  %316 = load i64, i64* %50, align 8
  %317 = call i64 @ObjectIdGetDatum(i64 %316)
  %318 = load i32, i32* @Anum_pg_type_typelem, align 4
  %319 = sub nsw i32 %318, 1
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i64, i64* %86, i64 %320
  store i64 %317, i64* %321, align 8
  %322 = load i64, i64* %52, align 8
  %323 = call i64 @ObjectIdGetDatum(i64 %322)
  %324 = load i32, i32* @Anum_pg_type_typarray, align 4
  %325 = sub nsw i32 %324, 1
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i64, i64* %86, i64 %326
  store i64 %323, i64* %327, align 8
  %328 = load i64, i64* %43, align 8
  %329 = call i64 @ObjectIdGetDatum(i64 %328)
  %330 = load i32, i32* @Anum_pg_type_typinput, align 4
  %331 = sub nsw i32 %330, 1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i64, i64* %86, i64 %332
  store i64 %329, i64* %333, align 8
  %334 = load i64, i64* %44, align 8
  %335 = call i64 @ObjectIdGetDatum(i64 %334)
  %336 = load i32, i32* @Anum_pg_type_typoutput, align 4
  %337 = sub nsw i32 %336, 1
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i64, i64* %86, i64 %338
  store i64 %335, i64* %339, align 8
  %340 = load i64, i64* %45, align 8
  %341 = call i64 @ObjectIdGetDatum(i64 %340)
  %342 = load i32, i32* @Anum_pg_type_typreceive, align 4
  %343 = sub nsw i32 %342, 1
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i64, i64* %86, i64 %344
  store i64 %341, i64* %345, align 8
  %346 = load i64, i64* %46, align 8
  %347 = call i64 @ObjectIdGetDatum(i64 %346)
  %348 = load i32, i32* @Anum_pg_type_typsend, align 4
  %349 = sub nsw i32 %348, 1
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i64, i64* %86, i64 %350
  store i64 %347, i64* %351, align 8
  %352 = load i64, i64* %47, align 8
  %353 = call i64 @ObjectIdGetDatum(i64 %352)
  %354 = load i32, i32* @Anum_pg_type_typmodin, align 4
  %355 = sub nsw i32 %354, 1
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i64, i64* %86, i64 %356
  store i64 %353, i64* %357, align 8
  %358 = load i64, i64* %48, align 8
  %359 = call i64 @ObjectIdGetDatum(i64 %358)
  %360 = load i32, i32* @Anum_pg_type_typmodout, align 4
  %361 = sub nsw i32 %360, 1
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i64, i64* %86, i64 %362
  store i64 %359, i64* %363, align 8
  %364 = load i64, i64* %49, align 8
  %365 = call i64 @ObjectIdGetDatum(i64 %364)
  %366 = load i32, i32* @Anum_pg_type_typanalyze, align 4
  %367 = sub nsw i32 %366, 1
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i64, i64* %86, i64 %368
  store i64 %365, i64* %369, align 8
  %370 = load i8, i8* %57, align 1
  %371 = call i64 @CharGetDatum(i8 signext %370)
  %372 = load i32, i32* @Anum_pg_type_typalign, align 4
  %373 = sub nsw i32 %372, 1
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i64, i64* %86, i64 %374
  store i64 %371, i64* %375, align 8
  %376 = load i8, i8* %58, align 1
  %377 = call i64 @CharGetDatum(i8 signext %376)
  %378 = load i32, i32* @Anum_pg_type_typstorage, align 4
  %379 = sub nsw i32 %378, 1
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i64, i64* %86, i64 %380
  store i64 %377, i64* %381, align 8
  %382 = load i32, i32* %61, align 4
  %383 = call i64 @BoolGetDatum(i32 %382)
  %384 = load i32, i32* @Anum_pg_type_typnotnull, align 4
  %385 = sub nsw i32 %384, 1
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i64, i64* %86, i64 %386
  store i64 %383, i64* %387, align 8
  %388 = load i64, i64* %53, align 8
  %389 = call i64 @ObjectIdGetDatum(i64 %388)
  %390 = load i32, i32* @Anum_pg_type_typbasetype, align 4
  %391 = sub nsw i32 %390, 1
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i64, i64* %86, i64 %392
  store i64 %389, i64* %393, align 8
  %394 = load i32, i32* %59, align 4
  %395 = call i64 @Int32GetDatum(i32 %394)
  %396 = load i32, i32* @Anum_pg_type_typtypmod, align 4
  %397 = sub nsw i32 %396, 1
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i64, i64* %86, i64 %398
  store i64 %395, i64* %399, align 8
  %400 = load i32, i32* %60, align 4
  %401 = call i64 @Int32GetDatum(i32 %400)
  %402 = load i32, i32* @Anum_pg_type_typndims, align 4
  %403 = sub nsw i32 %402, 1
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i64, i64* %86, i64 %404
  store i64 %401, i64* %405, align 8
  %406 = load i64, i64* %62, align 8
  %407 = call i64 @ObjectIdGetDatum(i64 %406)
  %408 = load i32, i32* @Anum_pg_type_typcollation, align 4
  %409 = sub nsw i32 %408, 1
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i64, i64* %86, i64 %410
  store i64 %407, i64* %411, align 8
  %412 = load i8*, i8** %55, align 8
  %413 = icmp ne i8* %412, null
  br i1 %413, label %414, label %421

414:                                              ; preds = %249
  %415 = load i8*, i8** %55, align 8
  %416 = call i64 @CStringGetTextDatum(i8* %415)
  %417 = load i32, i32* @Anum_pg_type_typdefaultbin, align 4
  %418 = sub nsw i32 %417, 1
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i64, i64* %86, i64 %419
  store i64 %416, i64* %420, align 8
  br label %426

421:                                              ; preds = %249
  %422 = load i32, i32* @Anum_pg_type_typdefaultbin, align 4
  %423 = sub nsw i32 %422, 1
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %80, i64 %424
  store i32 1, i32* %425, align 4
  br label %426

426:                                              ; preds = %421, %414
  %427 = load i8*, i8** %54, align 8
  %428 = icmp ne i8* %427, null
  br i1 %428, label %429, label %436

429:                                              ; preds = %426
  %430 = load i8*, i8** %54, align 8
  %431 = call i64 @CStringGetTextDatum(i8* %430)
  %432 = load i32, i32* @Anum_pg_type_typdefault, align 4
  %433 = sub nsw i32 %432, 1
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i64, i64* %86, i64 %434
  store i64 %431, i64* %435, align 8
  br label %441

436:                                              ; preds = %426
  %437 = load i32, i32* @Anum_pg_type_typdefault, align 4
  %438 = sub nsw i32 %437, 1
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %80, i64 %439
  store i32 1, i32* %440, align 4
  br label %441

441:                                              ; preds = %436, %429
  %442 = load i32, i32* %65, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %445

444:                                              ; preds = %441
  store i32* null, i32** %67, align 8
  br label %450

445:                                              ; preds = %441
  %446 = load i32, i32* @OBJECT_TYPE, align 4
  %447 = load i64, i64* %37, align 8
  %448 = load i64, i64* %34, align 8
  %449 = call i32* @get_user_default_acl(i32 %446, i64 %447, i64 %448)
  store i32* %449, i32** %67, align 8
  br label %450

450:                                              ; preds = %445, %444
  %451 = load i32*, i32** %67, align 8
  %452 = icmp ne i32* %451, null
  br i1 %452, label %453, label %460

453:                                              ; preds = %450
  %454 = load i32*, i32** %67, align 8
  %455 = call i64 @PointerGetDatum(i32* %454)
  %456 = load i32, i32* @Anum_pg_type_typacl, align 4
  %457 = sub nsw i32 %456, 1
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i64, i64* %86, i64 %458
  store i64 %455, i64* %459, align 8
  br label %465

460:                                              ; preds = %450
  %461 = load i32, i32* @Anum_pg_type_typacl, align 4
  %462 = sub nsw i32 %461, 1
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %80, i64 %463
  store i32 1, i32* %464, align 4
  br label %465

465:                                              ; preds = %460, %453
  %466 = load i32, i32* @TypeRelationId, align 4
  %467 = load i32, i32* @RowExclusiveLock, align 4
  %468 = call i32 @table_open(i32 %466, i32 %467)
  store i32 %468, i32* %63, align 4
  %469 = load i32, i32* @TYPENAMENSP, align 4
  %470 = load i8*, i8** %33, align 8
  %471 = call i32 @CStringGetDatum(i8* %470)
  %472 = load i64, i64* %34, align 8
  %473 = call i64 @ObjectIdGetDatum(i64 %472)
  %474 = call %struct.TYPE_12__* @SearchSysCacheCopy2(i32 %469, i32 %471, i64 %473)
  store %struct.TYPE_12__* %474, %struct.TYPE_12__** %68, align 8
  %475 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %476 = call i64 @HeapTupleIsValid(%struct.TYPE_12__* %475)
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %478, label %528

478:                                              ; preds = %465
  %479 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %480 = call i64 @GETSTRUCT(%struct.TYPE_12__* %479)
  %481 = inttoptr i64 %480 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %481, %struct.TYPE_13__** %76, align 8
  %482 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %483 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %482, i32 0, i32 2
  %484 = load i64, i64* %483, align 8
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %486, label %493

486:                                              ; preds = %478
  %487 = load i32, i32* @ERROR, align 4
  %488 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %489 = call i32 @errcode(i32 %488)
  %490 = load i8*, i8** %33, align 8
  %491 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %490)
  %492 = call i32 @ereport(i32 %487, i32 %491)
  br label %493

493:                                              ; preds = %486, %478
  %494 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %495 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %494, i32 0, i32 0
  %496 = load i64, i64* %495, align 8
  %497 = load i64, i64* %37, align 8
  %498 = icmp ne i64 %496, %497
  br i1 %498, label %499, label %504

499:                                              ; preds = %493
  %500 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %501 = load i32, i32* @OBJECT_TYPE, align 4
  %502 = load i8*, i8** %33, align 8
  %503 = call i32 @aclcheck_error(i32 %500, i32 %501, i8* %502)
  br label %504

504:                                              ; preds = %499, %493
  %505 = load i64, i64* %32, align 8
  %506 = call i64 @OidIsValid(i64 %505)
  %507 = icmp ne i64 %506, 0
  br i1 %507, label %508, label %511

508:                                              ; preds = %504
  %509 = load i32, i32* @ERROR, align 4
  %510 = call i32 @elog(i32 %509, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %511

511:                                              ; preds = %508, %504
  %512 = load i32, i32* @Anum_pg_type_oid, align 4
  %513 = sub nsw i32 %512, 1
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i32, i32* %83, i64 %514
  store i32 0, i32* %515, align 4
  %516 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %517 = load i32, i32* %63, align 4
  %518 = call i32 @RelationGetDescr(i32 %517)
  %519 = call %struct.TYPE_12__* @heap_modify_tuple(%struct.TYPE_12__* %516, i32 %518, i64* %86, i32* %80, i32* %83)
  store %struct.TYPE_12__* %519, %struct.TYPE_12__** %68, align 8
  %520 = load i32, i32* %63, align 4
  %521 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %522 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %521, i32 0, i32 0
  %523 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %524 = call i32 @CatalogTupleUpdate(i32 %520, i32* %522, %struct.TYPE_12__* %523)
  %525 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %526 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %525, i32 0, i32 1
  %527 = load i64, i64* %526, align 8
  store i64 %527, i64* %64, align 8
  store i32 1, i32* %66, align 4
  br label %569

528:                                              ; preds = %465
  %529 = load i64, i64* %32, align 8
  %530 = call i64 @OidIsValid(i64 %529)
  %531 = icmp ne i64 %530, 0
  br i1 %531, label %532, label %534

532:                                              ; preds = %528
  %533 = load i64, i64* %32, align 8
  store i64 %533, i64* %64, align 8
  br label %556

534:                                              ; preds = %528
  %535 = load i64, i64* @IsBinaryUpgrade, align 8
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %537, label %550

537:                                              ; preds = %534
  %538 = load i64, i64* @binary_upgrade_next_pg_type_oid, align 8
  %539 = call i64 @OidIsValid(i64 %538)
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %547, label %541

541:                                              ; preds = %537
  %542 = load i32, i32* @ERROR, align 4
  %543 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %544 = call i32 @errcode(i32 %543)
  %545 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  %546 = call i32 @ereport(i32 %542, i32 %545)
  br label %547

547:                                              ; preds = %541, %537
  %548 = load i64, i64* @binary_upgrade_next_pg_type_oid, align 8
  store i64 %548, i64* %64, align 8
  %549 = load i64, i64* @InvalidOid, align 8
  store i64 %549, i64* @binary_upgrade_next_pg_type_oid, align 8
  br label %555

550:                                              ; preds = %534
  %551 = load i32, i32* %63, align 4
  %552 = load i32, i32* @TypeOidIndexId, align 4
  %553 = load i32, i32* @Anum_pg_type_oid, align 4
  %554 = call i64 @GetNewOidWithIndex(i32 %551, i32 %552, i32 %553)
  store i64 %554, i64* %64, align 8
  br label %555

555:                                              ; preds = %550, %547
  br label %556

556:                                              ; preds = %555, %532
  %557 = load i64, i64* %64, align 8
  %558 = call i64 @ObjectIdGetDatum(i64 %557)
  %559 = load i32, i32* @Anum_pg_type_oid, align 4
  %560 = sub nsw i32 %559, 1
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i64, i64* %86, i64 %561
  store i64 %558, i64* %562, align 8
  %563 = load i32, i32* %63, align 4
  %564 = call i32 @RelationGetDescr(i32 %563)
  %565 = call %struct.TYPE_12__* @heap_form_tuple(i32 %564, i64* %86, i32* %80)
  store %struct.TYPE_12__* %565, %struct.TYPE_12__** %68, align 8
  %566 = load i32, i32* %63, align 4
  %567 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %568 = call i32 @CatalogTupleInsert(i32 %566, %struct.TYPE_12__* %567)
  br label %569

569:                                              ; preds = %556, %511
  %570 = call i32 (...) @IsBootstrapProcessingMode()
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %591, label %572

572:                                              ; preds = %569
  %573 = load i64, i64* %64, align 8
  %574 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %575 = call i64 @GETSTRUCT(%struct.TYPE_12__* %574)
  %576 = inttoptr i64 %575 to %struct.TYPE_13__*
  %577 = load i8*, i8** %55, align 8
  %578 = icmp ne i8* %577, null
  br i1 %578, label %579, label %582

579:                                              ; preds = %572
  %580 = load i8*, i8** %55, align 8
  %581 = call i32* @stringToNode(i8* %580)
  br label %583

582:                                              ; preds = %572
  br label %583

583:                                              ; preds = %582, %579
  %584 = phi i32* [ %581, %579 ], [ null, %582 ]
  %585 = load i32*, i32** %67, align 8
  %586 = load i8, i8* %36, align 1
  %587 = load i32, i32* %51, align 4
  %588 = load i32, i32* %65, align 4
  %589 = load i32, i32* %66, align 4
  %590 = call i32 @GenerateTypeDependencies(i64 %573, %struct.TYPE_13__* %576, i32* %584, i32* %585, i8 signext %586, i32 %587, i32 %588, i32 %589)
  br label %591

591:                                              ; preds = %583, %569
  %592 = load i32, i32* @TypeRelationId, align 4
  %593 = load i64, i64* %64, align 8
  %594 = call i32 @InvokeObjectPostCreateHook(i32 %592, i64 %593, i32 0)
  %595 = load i32, i32* %75, align 4
  %596 = load i32, i32* @TypeRelationId, align 4
  %597 = load i64, i64* %64, align 8
  %598 = call i32 @ObjectAddressSet(i32 %595, i32 %596, i64 %597)
  %599 = load i32, i32* %63, align 4
  %600 = load i32, i32* @RowExclusiveLock, align 4
  %601 = call i32 @table_close(i32 %599, i32 %600)
  %602 = load i32, i32* %75, align 4
  %603 = load i8*, i8** %69, align 8
  call void @llvm.stackrestore(i8* %603)
  ret i32 %602
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i64 @OidIsValid(i64) #2

declare dso_local i32 @namestrcpy(i32*, i8*) #2

declare dso_local i64 @NameGetDatum(i32*) #2

declare dso_local i64 @ObjectIdGetDatum(i64) #2

declare dso_local i64 @Int16GetDatum(i32) #2

declare dso_local i64 @BoolGetDatum(i32) #2

declare dso_local i64 @CharGetDatum(i8 signext) #2

declare dso_local i64 @Int32GetDatum(i32) #2

declare dso_local i64 @CStringGetTextDatum(i8*) #2

declare dso_local i32* @get_user_default_acl(i32, i64, i64) #2

declare dso_local i64 @PointerGetDatum(i32*) #2

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local %struct.TYPE_12__* @SearchSysCacheCopy2(i32, i32, i64) #2

declare dso_local i32 @CStringGetDatum(i8*) #2

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_12__*) #2

declare dso_local i64 @GETSTRUCT(%struct.TYPE_12__*) #2

declare dso_local i32 @aclcheck_error(i32, i32, i8*) #2

declare dso_local i32 @elog(i32, i8*) #2

declare dso_local %struct.TYPE_12__* @heap_modify_tuple(%struct.TYPE_12__*, i32, i64*, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_12__*) #2

declare dso_local i64 @GetNewOidWithIndex(i32, i32, i32) #2

declare dso_local %struct.TYPE_12__* @heap_form_tuple(i32, i64*, i32*) #2

declare dso_local i32 @CatalogTupleInsert(i32, %struct.TYPE_12__*) #2

declare dso_local i32 @IsBootstrapProcessingMode(...) #2

declare dso_local i32 @GenerateTypeDependencies(i64, %struct.TYPE_13__*, i32*, i32*, i8 signext, i32, i32, i32) #2

declare dso_local i32* @stringToNode(i8*) #2

declare dso_local i32 @InvokeObjectPostCreateHook(i32, i64, i32) #2

declare dso_local i32 @ObjectAddressSet(i32, i32, i64) #2

declare dso_local i32 @table_close(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
