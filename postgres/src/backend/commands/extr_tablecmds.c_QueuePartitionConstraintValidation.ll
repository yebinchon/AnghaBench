; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_QueuePartitionConstraintValidation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_QueuePartitionConstraintValidation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_18__ = type { i32, i32* }

@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"partition constraint for table \22%s\22 is implied by existing constraints\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"updated partition constraint for default partition \22%s\22 is implied by existing constraints\00", align 1
@RELKIND_RELATION = common dso_local global i64 0, align 8
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@AccessExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"unexpected whole-row reference found in partition constraint\00", align 1
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.TYPE_17__*, i32*, i32)* @QueuePartitionConstraintValidation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @QueuePartitionConstraintValidation(i32** %0, %struct.TYPE_17__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i64 @PartConstraintImpliedByRelConstraint(%struct.TYPE_17__* %15, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @DEBUG1, align 4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = call i32 @RelationGetRelationName(%struct.TYPE_17__* %24)
  %26 = call i32 @errmsg(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = call i32 @ereport(i32 %23, i32 %26)
  br label %34

28:                                               ; preds = %19
  %29 = load i32, i32* @DEBUG1, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %31 = call i32 @RelationGetRelationName(%struct.TYPE_17__* %30)
  %32 = call i32 @errmsg(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = call i32 @ereport(i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %28, %22
  br label %110

35:                                               ; preds = %4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RELKIND_RELATION, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %35
  %44 = load i32**, i32*** %5, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %46 = call %struct.TYPE_19__* @ATGetQueueEntry(i32** %44, %struct.TYPE_17__* %45)
  store %struct.TYPE_19__* %46, %struct.TYPE_19__** %9, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @Assert(i32 %51)
  %53 = load i32*, i32** %7, align 8
  %54 = call i64 @linitial(i32* %53)
  %55 = inttoptr i64 %54 to i32*
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %110

61:                                               ; preds = %35
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %109

69:                                               ; preds = %61
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %71 = call %struct.TYPE_18__* @RelationGetPartitionDesc(%struct.TYPE_17__* %70)
  store %struct.TYPE_18__* %71, %struct.TYPE_18__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %105, %69
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %108

78:                                               ; preds = %72
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @AccessExclusiveLock, align 4
  %87 = call %struct.TYPE_17__* @table_open(i32 %85, i32 %86)
  store %struct.TYPE_17__* %87, %struct.TYPE_17__** %12, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %91 = call i32* @map_partition_varattnos(i32* %88, i32 1, %struct.TYPE_17__* %89, %struct.TYPE_17__* %90, i32* %13)
  store i32* %91, i32** %14, align 8
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %78
  %95 = load i32, i32* @ERROR, align 4
  %96 = call i32 @elog(i32 %95, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %78
  %98 = load i32**, i32*** %5, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = load i32, i32* %8, align 4
  call void @QueuePartitionConstraintValidation(i32** %98, %struct.TYPE_17__* %99, i32* %100, i32 %101)
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %103 = load i32, i32* @NoLock, align 4
  %104 = call i32 @table_close(%struct.TYPE_17__* %102, i32 %103)
  br label %105

105:                                              ; preds = %97
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %72

108:                                              ; preds = %72
  br label %109

109:                                              ; preds = %108, %61
  br label %110

110:                                              ; preds = %34, %109, %43
  ret void
}

declare dso_local i64 @PartConstraintImpliedByRelConstraint(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_19__* @ATGetQueueEntry(i32**, %struct.TYPE_17__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @linitial(i32*) #1

declare dso_local %struct.TYPE_18__* @RelationGetPartitionDesc(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @table_open(i32, i32) #1

declare dso_local i32* @map_partition_varattnos(i32*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @table_close(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
