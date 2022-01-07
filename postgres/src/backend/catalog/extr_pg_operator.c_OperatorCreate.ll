; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_operator.c_OperatorCreate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_operator.c_OperatorCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@Natts_pg_operator = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"\22%s\22 is not a valid operator name\00", align 1
@ERRCODE_INVALID_FUNCTION_DEFINITION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"only binary operators can have commutators\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"only binary operators can have join selectivity\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"only binary operators can merge join\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"only binary operators can hash\00", align 1
@BOOLOID = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"only boolean operators can have negators\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"only boolean operators can have restriction selectivity\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"only boolean operators can have join selectivity\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"only boolean operators can merge join\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"only boolean operators can hash\00", align 1
@ERRCODE_DUPLICATE_FUNCTION = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"operator %s already exists\00", align 1
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@OBJECT_OPERATOR = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@Anum_pg_operator_oprname = common dso_local global i32 0, align 4
@Anum_pg_operator_oprnamespace = common dso_local global i32 0, align 4
@Anum_pg_operator_oprowner = common dso_local global i32 0, align 4
@Anum_pg_operator_oprkind = common dso_local global i32 0, align 4
@Anum_pg_operator_oprcanmerge = common dso_local global i32 0, align 4
@Anum_pg_operator_oprcanhash = common dso_local global i32 0, align 4
@Anum_pg_operator_oprleft = common dso_local global i32 0, align 4
@Anum_pg_operator_oprright = common dso_local global i32 0, align 4
@Anum_pg_operator_oprresult = common dso_local global i32 0, align 4
@Anum_pg_operator_oprcom = common dso_local global i32 0, align 4
@Anum_pg_operator_oprnegate = common dso_local global i32 0, align 4
@Anum_pg_operator_oprcode = common dso_local global i32 0, align 4
@Anum_pg_operator_oprrest = common dso_local global i32 0, align 4
@Anum_pg_operator_oprjoin = common dso_local global i32 0, align 4
@OperatorRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@OPEROID = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [36 x i8] c"cache lookup failed for operator %u\00", align 1
@Anum_pg_operator_oid = common dso_local global i32 0, align 4
@OperatorOidIndexId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OperatorCreate(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32* %5, i32* %6, i64 %7, i64 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_10__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i64 %1, i64* %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i64 %7, i64* %19, align 8
  store i64 %8, i64* %20, align 8
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %39 = load i32, i32* @Natts_pg_operator, align 4
  %40 = zext i32 %39 to i64
  %41 = call i8* @llvm.stacksave()
  store i8* %41, i8** %26, align 8
  %42 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %27, align 8
  %43 = load i32, i32* @Natts_pg_operator, align 4
  %44 = zext i32 %43 to i64
  %45 = alloca i32, i64 %44, align 16
  store i64 %44, i64* %28, align 8
  %46 = load i32, i32* @Natts_pg_operator, align 4
  %47 = zext i32 %46 to i64
  %48 = alloca i64, i64 %47, align 16
  store i64 %47, i64* %29, align 8
  store i32 0, i32* %35, align 4
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 @validOperatorName(i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %11
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i32, i32* @ERRCODE_INVALID_NAME, align 4
  %55 = call i32 @errcode(i32 %54)
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %56)
  %58 = call i32 @ereport(i32 %53, i32 %57)
  br label %59

59:                                               ; preds = %52, %11
  %60 = load i64, i64* %14, align 8
  %61 = call i64 @OidIsValid(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i64, i64* %15, align 8
  %65 = call i64 @OidIsValid(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %105, label %67

67:                                               ; preds = %63, %59
  %68 = load i32*, i32** %17, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32, i32* @ERROR, align 4
  %72 = load i32, i32* @ERRCODE_INVALID_FUNCTION_DEFINITION, align 4
  %73 = call i32 @errcode(i32 %72)
  %74 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %75 = call i32 @ereport(i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %70, %67
  %77 = load i64, i64* %20, align 8
  %78 = call i64 @OidIsValid(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* @ERROR, align 4
  %82 = load i32, i32* @ERRCODE_INVALID_FUNCTION_DEFINITION, align 4
  %83 = call i32 @errcode(i32 %82)
  %84 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %85 = call i32 @ereport(i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %80, %76
  %87 = load i32, i32* %21, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i32, i32* @ERROR, align 4
  %91 = load i32, i32* @ERRCODE_INVALID_FUNCTION_DEFINITION, align 4
  %92 = call i32 @errcode(i32 %91)
  %93 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %94 = call i32 @ereport(i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %89, %86
  %96 = load i32, i32* %22, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i32, i32* @ERROR, align 4
  %100 = load i32, i32* @ERRCODE_INVALID_FUNCTION_DEFINITION, align 4
  %101 = call i32 @errcode(i32 %100)
  %102 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %103 = call i32 @ereport(i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %98, %95
  br label %105

105:                                              ; preds = %104, %63
  %106 = load i64, i64* %16, align 8
  %107 = call i64 @get_func_rettype(i64 %106)
  store i64 %107, i64* %32, align 8
  %108 = load i64, i64* %32, align 8
  %109 = load i64, i64* @BOOLOID, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %159

111:                                              ; preds = %105
  %112 = load i32*, i32** %18, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load i32, i32* @ERROR, align 4
  %116 = load i32, i32* @ERRCODE_INVALID_FUNCTION_DEFINITION, align 4
  %117 = call i32 @errcode(i32 %116)
  %118 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %119 = call i32 @ereport(i32 %115, i32 %118)
  br label %120

120:                                              ; preds = %114, %111
  %121 = load i64, i64* %19, align 8
  %122 = call i64 @OidIsValid(i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = load i32, i32* @ERROR, align 4
  %126 = load i32, i32* @ERRCODE_INVALID_FUNCTION_DEFINITION, align 4
  %127 = call i32 @errcode(i32 %126)
  %128 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0))
  %129 = call i32 @ereport(i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %124, %120
  %131 = load i64, i64* %20, align 8
  %132 = call i64 @OidIsValid(i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i32, i32* @ERROR, align 4
  %136 = load i32, i32* @ERRCODE_INVALID_FUNCTION_DEFINITION, align 4
  %137 = call i32 @errcode(i32 %136)
  %138 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  %139 = call i32 @ereport(i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %134, %130
  %141 = load i32, i32* %21, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load i32, i32* @ERROR, align 4
  %145 = load i32, i32* @ERRCODE_INVALID_FUNCTION_DEFINITION, align 4
  %146 = call i32 @errcode(i32 %145)
  %147 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %148 = call i32 @ereport(i32 %144, i32 %147)
  br label %149

149:                                              ; preds = %143, %140
  %150 = load i32, i32* %22, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = load i32, i32* @ERROR, align 4
  %154 = load i32, i32* @ERRCODE_INVALID_FUNCTION_DEFINITION, align 4
  %155 = call i32 @errcode(i32 %154)
  %156 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %157 = call i32 @ereport(i32 %153, i32 %156)
  br label %158

158:                                              ; preds = %152, %149
  br label %159

159:                                              ; preds = %158, %105
  %160 = load i8*, i8** %12, align 8
  %161 = load i64, i64* %13, align 8
  %162 = load i64, i64* %14, align 8
  %163 = load i64, i64* %15, align 8
  %164 = call i64 @OperatorGet(i8* %160, i64 %161, i64 %162, i64 %163, i32* %31)
  store i64 %164, i64* %30, align 8
  %165 = load i32, i32* %31, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %159
  %168 = load i32, i32* @ERROR, align 4
  %169 = load i32, i32* @ERRCODE_DUPLICATE_FUNCTION, align 4
  %170 = call i32 @errcode(i32 %169)
  %171 = load i8*, i8** %12, align 8
  %172 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i8* %171)
  %173 = call i32 @ereport(i32 %168, i32 %172)
  br label %174

174:                                              ; preds = %167, %159
  %175 = load i64, i64* %30, align 8
  %176 = call i64 @OidIsValid(i64 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %174
  %179 = load i64, i64* %30, align 8
  %180 = call i64 (...) @GetUserId()
  %181 = call i32 @pg_oper_ownercheck(i64 %179, i64 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %178
  %184 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %185 = load i32, i32* @OBJECT_OPERATOR, align 4
  %186 = load i8*, i8** %12, align 8
  %187 = call i32 @aclcheck_error(i32 %184, i32 %185, i8* %186)
  br label %188

188:                                              ; preds = %183, %178, %174
  %189 = load i32*, i32** %17, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %220

191:                                              ; preds = %188
  %192 = load i32*, i32** %17, align 8
  %193 = load i64, i64* %15, align 8
  %194 = load i64, i64* %14, align 8
  %195 = load i8*, i8** %12, align 8
  %196 = load i64, i64* %13, align 8
  %197 = load i64, i64* %14, align 8
  %198 = load i64, i64* %15, align 8
  %199 = call i64 @get_other_operator(i32* %192, i64 %193, i64 %194, i8* %195, i64 %196, i64 %197, i64 %198, i32 1)
  store i64 %199, i64* %33, align 8
  %200 = load i64, i64* %33, align 8
  %201 = call i64 @OidIsValid(i64 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %191
  %204 = load i64, i64* %33, align 8
  %205 = call i64 (...) @GetUserId()
  %206 = call i32 @pg_oper_ownercheck(i64 %204, i64 %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %214, label %208

208:                                              ; preds = %203
  %209 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %210 = load i32, i32* @OBJECT_OPERATOR, align 4
  %211 = load i32*, i32** %17, align 8
  %212 = call i8* @NameListToString(i32* %211)
  %213 = call i32 @aclcheck_error(i32 %209, i32 %210, i8* %212)
  br label %214

214:                                              ; preds = %208, %203, %191
  %215 = load i64, i64* %33, align 8
  %216 = call i64 @OidIsValid(i64 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %214
  store i32 1, i32* %35, align 4
  br label %219

219:                                              ; preds = %218, %214
  br label %222

220:                                              ; preds = %188
  %221 = load i64, i64* @InvalidOid, align 8
  store i64 %221, i64* %33, align 8
  br label %222

222:                                              ; preds = %220, %219
  %223 = load i32*, i32** %18, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %225, label %249

225:                                              ; preds = %222
  %226 = load i32*, i32** %18, align 8
  %227 = load i64, i64* %14, align 8
  %228 = load i64, i64* %15, align 8
  %229 = load i8*, i8** %12, align 8
  %230 = load i64, i64* %13, align 8
  %231 = load i64, i64* %14, align 8
  %232 = load i64, i64* %15, align 8
  %233 = call i64 @get_other_operator(i32* %226, i64 %227, i64 %228, i8* %229, i64 %230, i64 %231, i64 %232, i32 0)
  store i64 %233, i64* %34, align 8
  %234 = load i64, i64* %34, align 8
  %235 = call i64 @OidIsValid(i64 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %248

237:                                              ; preds = %225
  %238 = load i64, i64* %34, align 8
  %239 = call i64 (...) @GetUserId()
  %240 = call i32 @pg_oper_ownercheck(i64 %238, i64 %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %248, label %242

242:                                              ; preds = %237
  %243 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %244 = load i32, i32* @OBJECT_OPERATOR, align 4
  %245 = load i32*, i32** %18, align 8
  %246 = call i8* @NameListToString(i32* %245)
  %247 = call i32 @aclcheck_error(i32 %243, i32 %244, i8* %246)
  br label %248

248:                                              ; preds = %242, %237, %225
  br label %251

249:                                              ; preds = %222
  %250 = load i64, i64* @InvalidOid, align 8
  store i64 %250, i64* %34, align 8
  br label %251

251:                                              ; preds = %249, %248
  store i32 0, i32* %37, align 4
  br label %252

252:                                              ; preds = %266, %251
  %253 = load i32, i32* %37, align 4
  %254 = load i32, i32* @Natts_pg_operator, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %269

256:                                              ; preds = %252
  %257 = load i32, i32* %37, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i64, i64* %48, i64 %258
  store i64 0, i64* %259, align 8
  %260 = load i32, i32* %37, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %45, i64 %261
  store i32 1, i32* %262, align 4
  %263 = load i32, i32* %37, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %42, i64 %264
  store i32 0, i32* %265, align 4
  br label %266

266:                                              ; preds = %256
  %267 = load i32, i32* %37, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %37, align 4
  br label %252

269:                                              ; preds = %252
  %270 = load i8*, i8** %12, align 8
  %271 = call i32 @namestrcpy(i32* %36, i8* %270)
  %272 = call i64 @NameGetDatum(i32* %36)
  %273 = load i32, i32* @Anum_pg_operator_oprname, align 4
  %274 = sub nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i64, i64* %48, i64 %275
  store i64 %272, i64* %276, align 8
  %277 = load i64, i64* %13, align 8
  %278 = call i64 @ObjectIdGetDatum(i64 %277)
  %279 = load i32, i32* @Anum_pg_operator_oprnamespace, align 4
  %280 = sub nsw i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i64, i64* %48, i64 %281
  store i64 %278, i64* %282, align 8
  %283 = call i64 (...) @GetUserId()
  %284 = call i64 @ObjectIdGetDatum(i64 %283)
  %285 = load i32, i32* @Anum_pg_operator_oprowner, align 4
  %286 = sub nsw i32 %285, 1
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i64, i64* %48, i64 %287
  store i64 %284, i64* %288, align 8
  %289 = load i64, i64* %14, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %269
  %292 = load i64, i64* %15, align 8
  %293 = icmp ne i64 %292, 0
  %294 = zext i1 %293 to i64
  %295 = select i1 %293, i32 98, i32 114
  br label %297

296:                                              ; preds = %269
  br label %297

297:                                              ; preds = %296, %291
  %298 = phi i32 [ %295, %291 ], [ 108, %296 ]
  %299 = trunc i32 %298 to i8
  %300 = call i64 @CharGetDatum(i8 signext %299)
  %301 = load i32, i32* @Anum_pg_operator_oprkind, align 4
  %302 = sub nsw i32 %301, 1
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i64, i64* %48, i64 %303
  store i64 %300, i64* %304, align 8
  %305 = load i32, i32* %21, align 4
  %306 = call i64 @BoolGetDatum(i32 %305)
  %307 = load i32, i32* @Anum_pg_operator_oprcanmerge, align 4
  %308 = sub nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i64, i64* %48, i64 %309
  store i64 %306, i64* %310, align 8
  %311 = load i32, i32* %22, align 4
  %312 = call i64 @BoolGetDatum(i32 %311)
  %313 = load i32, i32* @Anum_pg_operator_oprcanhash, align 4
  %314 = sub nsw i32 %313, 1
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i64, i64* %48, i64 %315
  store i64 %312, i64* %316, align 8
  %317 = load i64, i64* %14, align 8
  %318 = call i64 @ObjectIdGetDatum(i64 %317)
  %319 = load i32, i32* @Anum_pg_operator_oprleft, align 4
  %320 = sub nsw i32 %319, 1
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i64, i64* %48, i64 %321
  store i64 %318, i64* %322, align 8
  %323 = load i64, i64* %15, align 8
  %324 = call i64 @ObjectIdGetDatum(i64 %323)
  %325 = load i32, i32* @Anum_pg_operator_oprright, align 4
  %326 = sub nsw i32 %325, 1
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i64, i64* %48, i64 %327
  store i64 %324, i64* %328, align 8
  %329 = load i64, i64* %32, align 8
  %330 = call i64 @ObjectIdGetDatum(i64 %329)
  %331 = load i32, i32* @Anum_pg_operator_oprresult, align 4
  %332 = sub nsw i32 %331, 1
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i64, i64* %48, i64 %333
  store i64 %330, i64* %334, align 8
  %335 = load i64, i64* %33, align 8
  %336 = call i64 @ObjectIdGetDatum(i64 %335)
  %337 = load i32, i32* @Anum_pg_operator_oprcom, align 4
  %338 = sub nsw i32 %337, 1
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i64, i64* %48, i64 %339
  store i64 %336, i64* %340, align 8
  %341 = load i64, i64* %34, align 8
  %342 = call i64 @ObjectIdGetDatum(i64 %341)
  %343 = load i32, i32* @Anum_pg_operator_oprnegate, align 4
  %344 = sub nsw i32 %343, 1
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i64, i64* %48, i64 %345
  store i64 %342, i64* %346, align 8
  %347 = load i64, i64* %16, align 8
  %348 = call i64 @ObjectIdGetDatum(i64 %347)
  %349 = load i32, i32* @Anum_pg_operator_oprcode, align 4
  %350 = sub nsw i32 %349, 1
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i64, i64* %48, i64 %351
  store i64 %348, i64* %352, align 8
  %353 = load i64, i64* %19, align 8
  %354 = call i64 @ObjectIdGetDatum(i64 %353)
  %355 = load i32, i32* @Anum_pg_operator_oprrest, align 4
  %356 = sub nsw i32 %355, 1
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i64, i64* %48, i64 %357
  store i64 %354, i64* %358, align 8
  %359 = load i64, i64* %20, align 8
  %360 = call i64 @ObjectIdGetDatum(i64 %359)
  %361 = load i32, i32* @Anum_pg_operator_oprjoin, align 4
  %362 = sub nsw i32 %361, 1
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i64, i64* %48, i64 %363
  store i64 %360, i64* %364, align 8
  %365 = load i32, i32* @OperatorRelationId, align 4
  %366 = load i32, i32* @RowExclusiveLock, align 4
  %367 = call i32 @table_open(i32 %365, i32 %366)
  store i32 %367, i32* %23, align 4
  %368 = load i64, i64* %30, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %396

370:                                              ; preds = %297
  store i32 1, i32* %25, align 4
  %371 = load i32, i32* @OPEROID, align 4
  %372 = load i64, i64* %30, align 8
  %373 = call i64 @ObjectIdGetDatum(i64 %372)
  %374 = call %struct.TYPE_10__* @SearchSysCacheCopy1(i32 %371, i64 %373)
  store %struct.TYPE_10__* %374, %struct.TYPE_10__** %24, align 8
  %375 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %376 = call i32 @HeapTupleIsValid(%struct.TYPE_10__* %375)
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %382, label %378

378:                                              ; preds = %370
  %379 = load i32, i32* @ERROR, align 4
  %380 = load i64, i64* %30, align 8
  %381 = call i32 @elog(i32 %379, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i64 %380)
  br label %382

382:                                              ; preds = %378, %370
  %383 = load i32, i32* @Anum_pg_operator_oid, align 4
  %384 = sub nsw i32 %383, 1
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %45, i64 %385
  store i32 0, i32* %386, align 4
  %387 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %388 = load i32, i32* %23, align 4
  %389 = call i32 @RelationGetDescr(i32 %388)
  %390 = call %struct.TYPE_10__* @heap_modify_tuple(%struct.TYPE_10__* %387, i32 %389, i64* %48, i32* %42, i32* %45)
  store %struct.TYPE_10__* %390, %struct.TYPE_10__** %24, align 8
  %391 = load i32, i32* %23, align 4
  %392 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %393 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %392, i32 0, i32 0
  %394 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %395 = call i32 @CatalogTupleUpdate(i32 %391, i32* %393, %struct.TYPE_10__* %394)
  br label %413

396:                                              ; preds = %297
  store i32 0, i32* %25, align 4
  %397 = load i32, i32* %23, align 4
  %398 = load i32, i32* @OperatorOidIndexId, align 4
  %399 = load i32, i32* @Anum_pg_operator_oid, align 4
  %400 = call i64 @GetNewOidWithIndex(i32 %397, i32 %398, i32 %399)
  store i64 %400, i64* %30, align 8
  %401 = load i64, i64* %30, align 8
  %402 = call i64 @ObjectIdGetDatum(i64 %401)
  %403 = load i32, i32* @Anum_pg_operator_oid, align 4
  %404 = sub nsw i32 %403, 1
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i64, i64* %48, i64 %405
  store i64 %402, i64* %406, align 8
  %407 = load i32, i32* %23, align 4
  %408 = call i32 @RelationGetDescr(i32 %407)
  %409 = call %struct.TYPE_10__* @heap_form_tuple(i32 %408, i64* %48, i32* %42)
  store %struct.TYPE_10__* %409, %struct.TYPE_10__** %24, align 8
  %410 = load i32, i32* %23, align 4
  %411 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %412 = call i32 @CatalogTupleInsert(i32 %410, %struct.TYPE_10__* %411)
  br label %413

413:                                              ; preds = %396, %382
  %414 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %415 = load i32, i32* %25, align 4
  %416 = call i32 @makeOperatorDependencies(%struct.TYPE_10__* %414, i32 %415)
  store i32 %416, i32* %38, align 4
  %417 = load i32, i32* @OperatorRelationId, align 4
  %418 = load i64, i64* %30, align 8
  %419 = call i32 @InvokeObjectPostCreateHook(i32 %417, i64 %418, i32 0)
  %420 = load i32, i32* %23, align 4
  %421 = load i32, i32* @RowExclusiveLock, align 4
  %422 = call i32 @table_close(i32 %420, i32 %421)
  %423 = load i32, i32* %35, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %427

425:                                              ; preds = %413
  %426 = load i64, i64* %30, align 8
  store i64 %426, i64* %33, align 8
  br label %427

427:                                              ; preds = %425, %413
  %428 = load i64, i64* %33, align 8
  %429 = call i64 @OidIsValid(i64 %428)
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %435, label %431

431:                                              ; preds = %427
  %432 = load i64, i64* %34, align 8
  %433 = call i64 @OidIsValid(i64 %432)
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %440

435:                                              ; preds = %431, %427
  %436 = load i64, i64* %30, align 8
  %437 = load i64, i64* %33, align 8
  %438 = load i64, i64* %34, align 8
  %439 = call i32 @OperatorUpd(i64 %436, i64 %437, i64 %438, i32 0)
  br label %440

440:                                              ; preds = %435, %431
  %441 = load i32, i32* %38, align 4
  %442 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %442)
  ret i32 %441
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @validOperatorName(i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i64 @OidIsValid(i64) #2

declare dso_local i64 @get_func_rettype(i64) #2

declare dso_local i64 @OperatorGet(i8*, i64, i64, i64, i32*) #2

declare dso_local i32 @pg_oper_ownercheck(i64, i64) #2

declare dso_local i64 @GetUserId(...) #2

declare dso_local i32 @aclcheck_error(i32, i32, i8*) #2

declare dso_local i64 @get_other_operator(i32*, i64, i64, i8*, i64, i64, i64, i32) #2

declare dso_local i8* @NameListToString(i32*) #2

declare dso_local i32 @namestrcpy(i32*, i8*) #2

declare dso_local i64 @NameGetDatum(i32*) #2

declare dso_local i64 @ObjectIdGetDatum(i64) #2

declare dso_local i64 @CharGetDatum(i8 signext) #2

declare dso_local i64 @BoolGetDatum(i32) #2

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local %struct.TYPE_10__* @SearchSysCacheCopy1(i32, i64) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_10__*) #2

declare dso_local i32 @elog(i32, i8*, i64) #2

declare dso_local %struct.TYPE_10__* @heap_modify_tuple(%struct.TYPE_10__*, i32, i64*, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_10__*) #2

declare dso_local i64 @GetNewOidWithIndex(i32, i32, i32) #2

declare dso_local %struct.TYPE_10__* @heap_form_tuple(i32, i64*, i32*) #2

declare dso_local i32 @CatalogTupleInsert(i32, %struct.TYPE_10__*) #2

declare dso_local i32 @makeOperatorDependencies(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @InvokeObjectPostCreateHook(i32, i64, i32) #2

declare dso_local i32 @table_close(i32, i32) #2

declare dso_local i32 @OperatorUpd(i64, i64, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
