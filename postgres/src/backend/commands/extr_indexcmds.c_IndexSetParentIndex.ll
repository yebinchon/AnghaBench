; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_indexcmds.c_IndexSetParentIndex.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_indexcmds.c_IndexSetParentIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__*, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i64, i32 }

@RELKIND_INDEX = common dso_local global i64 0, align 8
@RELKIND_PARTITIONED_INDEX = common dso_local global i64 0, align 8
@InheritsRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_inherits_inhrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@Anum_pg_inherits_inhseqno = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@InheritsRelidSeqnoIndexId = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@Natts_pg_inherits = common dso_local global i32 0, align 4
@Anum_pg_inherits_inhparent = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"bogus pg_inherit row: inhrelid %u inhparent %u\00", align 1
@RelationRelationId = common dso_local global i32 0, align 4
@DEPENDENCY_PARTITION_PRI = common dso_local global i32 0, align 4
@DEPENDENCY_PARTITION_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IndexSetParentIndex(%struct.TYPE_21__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i64 %1, i64* %4, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %19 = call i64 @RelationGetRelid(%struct.TYPE_21__* %18)
  store i64 %19, i64* %8, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RELKIND_INDEX, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %2
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RELKIND_PARTITIONED_INDEX, align 8
  %34 = icmp eq i64 %32, %33
  br label %35

35:                                               ; preds = %27, %2
  %36 = phi i1 [ true, %2 ], [ %34, %27 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @Assert(i32 %37)
  %39 = load i32, i32* @InheritsRelationId, align 4
  %40 = load i32, i32* @RowExclusiveLock, align 4
  %41 = call %struct.TYPE_21__* @relation_open(i32 %39, i32 %40)
  store %struct.TYPE_21__* %41, %struct.TYPE_21__** %5, align 8
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %43 = load i32, i32* @Anum_pg_inherits_inhrelid, align 4
  %44 = load i32, i32* @BTEqualStrategyNumber, align 4
  %45 = load i32, i32* @F_OIDEQ, align 4
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @ObjectIdGetDatum(i64 %46)
  %48 = call i32 @ScanKeyInit(i32* %42, i32 %43, i32 %44, i32 %45, i32 %47)
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %50 = load i32, i32* @Anum_pg_inherits_inhseqno, align 4
  %51 = load i32, i32* @BTEqualStrategyNumber, align 4
  %52 = load i32, i32* @F_INT4EQ, align 4
  %53 = call i32 @Int32GetDatum(i32 1)
  %54 = call i32 @ScanKeyInit(i32* %49, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %56 = load i32, i32* @InheritsRelidSeqnoIndexId, align 4
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %58 = call i32 @systable_beginscan(%struct.TYPE_21__* %55, i32 %56, i32 1, i32* null, i32 2, i32* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call %struct.TYPE_22__* @systable_getnext(i32 %59)
  store %struct.TYPE_22__* %60, %struct.TYPE_22__** %9, align 8
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %62 = call i32 @HeapTupleIsValid(%struct.TYPE_22__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %105, label %64

64:                                               ; preds = %35
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @InvalidOid, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 0, i32* %10, align 4
  br label %104

69:                                               ; preds = %64
  %70 = load i32, i32* @Natts_pg_inherits, align 4
  %71 = zext i32 %70 to i64
  %72 = call i8* @llvm.stacksave()
  store i8* %72, i8** %11, align 8
  %73 = alloca i32, i64 %71, align 16
  store i64 %71, i64* %12, align 8
  %74 = load i32, i32* @Natts_pg_inherits, align 4
  %75 = zext i32 %74 to i64
  %76 = alloca i32, i64 %75, align 16
  store i64 %75, i64* %13, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @ObjectIdGetDatum(i64 %77)
  %79 = load i32, i32* @Anum_pg_inherits_inhrelid, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %73, i64 %81
  store i32 %78, i32* %82, align 4
  %83 = load i64, i64* %4, align 8
  %84 = call i32 @ObjectIdGetDatum(i64 %83)
  %85 = load i32, i32* @Anum_pg_inherits_inhparent, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %73, i64 %87
  store i32 %84, i32* %88, align 4
  %89 = call i32 @Int32GetDatum(i32 1)
  %90 = load i32, i32* @Anum_pg_inherits_inhseqno, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %73, i64 %92
  store i32 %89, i32* %93, align 4
  %94 = mul nuw i64 4, %75
  %95 = trunc i64 %94 to i32
  %96 = call i32 @memset(i32* %76, i32 0, i32 %95)
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %98 = call i32 @RelationGetDescr(%struct.TYPE_21__* %97)
  %99 = call %struct.TYPE_22__* @heap_form_tuple(i32 %98, i32* %73, i32* %76)
  store %struct.TYPE_22__* %99, %struct.TYPE_22__** %9, align 8
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %102 = call i32 @CatalogTupleInsert(%struct.TYPE_21__* %100, %struct.TYPE_22__* %101)
  store i32 1, i32* %10, align 4
  %103 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %103)
  br label %104

104:                                              ; preds = %69, %68
  br label %135

105:                                              ; preds = %35
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %107 = call i32 @GETSTRUCT(%struct.TYPE_22__* %106)
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %109, %struct.TYPE_23__** %14, align 8
  %110 = load i64, i64* %4, align 8
  %111 = load i64, i64* @InvalidOid, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %105
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = call i32 @CatalogTupleDelete(%struct.TYPE_21__* %114, i32* %116)
  store i32 1, i32* %10, align 4
  br label %134

118:                                              ; preds = %105
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %4, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %118
  %125 = load i32, i32* @ERROR, align 4
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @elog(i32 %125, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %128, i64 %131)
  br label %133

133:                                              ; preds = %124, %118
  store i32 0, i32* %10, align 4
  br label %134

134:                                              ; preds = %133, %113
  br label %135

135:                                              ; preds = %134, %104
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @systable_endscan(i32 %136)
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %139 = load i32, i32* @RowExclusiveLock, align 4
  %140 = call i32 @relation_close(%struct.TYPE_21__* %138, i32 %139)
  %141 = load i64, i64* %4, align 8
  %142 = call i64 @OidIsValid(i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %135
  %145 = load i64, i64* %4, align 8
  %146 = call i32 @SetRelationHasSubclass(i64 %145, i32 1)
  br label %147

147:                                              ; preds = %144, %135
  %148 = load i64, i64* %8, align 8
  %149 = load i64, i64* %4, align 8
  %150 = call i64 @OidIsValid(i64 %149)
  %151 = call i32 @update_relispartition(i64 %148, i64 %150)
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %192

154:                                              ; preds = %147
  %155 = load i64, i64* %4, align 8
  %156 = call i64 @OidIsValid(i64 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %179

158:                                              ; preds = %154
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* @RelationRelationId, align 4
  %161 = load i64, i64* %8, align 8
  %162 = call i32 @ObjectAddressSet(i32 %159, i32 %160, i64 %161)
  %163 = load i32, i32* %16, align 4
  %164 = load i32, i32* @RelationRelationId, align 4
  %165 = load i64, i64* %4, align 8
  %166 = call i32 @ObjectAddressSet(i32 %163, i32 %164, i64 %165)
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* @RelationRelationId, align 4
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @ObjectAddressSet(i32 %167, i32 %168, i64 %173)
  %175 = load i32, i32* @DEPENDENCY_PARTITION_PRI, align 4
  %176 = call i32 @recordDependencyOn(i32* %15, i32* %16, i32 %175)
  %177 = load i32, i32* @DEPENDENCY_PARTITION_SEC, align 4
  %178 = call i32 @recordDependencyOn(i32* %15, i32* %17, i32 %177)
  br label %190

179:                                              ; preds = %154
  %180 = load i32, i32* @RelationRelationId, align 4
  %181 = load i64, i64* %8, align 8
  %182 = load i32, i32* @RelationRelationId, align 4
  %183 = load i32, i32* @DEPENDENCY_PARTITION_PRI, align 4
  %184 = call i32 @deleteDependencyRecordsForClass(i32 %180, i64 %181, i32 %182, i32 %183)
  %185 = load i32, i32* @RelationRelationId, align 4
  %186 = load i64, i64* %8, align 8
  %187 = load i32, i32* @RelationRelationId, align 4
  %188 = load i32, i32* @DEPENDENCY_PARTITION_SEC, align 4
  %189 = call i32 @deleteDependencyRecordsForClass(i32 %185, i64 %186, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %179, %158
  %191 = call i32 (...) @CommandCounterIncrement()
  br label %192

192:                                              ; preds = %190, %147
  ret void
}

declare dso_local i64 @RelationGetRelid(%struct.TYPE_21__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_21__* @relation_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @systable_beginscan(%struct.TYPE_21__*, i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_22__* @systable_getnext(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_22__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_22__* @heap_form_tuple(i32, i32*, i32*) #1

declare dso_local i32 @RelationGetDescr(%struct.TYPE_21__*) #1

declare dso_local i32 @CatalogTupleInsert(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @GETSTRUCT(%struct.TYPE_22__*) #1

declare dso_local i32 @CatalogTupleDelete(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @elog(i32, i8*, i32, i64) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @relation_close(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i32 @SetRelationHasSubclass(i64, i32) #1

declare dso_local i32 @update_relispartition(i64, i64) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i64) #1

declare dso_local i32 @recordDependencyOn(i32*, i32*, i32) #1

declare dso_local i32 @deleteDependencyRecordsForClass(i32, i64, i32, i32) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
