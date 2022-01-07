; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/mm/extr_heap.c_FrLdrHeapRelease.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/mm/extr_heap.c_FrLdrHeapRelease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [17 x i8] c"HeapRelease(%p)\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@MM_PAGE_SIZE = common dso_local global i64 0, align 8
@PageLookupTableAddress = common dso_local global i32 0, align 4
@LoaderFree = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"HeapRelease() done, freed %lu of %lu pages\0A\00", align 1
@REDZONE_MARK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FrLdrHeapRelease(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %4, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = call i32 (i8*, %struct.TYPE_9__*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %5, align 8
  br label %15

15:                                               ; preds = %89, %1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %97

20:                                               ; preds = %15
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %89

26:                                               ; preds = %20
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = call i64 @ALIGN_UP_POINTER_BY(i32 %29, i32 %30)
  store i64 %31, i64* %6, align 8
  br label %32

32:                                               ; preds = %37, %26
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 1
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %5, align 8
  br label %32

45:                                               ; preds = %32
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = call i64 @ALIGN_UP_POINTER_BY(i32 %53, i32 %54)
  store i64 %55, i64* %7, align 8
  br label %62

56:                                               ; preds = %45
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = call i64 @ALIGN_DOWN_POINTER_BY(i32 %59, i32 %60)
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %56, %50
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %62
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %6, align 8
  %69 = sub nsw i64 %67, %68
  %70 = load i64, i64* @MM_PAGE_SIZE, align 8
  %71 = sdiv i64 %69, %70
  store i64 %71, i64* %8, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %9, align 8
  %75 = load i32, i32* @PageLookupTableAddress, align 4
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @MM_PAGE_SIZE, align 8
  %78 = sdiv i64 %76, %77
  %79 = load i64, i64* %8, align 8
  %80 = load i32, i32* @LoaderFree, align 4
  %81 = call i32 @MmMarkPagesInLookupTable(i32 %75, i64 %78, i64 %79, i32 %80)
  br label %82

82:                                               ; preds = %66, %62
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %97

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %25
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i64 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i64 %95
  store %struct.TYPE_10__* %96, %struct.TYPE_10__** %5, align 8
  br label %15

97:                                               ; preds = %87, %15
  %98 = load i64, i64* %9, align 8
  %99 = inttoptr i64 %98 to %struct.TYPE_9__*
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @MM_PAGE_SIZE, align 8
  %104 = sdiv i64 %102, %103
  %105 = call i32 (i8*, %struct.TYPE_9__*, ...) @TRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_9__* %99, i64 %104)
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_9__*, ...) #1

declare dso_local i64 @ALIGN_UP_POINTER_BY(i32, i32) #1

declare dso_local i64 @ALIGN_DOWN_POINTER_BY(i32, i32) #1

declare dso_local i32 @MmMarkPagesInLookupTable(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
