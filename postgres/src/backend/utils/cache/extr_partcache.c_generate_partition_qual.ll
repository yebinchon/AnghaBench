; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_partcache.c_generate_partition_qual.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_partcache.c_generate_partition_qual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32*, i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@NIL = common dso_local global i32* null, align 8
@AccessShareLock = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@Anum_pg_class_relpartbound = common dso_local global i32 0, align 4
@PartitionBoundSpec = common dso_local global i32 0, align 4
@bound = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"unexpected whole-row reference found in partition key\00", align 1
@CacheMemoryContext = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"partition constraint\00", align 1
@ALLOCSET_SMALL_SIZES = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_13__*)* @generate_partition_qual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @generate_partition_qual(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %12 = load i32*, i32** @NIL, align 8
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** @NIL, align 8
  store i32* %13, i32** %9, align 8
  %14 = call i32 (...) @check_stack_depth()
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32* @copyObject(i32* %22)
  store i32* %23, i32** %2, align 8
  br label %138

24:                                               ; preds = %1
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = call i32 @RelationGetRelid(%struct.TYPE_13__* %25)
  %27 = call i32 @get_partition_parent(i32 %26)
  %28 = load i32, i32* @AccessShareLock, align 4
  %29 = call %struct.TYPE_13__* @relation_open(i32 %27, i32 %28)
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %10, align 8
  %30 = load i32, i32* @RELOID, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = call i32 @RelationGetRelid(%struct.TYPE_13__* %31)
  %33 = call i32 @SearchSysCache1(i32 %30, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @HeapTupleIsValid(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %24
  %38 = load i32, i32* @ERROR, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = call i32 @RelationGetRelid(%struct.TYPE_13__* %39)
  %41 = call i32 (i32, i8*, ...) @elog(i32 %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %37, %24
  %43 = load i32, i32* @RELOID, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @Anum_pg_class_relpartbound, align 4
  %46 = call i32 @SysCacheGetAttr(i32 %43, i32 %44, i32 %45, i32* %7)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @PartitionBoundSpec, align 4
  %51 = load i32, i32* @bound, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* @PartitionBoundSpec, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @TextDatumGetCString(i32 %54)
  %56 = call i32 @stringToNode(i32 %55)
  %57 = call i32 @castNode(i32 %53, i32 %56)
  store i32 %57, i32* @bound, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %60 = load i32, i32* @bound, align 4
  %61 = call i32* @get_qual_from_partbound(%struct.TYPE_13__* %58, %struct.TYPE_13__* %59, i32 %60)
  store i32* %61, i32** %8, align 8
  br label %62

62:                                               ; preds = %49, %42
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @ReleaseSysCache(i32 %63)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %73 = call i32* @generate_partition_qual(%struct.TYPE_13__* %72)
  %74 = load i32*, i32** %8, align 8
  %75 = call i32* @list_concat(i32* %73, i32* %74)
  store i32* %75, i32** %9, align 8
  br label %78

76:                                               ; preds = %62
  %77 = load i32*, i32** %8, align 8
  store i32* %77, i32** %9, align 8
  br label %78

78:                                               ; preds = %76, %71
  %79 = load i32*, i32** %9, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %82 = call i32* @map_partition_varattnos(i32* %79, i32 1, %struct.TYPE_13__* %80, %struct.TYPE_13__* %81, i32* %11)
  store i32* %82, i32** %9, align 8
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* @ERROR, align 4
  %87 = call i32 (i32, i8*, ...) @elog(i32 %86, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %78
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  %93 = zext i1 %92 to i32
  %94 = call i32 @Assert(i32 %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32*, i32** @NIL, align 8
  %99 = icmp eq i32* %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @Assert(i32 %100)
  %102 = load i32*, i32** %9, align 8
  %103 = load i32*, i32** @NIL, align 8
  %104 = icmp ne i32* %102, %103
  br i1 %104, label %105, label %127

105:                                              ; preds = %88
  %106 = load i32, i32* @CacheMemoryContext, align 4
  %107 = load i32, i32* @ALLOCSET_SMALL_SIZES, align 4
  %108 = call i32* @AllocSetContextCreate(i32 %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 2
  store i32* %108, i32** %110, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %115 = call i32 @RelationGetRelationName(%struct.TYPE_13__* %114)
  %116 = call i32 @MemoryContextCopyAndSetIdentifier(i32* %113, i32 %115)
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = call i32* @MemoryContextSwitchTo(i32* %119)
  store i32* %120, i32** %5, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = call i32* @copyObject(i32* %121)
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  store i32* %122, i32** %124, align 8
  %125 = load i32*, i32** %5, align 8
  %126 = call i32* @MemoryContextSwitchTo(i32* %125)
  br label %131

127:                                              ; preds = %88
  %128 = load i32*, i32** @NIL, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  store i32* %128, i32** %130, align 8
  br label %131

131:                                              ; preds = %127, %105
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  store i32 1, i32* %133, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %135 = load i32, i32* @NoLock, align 4
  %136 = call i32 @relation_close(%struct.TYPE_13__* %134, i32 %135)
  %137 = load i32*, i32** %9, align 8
  store i32* %137, i32** %2, align 8
  br label %138

138:                                              ; preds = %131, %19
  %139 = load i32*, i32** %2, align 8
  ret i32* %139
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32* @copyObject(i32*) #1

declare dso_local %struct.TYPE_13__* @relation_open(i32, i32) #1

declare dso_local i32 @get_partition_parent(i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_13__*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32 @castNode(i32, i32) #1

declare dso_local i32 @stringToNode(i32) #1

declare dso_local i32 @TextDatumGetCString(i32) #1

declare dso_local i32* @get_qual_from_partbound(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32* @list_concat(i32*, i32*) #1

declare dso_local i32* @map_partition_varattnos(i32*, i32, %struct.TYPE_13__*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextCopyAndSetIdentifier(i32*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_13__*) #1

declare dso_local i32* @MemoryContextSwitchTo(i32*) #1

declare dso_local i32 @relation_close(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
