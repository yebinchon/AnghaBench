; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_MergeConstraintsIntoExisting.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_MergeConstraintsIntoExisting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i64, i32, i32, i32, i64, i64 }

@ConstraintRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@Anum_pg_constraint_conrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@ConstraintRelidTypidNameIndexId = common dso_local global i32 0, align 4
@CONSTRAINT_CHECK = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"child table \22%s\22 has different definition for check constraint \22%s\22\00", align 1
@ERRCODE_INVALID_OBJECT_DEFINITION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"constraint \22%s\22 conflicts with non-inherited constraint on child table \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"constraint \22%s\22 conflicts with NOT VALID constraint on child table \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"child table is missing constraint \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_24__*)* @MergeConstraintsIntoExisting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MergeConstraintsIntoExisting(%struct.TYPE_24__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* @ConstraintRelationId, align 4
  %19 = load i32, i32* @RowExclusiveLock, align 4
  %20 = call %struct.TYPE_24__* @table_open(i32 %18, i32 %19)
  store %struct.TYPE_24__* %20, %struct.TYPE_24__** %5, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %22 = call i32 @RelationGetDescr(%struct.TYPE_24__* %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  br label %31

31:                                               ; preds = %30, %2
  %32 = load i32, i32* @Anum_pg_constraint_conrelid, align 4
  %33 = load i32, i32* @BTEqualStrategyNumber, align 4
  %34 = load i32, i32* @F_OIDEQ, align 4
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %36 = call i32 @RelationGetRelid(%struct.TYPE_24__* %35)
  %37 = call i32 @ObjectIdGetDatum(i32 %36)
  %38 = call i32 @ScanKeyInit(i32* %8, i32 %32, i32 %33, i32 %34, i32 %37)
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %40 = load i32, i32* @ConstraintRelidTypidNameIndexId, align 4
  %41 = call i32 @systable_beginscan(%struct.TYPE_24__* %39, i32 %40, i32 1, i32* null, i32 1, i32* %8)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %202, %62, %56, %31
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.TYPE_25__* @systable_getnext(i32 %43)
  store %struct.TYPE_25__* %44, %struct.TYPE_25__** %9, align 8
  %45 = call i64 @HeapTupleIsValid(%struct.TYPE_25__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %203

47:                                               ; preds = %42
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %49 = call i64 @GETSTRUCT(%struct.TYPE_25__* %48)
  %50 = inttoptr i64 %49 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %50, %struct.TYPE_26__** %11, align 8
  store i32 0, i32* %15, align 4
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CONSTRAINT_CHECK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %42

57:                                               ; preds = %47
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %42

63:                                               ; preds = %57
  %64 = load i32, i32* @Anum_pg_constraint_conrelid, align 4
  %65 = load i32, i32* @BTEqualStrategyNumber, align 4
  %66 = load i32, i32* @F_OIDEQ, align 4
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %68 = call i32 @RelationGetRelid(%struct.TYPE_24__* %67)
  %69 = call i32 @ObjectIdGetDatum(i32 %68)
  %70 = call i32 @ScanKeyInit(i32* %13, i32 %64, i32 %65, i32 %66, i32 %69)
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %72 = load i32, i32* @ConstraintRelidTypidNameIndexId, align 4
  %73 = call i32 @systable_beginscan(%struct.TYPE_24__* %71, i32 %72, i32 1, i32* null, i32 1, i32* %13)
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %100, %88, %63
  %75 = load i32, i32* %12, align 4
  %76 = call %struct.TYPE_25__* @systable_getnext(i32 %75)
  store %struct.TYPE_25__* %76, %struct.TYPE_25__** %14, align 8
  %77 = call i64 @HeapTupleIsValid(%struct.TYPE_25__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %187

79:                                               ; preds = %74
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %81 = call i64 @GETSTRUCT(%struct.TYPE_25__* %80)
  %82 = inttoptr i64 %81 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %82, %struct.TYPE_26__** %16, align 8
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @CONSTRAINT_CHECK, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %74

89:                                               ; preds = %79
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @NameStr(i32 %92)
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @NameStr(i32 %96)
  %98 = call i64 @strcmp(i32 %93, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  br label %74

101:                                              ; preds = %89
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @constraints_equivalent(%struct.TYPE_25__* %102, %struct.TYPE_25__* %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %119, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* @ERROR, align 4
  %109 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %110 = call i32 @errcode(i32 %109)
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %112 = call i32 @RelationGetRelationName(%struct.TYPE_24__* %111)
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @NameStr(i32 %115)
  %117 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %112, i32 %116)
  %118 = call i32 @ereport(i32 %108, i32 %117)
  br label %119

119:                                              ; preds = %107, %101
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %119
  %125 = load i32, i32* @ERROR, align 4
  %126 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %127 = call i32 @errcode(i32 %126)
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @NameStr(i32 %130)
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %133 = call i32 @RelationGetRelationName(%struct.TYPE_24__* %132)
  %134 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %133)
  %135 = call i32 @ereport(i32 %125, i32 %134)
  br label %136

136:                                              ; preds = %124, %119
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %158

141:                                              ; preds = %136
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %158, label %146

146:                                              ; preds = %141
  %147 = load i32, i32* @ERROR, align 4
  %148 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %149 = call i32 @errcode(i32 %148)
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @NameStr(i32 %152)
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %155 = call i32 @RelationGetRelationName(%struct.TYPE_24__* %154)
  %156 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %153, i32 %155)
  %157 = call i32 @ereport(i32 %147, i32 %156)
  br label %158

158:                                              ; preds = %146, %141, %136
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %160 = call %struct.TYPE_25__* @heap_copytuple(%struct.TYPE_25__* %159)
  store %struct.TYPE_25__* %160, %struct.TYPE_25__** %17, align 8
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %162 = call i64 @GETSTRUCT(%struct.TYPE_25__* %161)
  %163 = inttoptr i64 %162 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %163, %struct.TYPE_26__** %16, align 8
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 8
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %158
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %173, 1
  %175 = zext i1 %174 to i32
  %176 = call i32 @Assert(i32 %175)
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %178 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %177, i32 0, i32 2
  store i32 0, i32* %178, align 4
  br label %179

179:                                              ; preds = %170, %158
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %184 = call i32 @CatalogTupleUpdate(%struct.TYPE_24__* %180, i32* %182, %struct.TYPE_25__* %183)
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %186 = call i32 @heap_freetuple(%struct.TYPE_25__* %185)
  store i32 1, i32* %15, align 4
  br label %187

187:                                              ; preds = %179, %74
  %188 = load i32, i32* %12, align 4
  %189 = call i32 @systable_endscan(i32 %188)
  %190 = load i32, i32* %15, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %202, label %192

192:                                              ; preds = %187
  %193 = load i32, i32* @ERROR, align 4
  %194 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %195 = call i32 @errcode(i32 %194)
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @NameStr(i32 %198)
  %200 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %199)
  %201 = call i32 @ereport(i32 %193, i32 %200)
  br label %202

202:                                              ; preds = %192, %187
  br label %42

203:                                              ; preds = %42
  %204 = load i32, i32* %7, align 4
  %205 = call i32 @systable_endscan(i32 %204)
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %207 = load i32, i32* @RowExclusiveLock, align 4
  %208 = call i32 @table_close(%struct.TYPE_24__* %206, i32 %207)
  ret void
}

declare dso_local %struct.TYPE_24__* @table_open(i32, i32) #1

declare dso_local i32 @RelationGetDescr(%struct.TYPE_24__*) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_24__*) #1

declare dso_local i32 @systable_beginscan(%struct.TYPE_24__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @systable_getnext(i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_25__*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @constraints_equivalent(%struct.TYPE_25__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_25__* @heap_copytuple(%struct.TYPE_25__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @CatalogTupleUpdate(%struct.TYPE_24__*, i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_25__*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(%struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
