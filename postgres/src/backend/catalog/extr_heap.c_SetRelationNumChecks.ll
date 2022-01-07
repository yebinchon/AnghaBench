; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_SetRelationNumChecks.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_SetRelationNumChecks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@RelationRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for relation %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @SetRelationNumChecks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetRelationNumChecks(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @RelationRelationId, align 4
  %9 = load i32, i32* @RowExclusiveLock, align 4
  %10 = call i32 @table_open(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @RELOID, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @RelationGetRelid(i32 %12)
  %14 = call i32 @ObjectIdGetDatum(i32 %13)
  %15 = call %struct.TYPE_8__* @SearchSysCacheCopy1(i32 %11, i32 %14)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = call i32 @HeapTupleIsValid(%struct.TYPE_8__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ERROR, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @RelationGetRelid(i32 %21)
  %23 = call i32 @elog(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %19, %2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = call i64 @GETSTRUCT(%struct.TYPE_8__* %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %7, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %24
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = call i32 @CatalogTupleUpdate(i32 %37, i32* %39, %struct.TYPE_8__* %40)
  br label %45

42:                                               ; preds = %24
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @CacheInvalidateRelcache(i32 %43)
  br label %45

45:                                               ; preds = %42, %33
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = call i32 @heap_freetuple(%struct.TYPE_8__* %46)
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @RowExclusiveLock, align 4
  %50 = call i32 @table_close(i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_8__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_8__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_8__*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @CacheInvalidateRelcache(i32) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_8__*) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
