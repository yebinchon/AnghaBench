; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_sequence.c_AlterSequence.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_sequence.c_AlterSequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i32, %struct.TYPE_25__*, i64 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i64, i32 }
%struct.TYPE_29__ = type { i32 }

@ShareRowExclusiveLock = common dso_local global i32 0, align 4
@RVR_MISSING_OK = common dso_local global i32 0, align 4
@RangeVarCallbackOwnsRelation = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8
@NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"relation \22%s\22 does not exist, skipping\00", align 1
@InvalidObjectAddress = common dso_local global i32 0, align 4
@SequenceRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@SEQRELID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"cache lookup failed for sequence %u\00", align 1
@InvalidTransactionId = common dso_local global i64 0, align 8
@InvalidMultiXactId = common dso_local global i64 0, align 8
@RelationRelationId = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AlterSequence(i32* %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca %struct.TYPE_29__*, align 8
  %18 = alloca %struct.TYPE_29__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %5, align 8
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %22 = load i32, i32* @ShareRowExclusiveLock, align 4
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @RVR_MISSING_OK, align 4
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  %32 = load i32, i32* @RangeVarCallbackOwnsRelation, align 4
  %33 = call i64 @RangeVarGetRelidExtended(%struct.TYPE_25__* %21, i32 %22, i32 %31, i32 %32, i32* null)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @InvalidOid, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = load i32, i32* @NOTICE, align 4
  %39 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = call i32 @ereport(i32 %38, i32 %44)
  %46 = load i32, i32* @InvalidObjectAddress, align 4
  store i32 %46, i32* %3, align 4
  br label %156

47:                                               ; preds = %30
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @init_sequence(i64 %48, %struct.TYPE_27__** %7, %struct.TYPE_28__** %8)
  %50 = load i32, i32* @SequenceRelationId, align 4
  %51 = load i32, i32* @RowExclusiveLock, align 4
  %52 = call %struct.TYPE_28__* @table_open(i32 %50, i32 %51)
  store %struct.TYPE_28__* %52, %struct.TYPE_28__** %16, align 8
  %53 = load i32, i32* @SEQRELID, align 4
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @ObjectIdGetDatum(i64 %54)
  %56 = call %struct.TYPE_29__* @SearchSysCacheCopy1(i32 %53, i32 %55)
  store %struct.TYPE_29__* %56, %struct.TYPE_29__** %17, align 8
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %58 = call i32 @HeapTupleIsValid(%struct.TYPE_29__* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %47
  %61 = load i32, i32* @ERROR, align 4
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @elog(i32 %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %60, %47
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %66 = call i64 @GETSTRUCT(%struct.TYPE_29__* %65)
  store i64 %66, i64* %11, align 8
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %68 = call i32 @read_seq_tuple(%struct.TYPE_28__* %67, i32* %9, i32* %10)
  %69 = call %struct.TYPE_29__* @heap_copytuple(i32* %10)
  store %struct.TYPE_29__* %69, %struct.TYPE_29__** %18, align 8
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %71 = call i64 @GETSTRUCT(%struct.TYPE_29__* %70)
  store i64 %71, i64* %12, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @UnlockReleaseBuffer(i32 %72)
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @init_params(i32* %74, i32 %77, i32 %80, i32 0, i64 %81, i64 %82, i32* %13, i32** %14)
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %126

91:                                               ; preds = %64
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %93 = call i64 @RelationNeedsWAL(%struct.TYPE_28__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = call i32 (...) @GetTopTransactionId()
  br label %97

97:                                               ; preds = %95, %91
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @RelationSetNewRelfilenode(%struct.TYPE_28__* %98, i32 %103)
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @InvalidTransactionId, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @Assert(i32 %112)
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @InvalidMultiXactId, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @Assert(i32 %121)
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %125 = call i32 @fill_seq_with_data(%struct.TYPE_28__* %123, %struct.TYPE_29__* %124)
  br label %126

126:                                              ; preds = %97, %64
  %127 = load i32*, i32** %14, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %131 = load i32*, i32** %14, align 8
  %132 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @process_owned_by(%struct.TYPE_28__* %130, i32* %131, i32 %134)
  br label %136

136:                                              ; preds = %129, %126
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %141 = call i32 @CatalogTupleUpdate(%struct.TYPE_28__* %137, i32* %139, %struct.TYPE_29__* %140)
  %142 = load i32, i32* @RelationRelationId, align 4
  %143 = load i64, i64* %6, align 8
  %144 = call i32 @InvokeObjectPostAlterHook(i32 %142, i64 %143, i32 0)
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* @RelationRelationId, align 4
  %147 = load i64, i64* %6, align 8
  %148 = call i32 @ObjectAddressSet(i32 %145, i32 %146, i64 %147)
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %150 = load i32, i32* @RowExclusiveLock, align 4
  %151 = call i32 @table_close(%struct.TYPE_28__* %149, i32 %150)
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %153 = load i32, i32* @NoLock, align 4
  %154 = call i32 @relation_close(%struct.TYPE_28__* %152, i32 %153)
  %155 = load i32, i32* %15, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %136, %37
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i64 @RangeVarGetRelidExtended(%struct.TYPE_25__*, i32, i32, i32, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @init_sequence(i64, %struct.TYPE_27__**, %struct.TYPE_28__**) #1

declare dso_local %struct.TYPE_28__* @table_open(i32, i32) #1

declare dso_local %struct.TYPE_29__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_29__*) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_29__*) #1

declare dso_local i32 @read_seq_tuple(%struct.TYPE_28__*, i32*, i32*) #1

declare dso_local %struct.TYPE_29__* @heap_copytuple(i32*) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @init_params(i32*, i32, i32, i32, i64, i64, i32*, i32**) #1

declare dso_local i64 @RelationNeedsWAL(%struct.TYPE_28__*) #1

declare dso_local i32 @GetTopTransactionId(...) #1

declare dso_local i32 @RelationSetNewRelfilenode(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @fill_seq_with_data(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @process_owned_by(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @CatalogTupleUpdate(%struct.TYPE_28__*, i32*, %struct.TYPE_29__*) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i64, i32) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i64) #1

declare dso_local i32 @table_close(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @relation_close(%struct.TYPE_28__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
