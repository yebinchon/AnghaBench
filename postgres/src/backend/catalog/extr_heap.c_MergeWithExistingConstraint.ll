; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_MergeWithExistingConstraint.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_MergeWithExistingConstraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32, i32, i32, i32 }

@ConstraintRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_constraint_conrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_constraint_contypid = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@Anum_pg_constraint_conname = common dso_local global i32 0, align 4
@F_NAMEEQ = common dso_local global i32 0, align 4
@ConstraintRelidTypidNameIndexId = common dso_local global i32 0, align 4
@CONSTRAINT_CHECK = common dso_local global i64 0, align 8
@Anum_pg_constraint_conbin = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"null conbin for rel %s\00", align 1
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"constraint \22%s\22 for relation \22%s\22 already exists\00", align 1
@ERRCODE_INVALID_OBJECT_DEFINITION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"constraint \22%s\22 conflicts with non-inherited constraint on relation \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"constraint \22%s\22 conflicts with inherited constraint on relation \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"constraint \22%s\22 conflicts with NOT VALID constraint on relation \22%s\22\00", align 1
@NOTICE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"merging constraint \22%s\22 with inherited definition\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i8*, i32*, i32, i32, i32, i32)* @MergeWithExistingConstraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MergeWithExistingConstraint(%struct.TYPE_20__* %0, i8* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca [3 x i32], align 4
  %19 = alloca %struct.TYPE_21__*, align 8
  %20 = alloca %struct.TYPE_22__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %23 = load i32, i32* @ConstraintRelationId, align 4
  %24 = load i32, i32* @RowExclusiveLock, align 4
  %25 = call %struct.TYPE_20__* @table_open(i32 %23, i32 %24)
  store %struct.TYPE_20__* %25, %struct.TYPE_20__** %16, align 8
  store i32 0, i32* %15, align 4
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %27 = load i32, i32* @Anum_pg_constraint_conrelid, align 4
  %28 = load i32, i32* @BTEqualStrategyNumber, align 4
  %29 = load i32, i32* @F_OIDEQ, align 4
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %31 = call i32 @RelationGetRelid(%struct.TYPE_20__* %30)
  %32 = call i32 @ObjectIdGetDatum(i32 %31)
  %33 = call i32 @ScanKeyInit(i32* %26, i32 %27, i32 %28, i32 %29, i32 %32)
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 1
  %35 = load i32, i32* @Anum_pg_constraint_contypid, align 4
  %36 = load i32, i32* @BTEqualStrategyNumber, align 4
  %37 = load i32, i32* @F_OIDEQ, align 4
  %38 = load i32, i32* @InvalidOid, align 4
  %39 = call i32 @ObjectIdGetDatum(i32 %38)
  %40 = call i32 @ScanKeyInit(i32* %34, i32 %35, i32 %36, i32 %37, i32 %39)
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 2
  %42 = load i32, i32* @Anum_pg_constraint_conname, align 4
  %43 = load i32, i32* @BTEqualStrategyNumber, align 4
  %44 = load i32, i32* @F_NAMEEQ, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @CStringGetDatum(i8* %45)
  %47 = call i32 @ScanKeyInit(i32* %41, i32 %42, i32 %43, i32 %44, i32 %46)
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %49 = load i32, i32* @ConstraintRelidTypidNameIndexId, align 4
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %51 = call i32 @systable_beginscan(%struct.TYPE_20__* %48, i32 %49, i32 1, i32* null, i32 3, i32* %50)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = call %struct.TYPE_21__* @systable_getnext(i32 %52)
  store %struct.TYPE_21__* %53, %struct.TYPE_21__** %19, align 8
  %54 = call i64 @HeapTupleIsValid(%struct.TYPE_21__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %214

56:                                               ; preds = %7
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %58 = call i64 @GETSTRUCT(%struct.TYPE_21__* %57)
  %59 = inttoptr i64 %58 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %59, %struct.TYPE_22__** %20, align 8
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CONSTRAINT_CHECK, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %56
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %67 = load i32, i32* @Anum_pg_constraint_conbin, align 4
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @fastgetattr(%struct.TYPE_21__* %66, i32 %67, i32 %70, i32* %22)
  store i32 %71, i32* %21, align 4
  %72 = load i32, i32* %22, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %65
  %75 = load i32, i32* @ERROR, align 4
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %77 = call i32 @RelationGetRelationName(%struct.TYPE_20__* %76)
  %78 = call i32 @elog(i32 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %74, %65
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %21, align 4
  %82 = call i32 @TextDatumGetCString(i32 %81)
  %83 = call i32 @stringToNode(i32 %82)
  %84 = call i64 @equal(i32* %80, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store i32 1, i32* %15, align 4
  br label %87

87:                                               ; preds = %86, %79
  br label %88

88:                                               ; preds = %87, %56
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %91
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %96
  store i32 1, i32* %11, align 4
  br label %104

104:                                              ; preds = %103, %96, %91, %88
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %107, %104
  %111 = load i32, i32* @ERROR, align 4
  %112 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %113 = call i32 @errcode(i32 %112)
  %114 = load i8*, i8** %9, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %116 = call i32 @RelationGetRelationName(%struct.TYPE_20__* %115)
  %117 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %114, i32 %116)
  %118 = call i32 @ereport(i32 %111, i32 %117)
  br label %119

119:                                              ; preds = %110, %107
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = load i32, i32* @ERROR, align 4
  %126 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %127 = call i32 @errcode(i32 %126)
  %128 = load i8*, i8** %9, align 8
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %130 = call i32 @RelationGetRelationName(%struct.TYPE_20__* %129)
  %131 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i8* %128, i32 %130)
  %132 = call i32 @ereport(i32 %125, i32 %131)
  br label %133

133:                                              ; preds = %124, %119
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %133
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = load i32, i32* @ERROR, align 4
  %143 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %144 = call i32 @errcode(i32 %143)
  %145 = load i8*, i8** %9, align 8
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %147 = call i32 @RelationGetRelationName(%struct.TYPE_20__* %146)
  %148 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i8* %145, i32 %147)
  %149 = call i32 @ereport(i32 %142, i32 %148)
  br label %150

150:                                              ; preds = %141, %138, %133
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %150
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %167, label %158

158:                                              ; preds = %153
  %159 = load i32, i32* @ERROR, align 4
  %160 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %161 = call i32 @errcode(i32 %160)
  %162 = load i8*, i8** %9, align 8
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %164 = call i32 @RelationGetRelationName(%struct.TYPE_20__* %163)
  %165 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0), i8* %162, i32 %164)
  %166 = call i32 @ereport(i32 %159, i32 %165)
  br label %167

167:                                              ; preds = %158, %153, %150
  %168 = load i32, i32* @NOTICE, align 4
  %169 = load i8*, i8** %9, align 8
  %170 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8* %169)
  %171 = call i32 @ereport(i32 %168, i32 %170)
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %173 = call %struct.TYPE_21__* @heap_copytuple(%struct.TYPE_21__* %172)
  store %struct.TYPE_21__* %173, %struct.TYPE_21__** %19, align 8
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %175 = call i64 @GETSTRUCT(%struct.TYPE_21__* %174)
  %176 = inttoptr i64 %175 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %176, %struct.TYPE_22__** %20, align 8
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %167
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 3
  store i32 1, i32* %185, align 8
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 1
  store i32 0, i32* %187, align 8
  br label %200

188:                                              ; preds = %167
  %189 = load i32, i32* %12, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 1
  store i32 1, i32* %193, align 8
  br label %199

194:                                              ; preds = %188
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %194, %191
  br label %200

200:                                              ; preds = %199, %183
  %201 = load i32, i32* %14, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = load i32, i32* %12, align 4
  %205 = call i32 @Assert(i32 %204)
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 2
  store i32 1, i32* %207, align 4
  br label %208

208:                                              ; preds = %203, %200
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %213 = call i32 @CatalogTupleUpdate(%struct.TYPE_20__* %209, i32* %211, %struct.TYPE_21__* %212)
  br label %214

214:                                              ; preds = %208, %7
  %215 = load i32, i32* %17, align 4
  %216 = call i32 @systable_endscan(i32 %215)
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %218 = load i32, i32* @RowExclusiveLock, align 4
  %219 = call i32 @table_close(%struct.TYPE_20__* %217, i32 %218)
  %220 = load i32, i32* %15, align 4
  ret i32 %220
}

declare dso_local %struct.TYPE_20__* @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_20__*) #1

declare dso_local i32 @CStringGetDatum(i8*) #1

declare dso_local i32 @systable_beginscan(%struct.TYPE_20__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @systable_getnext(i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_21__*) #1

declare dso_local i32 @fastgetattr(%struct.TYPE_21__*, i32, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_20__*) #1

declare dso_local i64 @equal(i32*, i32) #1

declare dso_local i32 @stringToNode(i32) #1

declare dso_local i32 @TextDatumGetCString(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local %struct.TYPE_21__* @heap_copytuple(%struct.TYPE_21__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @CatalogTupleUpdate(%struct.TYPE_20__*, i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
