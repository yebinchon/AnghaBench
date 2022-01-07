; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeForeignscan.c_ForeignNext.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeForeignscan.c_ForeignNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_21__*, i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_15__ = type { {}*, {}* }
%struct.TYPE_20__ = type { i64, i64 }

@CMD_SELECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_19__*)* @ForeignNext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @ForeignNext(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %4, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %5, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @MemoryContextSwitchTo(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CMD_SELECT, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = bitcast {}** %31 to %struct.TYPE_18__* (%struct.TYPE_19__*)**
  %33 = load %struct.TYPE_18__* (%struct.TYPE_19__*)*, %struct.TYPE_18__* (%struct.TYPE_19__*)** %32, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %35 = call %struct.TYPE_18__* %33(%struct.TYPE_19__* %34)
  store %struct.TYPE_18__* %35, %struct.TYPE_18__** %3, align 8
  br label %45

36:                                               ; preds = %1
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = bitcast {}** %40 to %struct.TYPE_18__* (%struct.TYPE_19__*)**
  %42 = load %struct.TYPE_18__* (%struct.TYPE_19__*)*, %struct.TYPE_18__* (%struct.TYPE_19__*)** %41, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %44 = call %struct.TYPE_18__* %42(%struct.TYPE_19__* %43)
  store %struct.TYPE_18__* %44, %struct.TYPE_18__** %3, align 8
  br label %45

45:                                               ; preds = %36, %27
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @MemoryContextSwitchTo(i32 %46)
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %45
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = call i32 @TupIsNull(%struct.TYPE_18__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @RelationGetRelid(i32 %60)
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %56, %52, %45
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  ret %struct.TYPE_18__* %65
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @TupIsNull(%struct.TYPE_18__*) #1

declare dso_local i32 @RelationGetRelid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
