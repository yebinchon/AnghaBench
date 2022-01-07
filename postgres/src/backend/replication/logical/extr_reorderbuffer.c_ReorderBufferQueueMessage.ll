; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_reorderbuffer.c_ReorderBufferQueueMessage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_reorderbuffer.c_ReorderBufferQueueMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*, i32*, i32, i32, i8*, i32, i8*)*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }

@InvalidTransactionId = common dso_local global i64 0, align 8
@REORDER_BUFFER_CHANGE_MESSAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReorderBufferQueueMessage(%struct.TYPE_15__* %0, i64 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, i8* %7) #0 {
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %70

23:                                               ; preds = %8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @InvalidTransactionId, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @Assert(i32 %27)
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @MemoryContextSwitchTo(i32 %31)
  store i32 %32, i32* %17, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %34 = call %struct.TYPE_14__* @ReorderBufferGetChange(%struct.TYPE_15__* %33)
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %18, align 8
  %35 = load i32, i32* @REORDER_BUFFER_CHANGE_MESSAGE, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i8*, i8** %14, align 8
  %39 = call i32 @pstrdup(i8* %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @palloc(i32 %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %16, align 8
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @memcpy(i32 %59, i8* %60, i32 %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %67 = call i32 @ReorderBufferQueueChange(%struct.TYPE_15__* %63, i64 %64, i32 %65, %struct.TYPE_14__* %66)
  %68 = load i32, i32* %17, align 4
  %69 = call i32 @MemoryContextSwitchTo(i32 %68)
  br label %99

70:                                               ; preds = %8
  store i32* null, i32** %19, align 8
  %71 = load i32, i32* %11, align 4
  store volatile i32 %71, i32* %20, align 4
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* @InvalidTransactionId, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32* @ReorderBufferTXNByXid(%struct.TYPE_15__* %76, i64 %77, i32 1, i32* null, i32 %78, i32 1)
  store i32* %79, i32** %19, align 8
  br label %80

80:                                               ; preds = %75, %70
  %81 = load volatile i32, i32* %20, align 4
  %82 = call i32 @SetupHistoricSnapshot(i32 %81, i32* null)
  %83 = call i32 (...) @PG_TRY()
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32 (%struct.TYPE_15__*, i32*, i32, i32, i8*, i32, i8*)*, i32 (%struct.TYPE_15__*, i32*, i32, i32, i8*, i32, i8*)** %85, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %88 = load i32*, i32** %19, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i8*, i8** %14, align 8
  %91 = load i32, i32* %15, align 4
  %92 = load i8*, i8** %16, align 8
  %93 = call i32 %86(%struct.TYPE_15__* %87, i32* %88, i32 %89, i32 0, i8* %90, i32 %91, i8* %92)
  %94 = call i32 @TeardownHistoricSnapshot(i32 0)
  %95 = call i32 (...) @PG_CATCH()
  %96 = call i32 @TeardownHistoricSnapshot(i32 1)
  %97 = call i32 (...) @PG_RE_THROW()
  %98 = call i32 (...) @PG_END_TRY()
  br label %99

99:                                               ; preds = %80, %23
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_14__* @ReorderBufferGetChange(%struct.TYPE_15__*) #1

declare dso_local i32 @pstrdup(i8*) #1

declare dso_local i32 @palloc(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @ReorderBufferQueueChange(%struct.TYPE_15__*, i64, i32, %struct.TYPE_14__*) #1

declare dso_local i32* @ReorderBufferTXNByXid(%struct.TYPE_15__*, i64, i32, i32*, i32, i32) #1

declare dso_local i32 @SetupHistoricSnapshot(i32, i32*) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @TeardownHistoricSnapshot(i32) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @PG_RE_THROW(...) #1

declare dso_local i32 @PG_END_TRY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
