; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/table/extr_tableam.c_table_beginscan_catalog.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/table/extr_tableam.c_table_beginscan_catalog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32, i32, %struct.ScanKeyData*, i32*, i32)* }
%struct.ScanKeyData = type { i32 }

@SO_TYPE_SEQSCAN = common dso_local global i32 0, align 4
@SO_ALLOW_STRAT = common dso_local global i32 0, align 4
@SO_ALLOW_SYNC = common dso_local global i32 0, align 4
@SO_ALLOW_PAGEMODE = common dso_local global i32 0, align 4
@SO_TEMP_SNAPSHOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @table_beginscan_catalog(%struct.TYPE_7__* %0, i32 %1, %struct.ScanKeyData* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ScanKeyData*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ScanKeyData* %2, %struct.ScanKeyData** %6, align 8
  %10 = load i32, i32* @SO_TYPE_SEQSCAN, align 4
  %11 = load i32, i32* @SO_ALLOW_STRAT, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SO_ALLOW_SYNC, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SO_ALLOW_PAGEMODE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SO_TEMP_SNAPSHOT, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = call i32 @RelationGetRelid(%struct.TYPE_7__* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @GetCatalogSnapshot(i32 %21)
  %23 = call i32 @RegisterSnapshot(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_7__*, i32, i32, %struct.ScanKeyData*, i32*, i32)*, i32 (%struct.TYPE_7__*, i32, i32, %struct.ScanKeyData*, i32*, i32)** %27, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.ScanKeyData*, %struct.ScanKeyData** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 %28(%struct.TYPE_7__* %29, i32 %30, i32 %31, %struct.ScanKeyData* %32, i32* null, i32 %33)
  ret i32 %34
}

declare dso_local i32 @RelationGetRelid(%struct.TYPE_7__*) #1

declare dso_local i32 @RegisterSnapshot(i32) #1

declare dso_local i32 @GetCatalogSnapshot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
