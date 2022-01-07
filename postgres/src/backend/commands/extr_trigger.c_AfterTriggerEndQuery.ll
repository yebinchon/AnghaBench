; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_AfterTriggerEndQuery.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_trigger.c_AfterTriggerEndQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i32* }

@afterTriggers = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AfterTriggerEndQuery(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @afterTriggers, i32 0, i32 0), align 8
  %7 = icmp uge i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @Assert(i32 %8)
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @afterTriggers, i32 0, i32 0), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @afterTriggers, i32 0, i32 1), align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @afterTriggers, i32 0, i32 0), align 8
  %15 = add i64 %14, -1
  store i64 %15, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @afterTriggers, i32 0, i32 0), align 8
  br label %67

16:                                               ; preds = %1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @afterTriggers, i32 0, i32 2), align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @afterTriggers, i32 0, i32 0), align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 %18
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %3, align 8
  br label %20

20:                                               ; preds = %59, %16
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = call i64 @afterTriggerMarkEvents(%struct.TYPE_9__* %22, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @afterTriggers, i32 0, i32 4), i32 1)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %20
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @afterTriggers, i32 0, i32 3), align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @afterTriggers, i32 0, i32 3), align 8
  store i32 %26, i32* %4, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %5, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %4, align 4
  %35 = load i32*, i32** %2, align 8
  %36 = call i64 @afterTriggerInvokeEvents(%struct.TYPE_9__* %33, i32 %34, i32* %35, i32 0)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %60

39:                                               ; preds = %25
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @afterTriggers, i32 0, i32 2), align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @afterTriggers, i32 0, i32 0), align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %41
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %3, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @Assert(i32 %45)
  br label %47

47:                                               ; preds = %54, %39
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = icmp ne i32* %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = call i32 @afterTriggerDeleteHeadEventChunk(%struct.TYPE_7__* %55)
  br label %47

57:                                               ; preds = %47
  br label %59

58:                                               ; preds = %20
  br label %60

59:                                               ; preds = %57
  br label %20

60:                                               ; preds = %58, %38
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @afterTriggers, i32 0, i32 2), align 8
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @afterTriggers, i32 0, i32 0), align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 %62
  %64 = call i32 @AfterTriggerFreeQuery(%struct.TYPE_7__* %63)
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @afterTriggers, i32 0, i32 0), align 8
  %66 = add i64 %65, -1
  store i64 %66, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @afterTriggers, i32 0, i32 0), align 8
  br label %67

67:                                               ; preds = %60, %13
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @afterTriggerMarkEvents(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i64 @afterTriggerInvokeEvents(%struct.TYPE_9__*, i32, i32*, i32) #1

declare dso_local i32 @afterTriggerDeleteHeadEventChunk(%struct.TYPE_7__*) #1

declare dso_local i32 @AfterTriggerFreeQuery(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
