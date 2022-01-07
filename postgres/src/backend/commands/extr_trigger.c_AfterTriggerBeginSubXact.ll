; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_AfterTriggerBeginSubXact.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_AfterTriggerBeginSubXact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32* }

@afterTriggers = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@TopTransactionContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AfterTriggerBeginSubXact() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @GetCurrentTransactionNestLevel()
  store i32 %3, i32* %1, align 4
  br label %4

4:                                                ; preds = %26, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @afterTriggers, i32 0, i32 0), align 8
  %7 = icmp sge i32 %5, %6
  br i1 %7, label %8, label %27

8:                                                ; preds = %4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @afterTriggers, i32 0, i32 0), align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i32, i32* @TopTransactionContext, align 4
  %13 = call i64 @MemoryContextAlloc(i32 %12, i32 192)
  %14 = inttoptr i64 %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @afterTriggers, i32 0, i32 2), align 8
  store i32 8, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @afterTriggers, i32 0, i32 0), align 8
  br label %26

15:                                               ; preds = %8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @afterTriggers, i32 0, i32 0), align 8
  %17 = mul nsw i32 %16, 2
  store i32 %17, i32* %2, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @afterTriggers, i32 0, i32 2), align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 24
  %22 = trunc i64 %21 to i32
  %23 = call i64 @repalloc(%struct.TYPE_4__* %18, i32 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @afterTriggers, i32 0, i32 2), align 8
  %25 = load i32, i32* %2, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @afterTriggers, i32 0, i32 0), align 8
  br label %26

26:                                               ; preds = %15, %11
  br label %4

27:                                               ; preds = %4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @afterTriggers, i32 0, i32 2), align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @afterTriggers, i32 0, i32 4), align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @afterTriggers, i32 0, i32 2), align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store i32 %33, i32* %38, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @afterTriggers, i32 0, i32 3), align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @afterTriggers, i32 0, i32 2), align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %39, i32* %44, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @afterTriggers, i32 0, i32 1), align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @afterTriggers, i32 0, i32 2), align 8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %45, i32* %50, align 8
  ret void
}

declare dso_local i32 @GetCurrentTransactionNestLevel(...) #1

declare dso_local i64 @MemoryContextAlloc(i32, i32) #1

declare dso_local i64 @repalloc(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
