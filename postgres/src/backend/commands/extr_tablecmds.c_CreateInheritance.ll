; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_CreateInheritance.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_CreateInheritance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_18__ = type { i64, i64 }

@InheritsRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@Anum_pg_inherits_inhrelid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@InheritsRelidSeqnoIndexId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"relation \22%s\22 would be inherited from more than once\00", align 1
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_17__*)* @CreateInheritance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateInheritance(%struct.TYPE_17__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %11 = load i32, i32* @InheritsRelationId, align 4
  %12 = load i32, i32* @RowExclusiveLock, align 4
  %13 = call %struct.TYPE_17__* @table_open(i32 %11, i32 %12)
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %5, align 8
  %14 = load i32, i32* @Anum_pg_inherits_inhrelid, align 4
  %15 = load i32, i32* @BTEqualStrategyNumber, align 4
  %16 = load i32, i32* @F_OIDEQ, align 4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = call i64 @RelationGetRelid(%struct.TYPE_17__* %17)
  %19 = call i32 @ObjectIdGetDatum(i64 %18)
  %20 = call i32 @ScanKeyInit(i32* %7, i32 %14, i32 %15, i32 %16, i32 %19)
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = load i32, i32* @InheritsRelidSeqnoIndexId, align 4
  %23 = call i32 @systable_beginscan(%struct.TYPE_17__* %21, i32 %22, i32 1, i32* null, i32 1, i32* %7)
  store i32 %23, i32* %6, align 4
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %58, %2
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @systable_getnext(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = call i64 @HeapTupleIsValid(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @GETSTRUCT(i32 %30)
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %10, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = call i64 @RelationGetRelid(%struct.TYPE_17__* %37)
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %29
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_DUPLICATE_TABLE, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %45 = call i32 @RelationGetRelationName(%struct.TYPE_17__* %44)
  %46 = call i32 @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = call i32 @ereport(i32 %41, i32 %46)
  br label %48

48:                                               ; preds = %40, %29
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %54, %48
  br label %24

59:                                               ; preds = %24
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @systable_endscan(i32 %60)
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %64 = call i32 @MergeAttributesIntoExisting(%struct.TYPE_17__* %62, %struct.TYPE_17__* %63)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %67 = call i32 @MergeConstraintsIntoExisting(%struct.TYPE_17__* %65, %struct.TYPE_17__* %66)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %69 = call i64 @RelationGetRelid(%struct.TYPE_17__* %68)
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %71 = call i64 @RelationGetRelid(%struct.TYPE_17__* %70)
  %72 = load i64, i64* %9, align 8
  %73 = add nsw i64 %72, 1
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @StoreCatalogInheritance1(i64 %69, i64 %71, i64 %73, %struct.TYPE_17__* %74, i32 %82)
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %85 = load i32, i32* @RowExclusiveLock, align 4
  %86 = call i32 @table_close(%struct.TYPE_17__* %84, i32 %85)
  ret void
}

declare dso_local %struct.TYPE_17__* @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i64 @RelationGetRelid(%struct.TYPE_17__*) #1

declare dso_local i32 @systable_beginscan(%struct.TYPE_17__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_17__*) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @MergeAttributesIntoExisting(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @MergeConstraintsIntoExisting(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @StoreCatalogInheritance1(i64, i64, i64, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @table_close(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
