; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_inval.c_AtEOXact_Inval.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_inval.c_AtEOXact_Inval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32, i32* }

@transInvalInfo = common dso_local global %struct.TYPE_2__* null, align 8
@SendSharedInvalidMessages = common dso_local global i32 0, align 4
@LocalExecuteInvalidationMessage = common dso_local global i32 0, align 4
@SharedInvalidMessagesArray = common dso_local global i32* null, align 8
@numSharedInvalidMessagesArray = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AtEOXact_Inval(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transInvalInfo, align 8
  %4 = icmp eq %struct.TYPE_2__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %52

6:                                                ; preds = %1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transInvalInfo, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transInvalInfo, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i1 [ false, %6 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @Assert(i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %16
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transInvalInfo, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 (...) @RelationCacheInitFilePreInvalidate()
  br label %29

29:                                               ; preds = %27, %22
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transInvalInfo, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transInvalInfo, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = call i32 @AppendInvalidationMessages(i32* %31, i32* %33)
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transInvalInfo, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* @SendSharedInvalidMessages, align 4
  %38 = call i32 @ProcessInvalidationMessagesMulti(i32* %36, i32 %37)
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transInvalInfo, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = call i32 (...) @RelationCacheInitFilePostInvalidate()
  br label %45

45:                                               ; preds = %43, %29
  br label %51

46:                                               ; preds = %16
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @transInvalInfo, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* @LocalExecuteInvalidationMessage, align 4
  %50 = call i32 @ProcessInvalidationMessages(i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %45
  store %struct.TYPE_2__* null, %struct.TYPE_2__** @transInvalInfo, align 8
  store i32* null, i32** @SharedInvalidMessagesArray, align 8
  store i64 0, i64* @numSharedInvalidMessagesArray, align 8
  br label %52

52:                                               ; preds = %51, %5
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @RelationCacheInitFilePreInvalidate(...) #1

declare dso_local i32 @AppendInvalidationMessages(i32*, i32*) #1

declare dso_local i32 @ProcessInvalidationMessagesMulti(i32*, i32) #1

declare dso_local i32 @RelationCacheInitFilePostInvalidate(...) #1

declare dso_local i32 @ProcessInvalidationMessages(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
