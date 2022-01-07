; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecAddOf.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecAddOf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i64, i8*, i32 }
%struct.TYPE_38__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_40__ = type { i8* }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_42__ = type { i64, i64, i64, i32, i64 }
%struct.TYPE_41__ = type { i8* }

@InheritsRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_inherits_inhrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@InheritsRelidSeqnoIndexId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"typed tables cannot inherit\00", align 1
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"table is missing column \22%s\22\00", align 1
@NAMEDATALEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"table has column \22%s\22 where type requires \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"table \22%s\22 has different type for column \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"table has extra column \22%s\22\00", align 1
@TypeRelationId = common dso_local global i32 0, align 4
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_39__*, %struct.TYPE_38__*, i32*, i32)* @ATExecAddOf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ATExecAddOf(%struct.TYPE_39__* noalias sret %0, %struct.TYPE_38__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_38__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_36__*, align 8
  %10 = alloca %struct.TYPE_40__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_38__*, align 8
  %13 = alloca %struct.TYPE_38__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_37__*, align 8
  %19 = alloca %struct.TYPE_37__*, align 8
  %20 = alloca %struct.TYPE_39__, align 8
  %21 = alloca %struct.TYPE_36__*, align 8
  %22 = alloca %struct.TYPE_42__*, align 8
  %23 = alloca %struct.TYPE_42__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.TYPE_42__*, align 8
  store %struct.TYPE_38__* %1, %struct.TYPE_38__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 %3, i32* %7, align 4
  %27 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %28 = call i8* @RelationGetRelid(%struct.TYPE_38__* %27)
  store i8* %28, i8** %8, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call %struct.TYPE_36__* @typenameType(i32* null, i32* %29, i32* null)
  store %struct.TYPE_36__* %30, %struct.TYPE_36__** %9, align 8
  %31 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %32 = call i32 @check_of_type(%struct.TYPE_36__* %31)
  %33 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %34 = call i64 @GETSTRUCT(%struct.TYPE_36__* %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_40__*
  store %struct.TYPE_40__* %35, %struct.TYPE_40__** %10, align 8
  %36 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %11, align 8
  %39 = load i32, i32* @InheritsRelationId, align 4
  %40 = load i32, i32* @AccessShareLock, align 4
  %41 = call %struct.TYPE_38__* @table_open(i32 %39, i32 %40)
  store %struct.TYPE_38__* %41, %struct.TYPE_38__** %12, align 8
  %42 = load i32, i32* @Anum_pg_inherits_inhrelid, align 4
  %43 = load i32, i32* @BTEqualStrategyNumber, align 4
  %44 = load i32, i32* @F_OIDEQ, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @ObjectIdGetDatum(i8* %45)
  %47 = call i32 @ScanKeyInit(i32* %15, i32 %42, i32 %43, i32 %44, i32 %46)
  %48 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %49 = load i32, i32* @InheritsRelidSeqnoIndexId, align 4
  %50 = call i32 @systable_beginscan(%struct.TYPE_38__* %48, i32 %49, i32 1, i32* null, i32 1, i32* %15)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call %struct.TYPE_36__* @systable_getnext(i32 %51)
  %53 = call i64 @HeapTupleIsValid(%struct.TYPE_36__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %4
  %56 = load i32, i32* @ERROR, align 4
  %57 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %58 = call i32 @errcode(i32 %57)
  %59 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %60 = call i32 @ereport(i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %55, %4
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @systable_endscan(i32 %62)
  %64 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %65 = load i32, i32* @AccessShareLock, align 4
  %66 = call i32 @table_close(%struct.TYPE_38__* %64, i32 %65)
  %67 = load i8*, i8** %11, align 8
  %68 = call %struct.TYPE_37__* @lookup_rowtype_tupdesc(i8* %67, i32 -1)
  store %struct.TYPE_37__* %68, %struct.TYPE_37__** %18, align 8
  %69 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %70 = call %struct.TYPE_37__* @RelationGetDescr(%struct.TYPE_38__* %69)
  store %struct.TYPE_37__* %70, %struct.TYPE_37__** %19, align 8
  store i32 1, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %71

71:                                               ; preds = %169, %61
  %72 = load i32, i32* %17, align 4
  %73 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp sle i32 %72, %75
  br i1 %76, label %77, label %172

77:                                               ; preds = %71
  %78 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %79 = load i32, i32* %17, align 4
  %80 = sub nsw i32 %79, 1
  %81 = call %struct.TYPE_42__* @TupleDescAttr(%struct.TYPE_37__* %78, i32 %80)
  store %struct.TYPE_42__* %81, %struct.TYPE_42__** %22, align 8
  %82 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %83 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %169

87:                                               ; preds = %77
  %88 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %89 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @NameStr(i32 %90)
  store i8* %91, i8** %24, align 8
  br label %92

92:                                               ; preds = %112, %87
  %93 = load i32, i32* %16, align 4
  %94 = load %struct.TYPE_37__*, %struct.TYPE_37__** %19, align 8
  %95 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %93, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load i32, i32* @ERROR, align 4
  %100 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %101 = call i32 @errcode(i32 %100)
  %102 = load i8*, i8** %24, align 8
  %103 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %102)
  %104 = call i32 @ereport(i32 %99, i32 %103)
  br label %105

105:                                              ; preds = %98, %92
  %106 = load %struct.TYPE_37__*, %struct.TYPE_37__** %19, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sub nsw i32 %107, 1
  %109 = call %struct.TYPE_42__* @TupleDescAttr(%struct.TYPE_37__* %106, i32 %108)
  store %struct.TYPE_42__* %109, %struct.TYPE_42__** %23, align 8
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %16, align 4
  br label %112

112:                                              ; preds = %105
  %113 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %114 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %92, label %117

117:                                              ; preds = %112
  %118 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %119 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i8* @NameStr(i32 %120)
  store i8* %121, i8** %25, align 8
  %122 = load i8*, i8** %25, align 8
  %123 = load i8*, i8** %24, align 8
  %124 = load i32, i32* @NAMEDATALEN, align 4
  %125 = call i64 @strncmp(i8* %122, i8* %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %117
  %128 = load i32, i32* @ERROR, align 4
  %129 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %130 = call i32 @errcode(i32 %129)
  %131 = load i8*, i8** %25, align 8
  %132 = load i8*, i8** %24, align 8
  %133 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %131, i8* %132)
  %134 = call i32 @ereport(i32 %128, i32 %133)
  br label %135

135:                                              ; preds = %127, %117
  %136 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %137 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %140 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %138, %141
  br i1 %142, label %159, label %143

143:                                              ; preds = %135
  %144 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %145 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %148 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %146, %149
  br i1 %150, label %159, label %151

151:                                              ; preds = %143
  %152 = load %struct.TYPE_42__*, %struct.TYPE_42__** %23, align 8
  %153 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_42__*, %struct.TYPE_42__** %22, align 8
  %156 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %154, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %151, %143, %135
  %160 = load i32, i32* @ERROR, align 4
  %161 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %162 = call i32 @errcode(i32 %161)
  %163 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %164 = call i32 @RelationGetRelationName(%struct.TYPE_38__* %163)
  %165 = load i8*, i8** %24, align 8
  %166 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %164, i8* %165)
  %167 = call i32 @ereport(i32 %160, i32 %166)
  br label %168

168:                                              ; preds = %159, %151
  br label %169

169:                                              ; preds = %168, %86
  %170 = load i32, i32* %17, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %17, align 4
  br label %71

172:                                              ; preds = %71
  %173 = load %struct.TYPE_37__*, %struct.TYPE_37__** %18, align 8
  %174 = call i32 @DecrTupleDescRefCount(%struct.TYPE_37__* %173)
  br label %175

175:                                              ; preds = %201, %172
  %176 = load i32, i32* %16, align 4
  %177 = load %struct.TYPE_37__*, %struct.TYPE_37__** %19, align 8
  %178 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp sle i32 %176, %179
  br i1 %180, label %181, label %204

181:                                              ; preds = %175
  %182 = load %struct.TYPE_37__*, %struct.TYPE_37__** %19, align 8
  %183 = load i32, i32* %16, align 4
  %184 = sub nsw i32 %183, 1
  %185 = call %struct.TYPE_42__* @TupleDescAttr(%struct.TYPE_37__* %182, i32 %184)
  store %struct.TYPE_42__* %185, %struct.TYPE_42__** %26, align 8
  %186 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %187 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %200, label %190

190:                                              ; preds = %181
  %191 = load i32, i32* @ERROR, align 4
  %192 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %193 = call i32 @errcode(i32 %192)
  %194 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %195 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = call i8* @NameStr(i32 %196)
  %198 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %197)
  %199 = call i32 @ereport(i32 %191, i32 %198)
  br label %200

200:                                              ; preds = %190, %181
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %16, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %16, align 4
  br label %175

204:                                              ; preds = %175
  %205 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_35__*, %struct.TYPE_35__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %221

211:                                              ; preds = %204
  %212 = load i8*, i8** %8, align 8
  %213 = load i32, i32* @TypeRelationId, align 4
  %214 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_35__*, %struct.TYPE_35__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %220 = call i32 @drop_parent_dependency(i8* %212, i32 %213, i64 %218, i32 %219)
  br label %221

221:                                              ; preds = %211, %204
  %222 = load i32, i32* @RelationRelationId, align 4
  %223 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %20, i32 0, i32 2
  store i32 %222, i32* %223, align 8
  %224 = load i8*, i8** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %20, i32 0, i32 1
  store i8* %224, i8** %225, align 8
  %226 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %20, i32 0, i32 0
  store i64 0, i64* %226, align 8
  %227 = load i32, i32* @TypeRelationId, align 4
  %228 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %0, i32 0, i32 2
  store i32 %227, i32* %228, align 8
  %229 = load i8*, i8** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %0, i32 0, i32 1
  store i8* %229, i8** %230, align 8
  %231 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %0, i32 0, i32 0
  store i64 0, i64* %231, align 8
  %232 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %233 = call i32 @recordDependencyOn(%struct.TYPE_39__* %20, %struct.TYPE_39__* %0, i32 %232)
  %234 = load i32, i32* @RelationRelationId, align 4
  %235 = load i32, i32* @RowExclusiveLock, align 4
  %236 = call %struct.TYPE_38__* @table_open(i32 %234, i32 %235)
  store %struct.TYPE_38__* %236, %struct.TYPE_38__** %13, align 8
  %237 = load i32, i32* @RELOID, align 4
  %238 = load i8*, i8** %8, align 8
  %239 = call i32 @ObjectIdGetDatum(i8* %238)
  %240 = call %struct.TYPE_36__* @SearchSysCacheCopy1(i32 %237, i32 %239)
  store %struct.TYPE_36__* %240, %struct.TYPE_36__** %21, align 8
  %241 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %242 = call i64 @HeapTupleIsValid(%struct.TYPE_36__* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %248, label %244

244:                                              ; preds = %221
  %245 = load i32, i32* @ERROR, align 4
  %246 = load i8*, i8** %8, align 8
  %247 = call i32 @elog(i32 %245, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %246)
  br label %248

248:                                              ; preds = %244, %221
  %249 = load i8*, i8** %11, align 8
  %250 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %251 = call i64 @GETSTRUCT(%struct.TYPE_36__* %250)
  %252 = inttoptr i64 %251 to %struct.TYPE_41__*
  %253 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %252, i32 0, i32 0
  store i8* %249, i8** %253, align 8
  %254 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %255 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %256 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %258 = call i32 @CatalogTupleUpdate(%struct.TYPE_38__* %254, i32* %256, %struct.TYPE_36__* %257)
  %259 = load i32, i32* @RelationRelationId, align 4
  %260 = load i8*, i8** %8, align 8
  %261 = call i32 @InvokeObjectPostAlterHook(i32 %259, i8* %260, i32 0)
  %262 = load %struct.TYPE_36__*, %struct.TYPE_36__** %21, align 8
  %263 = call i32 @heap_freetuple(%struct.TYPE_36__* %262)
  %264 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %265 = load i32, i32* @RowExclusiveLock, align 4
  %266 = call i32 @table_close(%struct.TYPE_38__* %264, i32 %265)
  %267 = load %struct.TYPE_36__*, %struct.TYPE_36__** %9, align 8
  %268 = call i32 @ReleaseSysCache(%struct.TYPE_36__* %267)
  ret void
}

declare dso_local i8* @RelationGetRelid(%struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_36__* @typenameType(i32*, i32*, i32*) #1

declare dso_local i32 @check_of_type(%struct.TYPE_36__*) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_38__* @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i8*) #1

declare dso_local i32 @systable_beginscan(%struct.TYPE_38__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_36__* @systable_getnext(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(%struct.TYPE_38__*, i32) #1

declare dso_local %struct.TYPE_37__* @lookup_rowtype_tupdesc(i8*, i32) #1

declare dso_local %struct.TYPE_37__* @RelationGetDescr(%struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_42__* @TupleDescAttr(%struct.TYPE_37__*, i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_38__*) #1

declare dso_local i32 @DecrTupleDescRefCount(%struct.TYPE_37__*) #1

declare dso_local i32 @drop_parent_dependency(i8*, i32, i64, i32) #1

declare dso_local i32 @recordDependencyOn(%struct.TYPE_39__*, %struct.TYPE_39__*, i32) #1

declare dso_local %struct.TYPE_36__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i8*) #1

declare dso_local i32 @CatalogTupleUpdate(%struct.TYPE_38__*, i32*, %struct.TYPE_36__*) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i8*, i32) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_36__*) #1

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_36__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
