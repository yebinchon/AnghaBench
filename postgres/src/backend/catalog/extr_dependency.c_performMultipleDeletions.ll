; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_dependency.c_performMultipleDeletions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_dependency.c_performMultipleDeletions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }

@DependRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@DEPFLAG_ORIGINAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @performMultipleDeletions(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sle i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %70

16:                                               ; preds = %3
  %17 = load i32, i32* @DependRelationId, align 4
  %18 = load i32, i32* @RowExclusiveLock, align 4
  %19 = call i32 @table_open(i32 %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = call %struct.TYPE_9__* (...) @new_object_addresses()
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %43, %16
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @AcquireDeletionLock(i32* %34, i32 %35)
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* @DEPFLAG_ORIGINAL, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = call i32 @findDependentObjects(i32* %37, i32 %38, i32 %39, i32* null, %struct.TYPE_9__* %40, %struct.TYPE_9__* %41, i32* %7)
  br label %43

43:                                               ; preds = %27
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %21

46:                                               ; preds = %21
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  br label %59

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %54
  %60 = phi i32* [ %57, %54 ], [ null, %58 ]
  %61 = call i32 @reportDependentObjects(%struct.TYPE_9__* %47, i32 %48, i32 %49, i32* %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @deleteObjectsInList(%struct.TYPE_9__* %62, i32* %7, i32 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = call i32 @free_object_addresses(%struct.TYPE_9__* %65)
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @RowExclusiveLock, align 4
  %69 = call i32 @table_close(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %59, %15
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_9__* @new_object_addresses(...) #1

declare dso_local i32 @AcquireDeletionLock(i32*, i32) #1

declare dso_local i32 @findDependentObjects(i32*, i32, i32, i32*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @reportDependentObjects(%struct.TYPE_9__*, i32, i32, i32*) #1

declare dso_local i32 @deleteObjectsInList(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @free_object_addresses(%struct.TYPE_9__*) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
