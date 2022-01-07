; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_ri_ReportViolation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_ri_ReportViolation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i32*, i32, i32 }
%struct.TYPE_14__ = type { i32*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }

@RI_PLAN_CHECK_LOOKUPPK = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@RLS_ENABLED = common dso_local global i64 0, align 8
@ACL_SELECT = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FOREIGN_KEY_VIOLATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"removing partition \22%s\22 violates foreign key constraint \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Key (%s)=(%s) is still referenced from table \22%s\22.\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"insert or update on table \22%s\22 violates foreign key constraint \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Key (%s)=(%s) is not present in table \22%s\22.\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Key is not present in table \22%s\22.\00", align 1
@.str.7 = private unnamed_addr constant [82 x i8] c"update or delete on table \22%s\22 violates foreign key constraint \22%s\22 on table \22%s\22\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Key is still referenced from table \22%s\22.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32*, i32*, i32, i32)* @ri_ReportViolation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ri_ReportViolation(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__, align 4
  %16 = alloca %struct.TYPE_13__, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_16__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 1, i32* %21, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @RI_PLAN_CHECK_LOOKUPPK, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %7
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %18, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %19, align 4
  %45 = load i32*, i32** %12, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %12, align 8
  br label %51

51:                                               ; preds = %47, %38
  br label %66

52:                                               ; preds = %7
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %18, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %19, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %12, align 8
  br label %65

65:                                               ; preds = %61, %52
  br label %66

66:                                               ; preds = %65, %51
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 1, i32* %21, align 4
  br label %113

70:                                               ; preds = %66
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* @InvalidOid, align 4
  %73 = call i64 @check_enable_rls(i32 %71, i32 %72, i32 1)
  %74 = load i64, i64* @RLS_ENABLED, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %111

76:                                               ; preds = %70
  %77 = load i32, i32* %19, align 4
  %78 = call i32 (...) @GetUserId()
  %79 = load i32, i32* @ACL_SELECT, align 4
  %80 = call i64 @pg_class_aclcheck(i32 %77, i32 %78, i32 %79)
  store i64 %80, i64* %20, align 8
  %81 = load i64, i64* %20, align 8
  %82 = load i64, i64* @ACLCHECK_OK, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %110

84:                                               ; preds = %76
  store i32 0, i32* %22, align 4
  br label %85

85:                                               ; preds = %106, %84
  %86 = load i32, i32* %22, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %85
  %92 = load i32, i32* %19, align 4
  %93 = load i32*, i32** %18, align 8
  %94 = load i32, i32* %22, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (...) @GetUserId()
  %99 = load i32, i32* @ACL_SELECT, align 4
  %100 = call i64 @pg_attribute_aclcheck(i32 %92, i32 %97, i32 %98, i32 %99)
  store i64 %100, i64* %20, align 8
  %101 = load i64, i64* %20, align 8
  %102 = load i64, i64* @ACLCHECK_OK, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  store i32 0, i32* %21, align 4
  br label %109

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %22, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %22, align 4
  br label %85

109:                                              ; preds = %104, %85
  br label %110

110:                                              ; preds = %109, %76
  br label %112

111:                                              ; preds = %70
  store i32 0, i32* %21, align 4
  br label %112

112:                                              ; preds = %111, %110
  br label %113

113:                                              ; preds = %112, %69
  %114 = load i32, i32* %21, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %168

116:                                              ; preds = %113
  %117 = call i32 @initStringInfo(%struct.TYPE_13__* %15)
  %118 = call i32 @initStringInfo(%struct.TYPE_13__* %16)
  store i32 0, i32* %23, align 4
  br label %119

119:                                              ; preds = %164, %116
  %120 = load i32, i32* %23, align 4
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %167

125:                                              ; preds = %119
  %126 = load i32*, i32** %18, align 8
  %127 = load i32, i32* %23, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %24, align 4
  %131 = load i32*, i32** %12, align 8
  %132 = load i32, i32* %24, align 4
  %133 = sub nsw i32 %132, 1
  %134 = call %struct.TYPE_16__* @TupleDescAttr(i32* %131, i32 %133)
  store %struct.TYPE_16__* %134, %struct.TYPE_16__** %25, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @NameStr(i32 %137)
  store i8* %138, i8** %26, align 8
  %139 = load i32*, i32** %11, align 8
  %140 = load i32, i32* %24, align 4
  %141 = call i32 @slot_getattr(i32* %139, i32 %140, i32* %29)
  store i32 %141, i32* %28, align 4
  %142 = load i32, i32* %29, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %125
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @getTypeOutputInfo(i32 %147, i32* %30, i32* %31)
  %149 = load i32, i32* %30, align 4
  %150 = load i32, i32* %28, align 4
  %151 = call i8* @OidOutputFunctionCall(i32 %149, i32 %150)
  store i8* %151, i8** %27, align 8
  br label %153

152:                                              ; preds = %125
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  br label %153

153:                                              ; preds = %152, %144
  %154 = load i32, i32* %23, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = call i32 @appendStringInfoString(%struct.TYPE_13__* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %158 = call i32 @appendStringInfoString(%struct.TYPE_13__* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %159

159:                                              ; preds = %156, %153
  %160 = load i8*, i8** %26, align 8
  %161 = call i32 @appendStringInfoString(%struct.TYPE_13__* %15, i8* %160)
  %162 = load i8*, i8** %27, align 8
  %163 = call i32 @appendStringInfoString(%struct.TYPE_13__* %16, i8* %162)
  br label %164

164:                                              ; preds = %159
  %165 = load i32, i32* %23, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %23, align 4
  br label %119

167:                                              ; preds = %119
  br label %168

168:                                              ; preds = %167, %113
  %169 = load i32, i32* %14, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %190

171:                                              ; preds = %168
  %172 = load i32, i32* @ERROR, align 4
  %173 = load i32, i32* @ERRCODE_FOREIGN_KEY_VIOLATION, align 4
  %174 = call i32 @errcode(i32 %173)
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %176 = call i32 @RelationGetRelationName(%struct.TYPE_14__* %175)
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = call i8* @NameStr(i32 %179)
  %181 = call i32 (i8*, i32, i8*, ...) @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %176, i8* %180)
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %187 = call i32 @RelationGetRelationName(%struct.TYPE_14__* %186)
  %188 = call i32 (i8*, i32, ...) @errdetail(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %183, i32 %185, i32 %187)
  %189 = call i32 @ereport(i32 %172, i32 %188)
  br label %264

190:                                              ; preds = %168
  %191 = load i32, i32* %17, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %227

193:                                              ; preds = %190
  %194 = load i32, i32* @ERROR, align 4
  %195 = load i32, i32* @ERRCODE_FOREIGN_KEY_VIOLATION, align 4
  %196 = call i32 @errcode(i32 %195)
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %198 = call i32 @RelationGetRelationName(%struct.TYPE_14__* %197)
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = call i8* @NameStr(i32 %201)
  %203 = call i32 (i8*, i32, i8*, ...) @errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 %198, i8* %202)
  %204 = load i32, i32* %21, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %193
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %212 = call i32 @RelationGetRelationName(%struct.TYPE_14__* %211)
  %213 = call i32 (i8*, i32, ...) @errdetail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %208, i32 %210, i32 %212)
  br label %218

214:                                              ; preds = %193
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %216 = call i32 @RelationGetRelationName(%struct.TYPE_14__* %215)
  %217 = call i32 (i8*, i32, ...) @errdetail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %216)
  br label %218

218:                                              ; preds = %214, %206
  %219 = phi i32 [ %213, %206 ], [ %217, %214 ]
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = call i8* @NameStr(i32 %223)
  %225 = call i32 @errtableconstraint(%struct.TYPE_14__* %220, i8* %224)
  %226 = call i32 @ereport(i32 %194, i32 %225)
  br label %263

227:                                              ; preds = %190
  %228 = load i32, i32* @ERROR, align 4
  %229 = load i32, i32* @ERRCODE_FOREIGN_KEY_VIOLATION, align 4
  %230 = call i32 @errcode(i32 %229)
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %232 = call i32 @RelationGetRelationName(%struct.TYPE_14__* %231)
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = call i8* @NameStr(i32 %235)
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %238 = call i32 @RelationGetRelationName(%struct.TYPE_14__* %237)
  %239 = call i32 (i8*, i32, i8*, ...) @errmsg(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.7, i64 0, i64 0), i32 %232, i8* %236, i32 %238)
  %240 = load i32, i32* %21, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %227
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %248 = call i32 @RelationGetRelationName(%struct.TYPE_14__* %247)
  %249 = call i32 (i8*, i32, ...) @errdetail(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %244, i32 %246, i32 %248)
  br label %254

250:                                              ; preds = %227
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %252 = call i32 @RelationGetRelationName(%struct.TYPE_14__* %251)
  %253 = call i32 (i8*, i32, ...) @errdetail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %252)
  br label %254

254:                                              ; preds = %250, %242
  %255 = phi i32 [ %249, %242 ], [ %253, %250 ]
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = call i8* @NameStr(i32 %259)
  %261 = call i32 @errtableconstraint(%struct.TYPE_14__* %256, i8* %260)
  %262 = call i32 @ereport(i32 %228, i32 %261)
  br label %263

263:                                              ; preds = %254, %218
  br label %264

264:                                              ; preds = %263, %171
  ret void
}

declare dso_local i64 @check_enable_rls(i32, i32, i32) #1

declare dso_local i64 @pg_class_aclcheck(i32, i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i64 @pg_attribute_aclcheck(i32, i32, i32, i32) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_16__* @TupleDescAttr(i32*, i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @slot_getattr(i32*, i32, i32*) #1

declare dso_local i32 @getTypeOutputInfo(i32, i32*, i32*) #1

declare dso_local i8* @OidOutputFunctionCall(i32, i32) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i8*, ...) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_14__*) #1

declare dso_local i32 @errdetail(i8*, i32, ...) #1

declare dso_local i32 @errtableconstraint(%struct.TYPE_14__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
