; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_vacuumlazy.c_lazy_cleanup_index.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_vacuumlazy.c_lazy_cleanup_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32 }

@elevel = common dso_local global i32 0, align 4
@vac_strategy = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@InvalidMultiXactId = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"index \22%s\22 now contains %.0f row versions in %u pages\00", align 1
@.str.1 = private unnamed_addr constant [103 x i8] c"%.0f index row versions were removed.\0A%u index pages have been deleted, %u are currently reusable.\0A%s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_12__*, %struct.TYPE_10__*)* @lazy_cleanup_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lazy_cleanup_index(i32 %0, %struct.TYPE_12__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %9 = call i32 @pg_rusage_init(i32* %8)
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 6
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @elevel, align 4
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 5
  store i32 %23, i32* %24, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 4
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @vac_strategy, align 4
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = call %struct.TYPE_12__* @index_vacuum_cleanup(%struct.TYPE_11__* %7, %struct.TYPE_12__* %31)
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %5, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = icmp ne %struct.TYPE_12__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %3
  br label %77

36:                                               ; preds = %3
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @InvalidTransactionId, align 4
  %50 = load i32, i32* @InvalidMultiXactId, align 4
  %51 = call i32 @vac_update_relstats(i32 %42, i32 %45, i32 %48, i32 0, i32 0, i32 %49, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %41, %36
  %53 = load i32, i32* @elevel, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @RelationGetRelationName(i32 %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58, i32 %61)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pg_rusage_show(i32* %8)
  %73 = call i32 @errdetail(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68, i32 %71, i32 %72)
  %74 = call i32 @ereport(i32 %53, i32 %73)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = call i32 @pfree(%struct.TYPE_12__* %75)
  br label %77

77:                                               ; preds = %52, %35
  ret void
}

declare dso_local i32 @pg_rusage_init(i32*) #1

declare dso_local %struct.TYPE_12__* @index_vacuum_cleanup(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @vac_update_relstats(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @errdetail(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pg_rusage_show(i32*) #1

declare dso_local i32 @pfree(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
