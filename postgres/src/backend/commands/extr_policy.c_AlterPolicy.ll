; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_policy.c_AlterPolicy.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_policy.c_AlterPolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, i64, i32 }
%struct.TYPE_31__ = type { i32*, i32*, i32, i32, i32* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_30__ = type { i8* }

@NIL = common dso_local global i32* null, align 8
@Natts_pg_policy = common dso_local global i32 0, align 4
@OIDOID = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@RangeVarCallbackForPolicy = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@EXPR_KIND_POLICY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"POLICY\00", align 1
@PolicyRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_policy_polrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_policy_polname = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@PolicyPolrelidPolnameIndexId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"policy \22%s\22 for table \22%s\22 does not exist\00", align 1
@Anum_pg_policy_polcmd = common dso_local global i32 0, align 4
@ACL_SELECT_CHR = common dso_local global i8 0, align 1
@ACL_DELETE_CHR = common dso_local global i8 0, align 1
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"only USING expression allowed for SELECT, DELETE\00", align 1
@ACL_INSERT_CHR = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"only WITH CHECK expression allowed for INSERT\00", align 1
@Anum_pg_policy_polroles = common dso_local global i32 0, align 4
@Anum_pg_policy_polqual = common dso_local global i32 0, align 4
@Anum_pg_policy_polwithcheck = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i32 0, align 4
@DEPENDENCY_AUTO = common dso_local global i32 0, align 4
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4
@AuthIdRelationId = common dso_local global i32 0, align 4
@ACL_ID_PUBLIC = common dso_local global i64 0, align 8
@SHARED_DEPENDENCY_POLICY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AlterPolicy(%struct.TYPE_28__* noalias sret %0, %struct.TYPE_31__* %1) #0 {
  %3 = alloca %struct.TYPE_31__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [2 x i32], align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_29__*, align 8
  %18 = alloca %struct.TYPE_29__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_28__, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca %struct.TYPE_27__*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca %struct.TYPE_27__*, align 8
  %32 = alloca i8**, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i8*, align 8
  %39 = alloca %struct.TYPE_27__*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i8*, align 8
  %43 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %3, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %44 = load i32*, i32** @NIL, align 8
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** @NIL, align 8
  store i32* %45, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %46 = load i32, i32* @Natts_pg_policy, align 4
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %19, align 8
  %49 = alloca i32, i64 %47, align 16
  store i64 %47, i64* %20, align 8
  %50 = load i32, i32* @Natts_pg_policy, align 4
  %51 = zext i32 %50 to i64
  %52 = alloca i32, i64 %51, align 16
  store i64 %51, i64* %21, align 8
  %53 = load i32, i32* @Natts_pg_policy, align 4
  %54 = zext i32 %53 to i64
  %55 = alloca i32, i64 %54, align 16
  store i64 %54, i64* %22, align 8
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %2
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = call i32* @policy_role_list_to_array(i32* %63, i32* %9)
  store i32* %64, i32** %8, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @OIDOID, align 4
  %68 = call i32* @construct_array(i32* %65, i32 %66, i32 %67, i32 8, i32 1, i8 signext 105)
  store i32* %68, i32** %10, align 8
  br label %69

69:                                               ; preds = %60, %2
  %70 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @AccessExclusiveLock, align 4
  %74 = load i32, i32* @RangeVarCallbackForPolicy, align 4
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %76 = bitcast %struct.TYPE_31__* %75 to i8*
  %77 = call i8* @RangeVarGetRelidExtended(i32 %72, i32 %73, i32 0, i32 %74, i8* %76)
  store i8* %77, i8** %7, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* @NoLock, align 4
  %80 = call i32 @relation_open(i8* %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %109

85:                                               ; preds = %69
  %86 = call %struct.TYPE_27__* @make_parsestate(i32* null)
  store %struct.TYPE_27__* %86, %struct.TYPE_27__** %29, align 8
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %29, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @AccessShareLock, align 4
  %90 = call i32* @addRangeTableEntryForRelation(%struct.TYPE_27__* %87, i32 %88, i32 %89, i32* null, i32 0, i32 0)
  store i32* %90, i32** %28, align 8
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %29, align 8
  %92 = load i32*, i32** %28, align 8
  %93 = call i32 @addRTEtoQuery(%struct.TYPE_27__* %91, i32* %92, i32 0, i32 1, i32 1)
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %29, align 8
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @copyObject(i32* %97)
  %99 = load i32, i32* @EXPR_KIND_POLICY, align 4
  %100 = call i32* @transformWhereClause(%struct.TYPE_27__* %94, i32 %98, i32 %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %100, i32** %13, align 8
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %29, align 8
  %102 = load i32*, i32** %13, align 8
  %103 = call i32 @assign_expr_collations(%struct.TYPE_27__* %101, i32* %102)
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %29, align 8
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  store i32* %106, i32** %11, align 8
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %29, align 8
  %108 = call i32 @free_parsestate(%struct.TYPE_27__* %107)
  br label %109

109:                                              ; preds = %85, %69
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %138

114:                                              ; preds = %109
  %115 = call %struct.TYPE_27__* @make_parsestate(i32* null)
  store %struct.TYPE_27__* %115, %struct.TYPE_27__** %31, align 8
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %31, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @AccessShareLock, align 4
  %119 = call i32* @addRangeTableEntryForRelation(%struct.TYPE_27__* %116, i32 %117, i32 %118, i32* null, i32 0, i32 0)
  store i32* %119, i32** %30, align 8
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %31, align 8
  %121 = load i32*, i32** %30, align 8
  %122 = call i32 @addRTEtoQuery(%struct.TYPE_27__* %120, i32* %121, i32 0, i32 1, i32 1)
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %31, align 8
  %124 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @copyObject(i32* %126)
  %128 = load i32, i32* @EXPR_KIND_POLICY, align 4
  %129 = call i32* @transformWhereClause(%struct.TYPE_27__* %123, i32 %127, i32 %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %129, i32** %14, align 8
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %31, align 8
  %131 = load i32*, i32** %14, align 8
  %132 = call i32 @assign_expr_collations(%struct.TYPE_27__* %130, i32* %131)
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %31, align 8
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  store i32* %135, i32** %12, align 8
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** %31, align 8
  %137 = call i32 @free_parsestate(%struct.TYPE_27__* %136)
  br label %138

138:                                              ; preds = %114, %109
  %139 = mul nuw i64 4, %47
  %140 = trunc i64 %139 to i32
  %141 = call i32 @memset(i32* %49, i32 0, i32 %140)
  %142 = mul nuw i64 4, %54
  %143 = trunc i64 %142 to i32
  %144 = call i32 @memset(i32* %55, i32 0, i32 %143)
  %145 = mul nuw i64 4, %51
  %146 = trunc i64 %145 to i32
  %147 = call i32 @memset(i32* %52, i32 0, i32 %146)
  %148 = load i32, i32* @PolicyRelationId, align 4
  %149 = load i32, i32* @RowExclusiveLock, align 4
  %150 = call i32 @table_open(i32 %148, i32 %149)
  store i32 %150, i32* %4, align 4
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %152 = load i32, i32* @Anum_pg_policy_polrelid, align 4
  %153 = load i32, i32* @BTEqualStrategyNumber, align 4
  %154 = load i32, i32* @F_OIDEQ, align 4
  %155 = load i8*, i8** %7, align 8
  %156 = call i32 @ObjectIdGetDatum(i8* %155)
  %157 = call i32 @ScanKeyInit(i32* %151, i32 %152, i32 %153, i32 %154, i32 %156)
  %158 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %159 = load i32, i32* @Anum_pg_policy_polname, align 4
  %160 = load i32, i32* @BTEqualStrategyNumber, align 4
  %161 = load i32, i32* @F_NAMEEQ, align 4
  %162 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @CStringGetDatum(i32 %164)
  %166 = call i32 @ScanKeyInit(i32* %158, i32 %159, i32 %160, i32 %161, i32 %165)
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* @PolicyPolrelidPolnameIndexId, align 4
  %169 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %170 = call i32 @systable_beginscan(i32 %167, i32 %168, i32 1, i32* null, i32 2, i32* %169)
  store i32 %170, i32* %16, align 4
  %171 = load i32, i32* %16, align 4
  %172 = call %struct.TYPE_29__* @systable_getnext(i32 %171)
  store %struct.TYPE_29__* %172, %struct.TYPE_29__** %17, align 8
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %174 = call i32 @HeapTupleIsValid(%struct.TYPE_29__* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %187, label %176

176:                                              ; preds = %138
  %177 = load i32, i32* @ERROR, align 4
  %178 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %179 = call i32 @errcode(i32 %178)
  %180 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @RelationGetRelationName(i32 %183)
  %185 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %182, i32 %184)
  %186 = call i32 @ereport(i32 %177, i32 %185)
  br label %187

187:                                              ; preds = %176, %138
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %189 = load i32, i32* @Anum_pg_policy_polcmd, align 4
  %190 = load i32, i32* %4, align 4
  %191 = call i32 @RelationGetDescr(i32 %190)
  %192 = call i32 @heap_getattr(%struct.TYPE_29__* %188, i32 %189, i32 %191, i32* %26)
  store i32 %192, i32* %24, align 4
  %193 = load i32, i32* %26, align 4
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = call i32 @Assert(i32 %196)
  %198 = load i32, i32* %24, align 4
  %199 = call signext i8 @DatumGetChar(i32 %198)
  store i8 %199, i8* %25, align 1
  %200 = load i8, i8* %25, align 1
  %201 = sext i8 %200 to i32
  %202 = load i8, i8* @ACL_SELECT_CHR, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %201, %203
  br i1 %204, label %211, label %205

205:                                              ; preds = %187
  %206 = load i8, i8* %25, align 1
  %207 = sext i8 %206 to i32
  %208 = load i8, i8* @ACL_DELETE_CHR, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %207, %209
  br i1 %210, label %211, label %222

211:                                              ; preds = %205, %187
  %212 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %222

216:                                              ; preds = %211
  %217 = load i32, i32* @ERROR, align 4
  %218 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %219 = call i32 @errcode(i32 %218)
  %220 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %221 = call i32 @ereport(i32 %217, i32 %220)
  br label %222

222:                                              ; preds = %216, %211, %205
  %223 = load i8, i8* %25, align 1
  %224 = sext i8 %223 to i32
  %225 = load i8, i8* @ACL_INSERT_CHR, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp eq i32 %224, %226
  br i1 %227, label %228, label %239

228:                                              ; preds = %222
  %229 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %233, label %239

233:                                              ; preds = %228
  %234 = load i32, i32* @ERROR, align 4
  %235 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %236 = call i32 @errcode(i32 %235)
  %237 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %238 = call i32 @ereport(i32 %234, i32 %237)
  br label %239

239:                                              ; preds = %233, %228, %222
  %240 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %241 = call i64 @GETSTRUCT(%struct.TYPE_29__* %240)
  %242 = inttoptr i64 %241 to %struct.TYPE_30__*
  %243 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %242, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  store i8* %244, i8** %5, align 8
  %245 = load i32*, i32** %10, align 8
  %246 = icmp ne i32* %245, null
  br i1 %246, label %247, label %258

247:                                              ; preds = %239
  %248 = load i32, i32* @Anum_pg_policy_polroles, align 4
  %249 = sub nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %55, i64 %250
  store i32 1, i32* %251, align 4
  %252 = load i32*, i32** %10, align 8
  %253 = call i32 @PointerGetDatum(i32* %252)
  %254 = load i32, i32* @Anum_pg_policy_polroles, align 4
  %255 = sub nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %49, i64 %256
  store i32 %253, i32* %257, align 4
  br label %303

258:                                              ; preds = %239
  %259 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %260 = load i32, i32* @Anum_pg_policy_polroles, align 4
  %261 = load i32, i32* %4, align 4
  %262 = call i32 @RelationGetDescr(i32 %261)
  %263 = call i32 @heap_getattr(%struct.TYPE_29__* %259, i32 %260, i32 %262, i32* %34)
  store i32 %263, i32* %33, align 4
  %264 = load i32, i32* %34, align 4
  %265 = icmp ne i32 %264, 0
  %266 = xor i1 %265, true
  %267 = zext i1 %266 to i32
  %268 = call i32 @Assert(i32 %267)
  %269 = load i32, i32* %33, align 4
  %270 = call i32* @DatumGetArrayTypePCopy(i32 %269)
  store i32* %270, i32** %35, align 8
  %271 = load i32*, i32** %35, align 8
  %272 = call i64 @ARR_DATA_PTR(i32* %271)
  %273 = inttoptr i64 %272 to i8**
  store i8** %273, i8*** %32, align 8
  %274 = load i32*, i32** %35, align 8
  %275 = call i32* @ARR_DIMS(i32* %274)
  %276 = getelementptr inbounds i32, i32* %275, i64 0
  %277 = load i32, i32* %276, align 4
  store i32 %277, i32* %9, align 4
  %278 = load i32, i32* %9, align 4
  %279 = sext i32 %278 to i64
  %280 = mul i64 %279, 4
  %281 = trunc i64 %280 to i32
  %282 = call i64 @palloc(i32 %281)
  %283 = inttoptr i64 %282 to i32*
  store i32* %283, i32** %8, align 8
  store i32 0, i32* %27, align 4
  br label %284

284:                                              ; preds = %299, %258
  %285 = load i32, i32* %27, align 4
  %286 = load i32, i32* %9, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %302

288:                                              ; preds = %284
  %289 = load i8**, i8*** %32, align 8
  %290 = load i32, i32* %27, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8*, i8** %289, i64 %291
  %293 = load i8*, i8** %292, align 8
  %294 = call i32 @ObjectIdGetDatum(i8* %293)
  %295 = load i32*, i32** %8, align 8
  %296 = load i32, i32* %27, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  store i32 %294, i32* %298, align 4
  br label %299

299:                                              ; preds = %288
  %300 = load i32, i32* %27, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %27, align 4
  br label %284

302:                                              ; preds = %284
  br label %303

303:                                              ; preds = %302, %247
  %304 = load i32*, i32** %13, align 8
  %305 = icmp ne i32* %304, null
  br i1 %305, label %306, label %318

306:                                              ; preds = %303
  %307 = load i32, i32* @Anum_pg_policy_polqual, align 4
  %308 = sub nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %55, i64 %309
  store i32 1, i32* %310, align 4
  %311 = load i32*, i32** %13, align 8
  %312 = call i32 @nodeToString(i32* %311)
  %313 = call i32 @CStringGetTextDatum(i32 %312)
  %314 = load i32, i32* @Anum_pg_policy_polqual, align 4
  %315 = sub nsw i32 %314, 1
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %49, i64 %316
  store i32 %313, i32* %317, align 4
  br label %342

318:                                              ; preds = %303
  %319 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %320 = load i32, i32* @Anum_pg_policy_polqual, align 4
  %321 = load i32, i32* %4, align 4
  %322 = call i32 @RelationGetDescr(i32 %321)
  %323 = call i32 @heap_getattr(%struct.TYPE_29__* %319, i32 %320, i32 %322, i32* %37)
  store i32 %323, i32* %36, align 4
  %324 = load i32, i32* %37, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %341, label %326

326:                                              ; preds = %318
  %327 = call %struct.TYPE_27__* @make_parsestate(i32* null)
  store %struct.TYPE_27__* %327, %struct.TYPE_27__** %39, align 8
  %328 = load i32, i32* %36, align 4
  %329 = call i8* @TextDatumGetCString(i32 %328)
  store i8* %329, i8** %38, align 8
  %330 = load i8*, i8** %38, align 8
  %331 = call i32* @stringToNode(i8* %330)
  store i32* %331, i32** %13, align 8
  %332 = load %struct.TYPE_27__*, %struct.TYPE_27__** %39, align 8
  %333 = load i32, i32* %6, align 4
  %334 = load i32, i32* @AccessShareLock, align 4
  %335 = call i32* @addRangeTableEntryForRelation(%struct.TYPE_27__* %332, i32 %333, i32 %334, i32* null, i32 0, i32 0)
  %336 = load %struct.TYPE_27__*, %struct.TYPE_27__** %39, align 8
  %337 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %336, i32 0, i32 0
  %338 = load i32*, i32** %337, align 8
  store i32* %338, i32** %11, align 8
  %339 = load %struct.TYPE_27__*, %struct.TYPE_27__** %39, align 8
  %340 = call i32 @free_parsestate(%struct.TYPE_27__* %339)
  br label %341

341:                                              ; preds = %326, %318
  br label %342

342:                                              ; preds = %341, %306
  %343 = load i32*, i32** %14, align 8
  %344 = icmp ne i32* %343, null
  br i1 %344, label %345, label %357

345:                                              ; preds = %342
  %346 = load i32, i32* @Anum_pg_policy_polwithcheck, align 4
  %347 = sub nsw i32 %346, 1
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %55, i64 %348
  store i32 1, i32* %349, align 4
  %350 = load i32*, i32** %14, align 8
  %351 = call i32 @nodeToString(i32* %350)
  %352 = call i32 @CStringGetTextDatum(i32 %351)
  %353 = load i32, i32* @Anum_pg_policy_polwithcheck, align 4
  %354 = sub nsw i32 %353, 1
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %49, i64 %355
  store i32 %352, i32* %356, align 4
  br label %381

357:                                              ; preds = %342
  %358 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %359 = load i32, i32* @Anum_pg_policy_polwithcheck, align 4
  %360 = load i32, i32* %4, align 4
  %361 = call i32 @RelationGetDescr(i32 %360)
  %362 = call i32 @heap_getattr(%struct.TYPE_29__* %358, i32 %359, i32 %361, i32* %41)
  store i32 %362, i32* %40, align 4
  %363 = load i32, i32* %41, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %380, label %365

365:                                              ; preds = %357
  %366 = call %struct.TYPE_27__* @make_parsestate(i32* null)
  store %struct.TYPE_27__* %366, %struct.TYPE_27__** %43, align 8
  %367 = load i32, i32* %40, align 4
  %368 = call i8* @TextDatumGetCString(i32 %367)
  store i8* %368, i8** %42, align 8
  %369 = load i8*, i8** %42, align 8
  %370 = call i32* @stringToNode(i8* %369)
  store i32* %370, i32** %14, align 8
  %371 = load %struct.TYPE_27__*, %struct.TYPE_27__** %43, align 8
  %372 = load i32, i32* %6, align 4
  %373 = load i32, i32* @AccessShareLock, align 4
  %374 = call i32* @addRangeTableEntryForRelation(%struct.TYPE_27__* %371, i32 %372, i32 %373, i32* null, i32 0, i32 0)
  %375 = load %struct.TYPE_27__*, %struct.TYPE_27__** %43, align 8
  %376 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %375, i32 0, i32 0
  %377 = load i32*, i32** %376, align 8
  store i32* %377, i32** %12, align 8
  %378 = load %struct.TYPE_27__*, %struct.TYPE_27__** %43, align 8
  %379 = call i32 @free_parsestate(%struct.TYPE_27__* %378)
  br label %380

380:                                              ; preds = %365, %357
  br label %381

381:                                              ; preds = %380, %345
  %382 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %383 = load i32, i32* %4, align 4
  %384 = call i32 @RelationGetDescr(i32 %383)
  %385 = call %struct.TYPE_29__* @heap_modify_tuple(%struct.TYPE_29__* %382, i32 %384, i32* %49, i32* %52, i32* %55)
  store %struct.TYPE_29__* %385, %struct.TYPE_29__** %18, align 8
  %386 = load i32, i32* %4, align 4
  %387 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %388 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %387, i32 0, i32 0
  %389 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %390 = call i32 @CatalogTupleUpdate(i32 %386, i32* %388, %struct.TYPE_29__* %389)
  %391 = load i32, i32* @PolicyRelationId, align 4
  %392 = load i8*, i8** %5, align 8
  %393 = call i32 @deleteDependencyRecordsFor(i32 %391, i8* %392, i32 0)
  %394 = load i32, i32* @RelationRelationId, align 4
  %395 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 2
  store i32 %394, i32* %395, align 8
  %396 = load i8*, i8** %7, align 8
  %397 = ptrtoint i8* %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 0
  store i64 %397, i64* %398, align 8
  %399 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 1
  store i64 0, i64* %399, align 8
  %400 = load i32, i32* @PolicyRelationId, align 4
  %401 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %0, i32 0, i32 2
  store i32 %400, i32* %401, align 8
  %402 = load i8*, i8** %5, align 8
  %403 = ptrtoint i8* %402 to i64
  %404 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %0, i32 0, i32 0
  store i64 %403, i64* %404, align 8
  %405 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %0, i32 0, i32 1
  store i64 0, i64* %405, align 8
  %406 = load i32, i32* @DEPENDENCY_AUTO, align 4
  %407 = call i32 @recordDependencyOn(%struct.TYPE_28__* %0, %struct.TYPE_28__* %23, i32 %406)
  %408 = load i32*, i32** %13, align 8
  %409 = load i32*, i32** %11, align 8
  %410 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %411 = call i32 @recordDependencyOnExpr(%struct.TYPE_28__* %0, i32* %408, i32* %409, i32 %410)
  %412 = load i32*, i32** %14, align 8
  %413 = load i32*, i32** %12, align 8
  %414 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %415 = call i32 @recordDependencyOnExpr(%struct.TYPE_28__* %0, i32* %412, i32* %413, i32 %414)
  %416 = load i32, i32* @PolicyRelationId, align 4
  %417 = load i8*, i8** %5, align 8
  %418 = call i32 @deleteSharedDependencyRecordsFor(i32 %416, i8* %417, i32 0)
  %419 = load i32, i32* @AuthIdRelationId, align 4
  %420 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 2
  store i32 %419, i32* %420, align 8
  %421 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 1
  store i64 0, i64* %421, align 8
  store i32 0, i32* %27, align 4
  br label %422

422:                                              ; preds = %442, %381
  %423 = load i32, i32* %27, align 4
  %424 = load i32, i32* %9, align 4
  %425 = icmp slt i32 %423, %424
  br i1 %425, label %426, label %445

426:                                              ; preds = %422
  %427 = load i32*, i32** %8, align 8
  %428 = load i32, i32* %27, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %427, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = call i64 @DatumGetObjectId(i32 %431)
  %433 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 0
  store i64 %432, i64* %433, align 8
  %434 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = load i64, i64* @ACL_ID_PUBLIC, align 8
  %437 = icmp ne i64 %435, %436
  br i1 %437, label %438, label %441

438:                                              ; preds = %426
  %439 = load i32, i32* @SHARED_DEPENDENCY_POLICY, align 4
  %440 = call i32 @recordSharedDependencyOn(%struct.TYPE_28__* %0, %struct.TYPE_28__* %23, i32 %439)
  br label %441

441:                                              ; preds = %438, %426
  br label %442

442:                                              ; preds = %441
  %443 = load i32, i32* %27, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %27, align 4
  br label %422

445:                                              ; preds = %422
  %446 = load i32, i32* @PolicyRelationId, align 4
  %447 = load i8*, i8** %5, align 8
  %448 = call i32 @InvokeObjectPostAlterHook(i32 %446, i8* %447, i32 0)
  %449 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %450 = call i32 @heap_freetuple(%struct.TYPE_29__* %449)
  %451 = load i32, i32* %6, align 4
  %452 = call i32 @CacheInvalidateRelcache(i32 %451)
  %453 = load i32, i32* %16, align 4
  %454 = call i32 @systable_endscan(i32 %453)
  %455 = load i32, i32* %6, align 4
  %456 = load i32, i32* @NoLock, align 4
  %457 = call i32 @relation_close(i32 %455, i32 %456)
  %458 = load i32, i32* %4, align 4
  %459 = load i32, i32* @RowExclusiveLock, align 4
  %460 = call i32 @table_close(i32 %458, i32 %459)
  %461 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %461)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @policy_role_list_to_array(i32*, i32*) #2

declare dso_local i32* @construct_array(i32*, i32, i32, i32, i32, i8 signext) #2

declare dso_local i8* @RangeVarGetRelidExtended(i32, i32, i32, i32, i8*) #2

declare dso_local i32 @relation_open(i8*, i32) #2

declare dso_local %struct.TYPE_27__* @make_parsestate(i32*) #2

declare dso_local i32* @addRangeTableEntryForRelation(%struct.TYPE_27__*, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @addRTEtoQuery(%struct.TYPE_27__*, i32*, i32, i32, i32) #2

declare dso_local i32* @transformWhereClause(%struct.TYPE_27__*, i32, i32, i8*) #2

declare dso_local i32 @copyObject(i32*) #2

declare dso_local i32 @assign_expr_collations(%struct.TYPE_27__*, i32*) #2

declare dso_local i32 @free_parsestate(%struct.TYPE_27__*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i8*) #2

declare dso_local i32 @CStringGetDatum(i32) #2

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #2

declare dso_local %struct.TYPE_29__* @systable_getnext(i32) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_29__*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i32 @RelationGetRelationName(i32) #2

declare dso_local i32 @heap_getattr(%struct.TYPE_29__*, i32, i32, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local signext i8 @DatumGetChar(i32) #2

declare dso_local i64 @GETSTRUCT(%struct.TYPE_29__*) #2

declare dso_local i32 @PointerGetDatum(i32*) #2

declare dso_local i32* @DatumGetArrayTypePCopy(i32) #2

declare dso_local i64 @ARR_DATA_PTR(i32*) #2

declare dso_local i32* @ARR_DIMS(i32*) #2

declare dso_local i64 @palloc(i32) #2

declare dso_local i32 @CStringGetTextDatum(i32) #2

declare dso_local i32 @nodeToString(i32*) #2

declare dso_local i8* @TextDatumGetCString(i32) #2

declare dso_local i32* @stringToNode(i8*) #2

declare dso_local %struct.TYPE_29__* @heap_modify_tuple(%struct.TYPE_29__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_29__*) #2

declare dso_local i32 @deleteDependencyRecordsFor(i32, i8*, i32) #2

declare dso_local i32 @recordDependencyOn(%struct.TYPE_28__*, %struct.TYPE_28__*, i32) #2

declare dso_local i32 @recordDependencyOnExpr(%struct.TYPE_28__*, i32*, i32*, i32) #2

declare dso_local i32 @deleteSharedDependencyRecordsFor(i32, i8*, i32) #2

declare dso_local i64 @DatumGetObjectId(i32) #2

declare dso_local i32 @recordSharedDependencyOn(%struct.TYPE_28__*, %struct.TYPE_28__*, i32) #2

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i8*, i32) #2

declare dso_local i32 @heap_freetuple(%struct.TYPE_29__*) #2

declare dso_local i32 @CacheInvalidateRelcache(i32) #2

declare dso_local i32 @systable_endscan(i32) #2

declare dso_local i32 @relation_close(i32, i32) #2

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
