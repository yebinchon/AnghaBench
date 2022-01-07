; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_inval.c_xactGetCommittedInvalidationMessages.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_inval.c_xactGetCommittedInvalidationMessages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32* }

@transInvalInfo = common dso_local global %struct.TYPE_2__* null, align 8
@CurTransactionContext = common dso_local global i32 0, align 4
@MakeSharedInvalidMessagesArray = common dso_local global i32 0, align 4
@numSharedInvalidMessagesArray = common dso_local global i64 0, align 8
@SharedInvalidMessagesArray = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xactGetCommittedInvalidationMessages(i32** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transInvalInfo, align 8
  %8 = icmp eq %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32**, i32*** %4, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %3, align 4
  br label %56

12:                                               ; preds = %2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transInvalInfo, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transInvalInfo, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i1 [ false, %12 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transInvalInfo, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @CurTransactionContext, align 4
  %31 = call i32 @MemoryContextSwitchTo(i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transInvalInfo, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i32, i32* @MakeSharedInvalidMessagesArray, align 4
  %35 = call i32 @ProcessInvalidationMessagesMulti(i32* %33, i32 %34)
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transInvalInfo, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* @MakeSharedInvalidMessagesArray, align 4
  %39 = call i32 @ProcessInvalidationMessagesMulti(i32* %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @MemoryContextSwitchTo(i32 %40)
  %42 = load i64, i64* @numSharedInvalidMessagesArray, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %22
  %45 = load i32*, i32** @SharedInvalidMessagesArray, align 8
  %46 = icmp eq i32* %45, null
  br label %47

47:                                               ; preds = %44, %22
  %48 = phi i1 [ false, %22 ], [ %46, %44 ]
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @Assert(i32 %50)
  %52 = load i32*, i32** @SharedInvalidMessagesArray, align 8
  %53 = load i32**, i32*** %4, align 8
  store i32* %52, i32** %53, align 8
  %54 = load i64, i64* @numSharedInvalidMessagesArray, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %47, %9
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @ProcessInvalidationMessagesMulti(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
