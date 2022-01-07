; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/table/extr_tableam.c_table_beginscan_parallel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/table/extr_tableam.c_table_beginscan_parallel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, i32, i32, i32*, %struct.TYPE_11__*, i32)* }
%struct.TYPE_11__ = type { i64, i32, i32 }

@SO_TYPE_SEQSCAN = common dso_local global i32 0, align 4
@SO_ALLOW_STRAT = common dso_local global i32 0, align 4
@SO_ALLOW_SYNC = common dso_local global i32 0, align 4
@SO_ALLOW_PAGEMODE = common dso_local global i32 0, align 4
@SO_TEMP_SNAPSHOT = common dso_local global i32 0, align 4
@SnapshotAny = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @table_beginscan_parallel(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %7 = load i32, i32* @SO_TYPE_SEQSCAN, align 4
  %8 = load i32, i32* @SO_ALLOW_STRAT, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @SO_ALLOW_SYNC, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SO_ALLOW_PAGEMODE, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = call i64 @RelationGetRelid(%struct.TYPE_10__* %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = bitcast %struct.TYPE_11__* %27 to i8*
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  %34 = call i32 @RestoreSnapshot(i8* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @RegisterSnapshot(i32 %35)
  %37 = load i32, i32* @SO_TEMP_SNAPSHOT, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %42

40:                                               ; preds = %2
  %41 = load i32, i32* @SnapshotAny, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %26
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_10__*, i32, i32, i32*, %struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_10__*, i32, i32, i32*, %struct.TYPE_11__*, i32)** %46, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 %47(%struct.TYPE_10__* %48, i32 %49, i32 0, i32* null, %struct.TYPE_11__* %50, i32 %51)
  ret i32 %52
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @RelationGetRelid(%struct.TYPE_10__*) #1

declare dso_local i32 @RestoreSnapshot(i8*) #1

declare dso_local i32 @RegisterSnapshot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
