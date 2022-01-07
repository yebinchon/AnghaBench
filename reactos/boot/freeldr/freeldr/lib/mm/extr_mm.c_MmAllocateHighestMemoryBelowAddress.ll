; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/mm/extr_mm.c_MmAllocateHighestMemoryBelowAddress.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/mm/extr_mm.c_MmAllocateHighestMemoryBelowAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [75 x i8] c"MmAllocateHighestMemoryBelowAddress() called for 0 bytes. Returning NULL.\0A\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"Memory allocation failed: MmAllocateHighestMemoryBelowAddress() called for 0 bytes.\00", align 1
@MM_PAGE_SIZE = common dso_local global i64 0, align 8
@FreePagesInLookupTable = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [113 x i8] c"Memory allocation failed in MmAllocateHighestMemoryBelowAddress(). Not enough free memory to allocate %d bytes.\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Memory allocation failed: out of memory.\00", align 1
@PageLookupTableAddress = common dso_local global i32 0, align 4
@TotalPagesInLookupTable = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"Allocated %d bytes (%d pages) of memory starting at page %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Memory allocation pointer: 0x%x\0A\00", align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8
@LoaderPagesSpanned = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @MmAllocateHighestMemoryBelowAddress(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = call i32 @WARN(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @UiMessageBoxCritical(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %86

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i64, i64* @MM_PAGE_SIZE, align 8
  %20 = call i64 @ROUND_UP(i32 %18, i64 %19)
  %21 = load i64, i64* @MM_PAGE_SIZE, align 8
  %22 = sdiv i64 %20, %21
  store i64 %22, i64* %8, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = ptrtoint i32* %23 to i64
  %25 = load i64, i64* @MM_PAGE_SIZE, align 8
  %26 = sdiv i64 %24, %25
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* @FreePagesInLookupTable, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @ERR(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = call i32 @UiMessageBoxCritical(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %86

34:                                               ; preds = %17
  %35 = load i32, i32* @PageLookupTableAddress, align 4
  %36 = load i32, i32* @TotalPagesInLookupTable, align 4
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @MmFindAvailablePagesBeforePage(i32 %35, i32 %36, i64 %37, i64 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ERR(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = call i32 @UiMessageBoxCritical(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %86

46:                                               ; preds = %34
  %47 = load i32, i32* @PageLookupTableAddress, align 4
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @MmAllocatePagesInLookupTable(i32 %47, i64 %48, i64 %49, i32 %50)
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @FreePagesInLookupTable, align 8
  %54 = sub nsw i64 %53, %52
  store i64 %54, i64* @FreePagesInLookupTable, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @MM_PAGE_SIZE, align 8
  %57 = mul nsw i64 %55, %56
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %11, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i32*
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i32 (i8*, i32*, ...) @TRACE(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32* %61, i64 %62, i64 %63)
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 (i8*, i32*, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32* %65)
  %67 = load i32*, i32** %11, align 8
  %68 = ptrtoint i32* %67 to i64
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = load i64, i64* @PAGE_SHIFT, align 8
  %73 = ashr i64 %71, %72
  %74 = load i64, i64* @LoaderPagesSpanned, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %46
  %77 = load i32*, i32** %11, align 8
  %78 = ptrtoint i32* %77 to i64
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = load i64, i64* @PAGE_SHIFT, align 8
  %83 = ashr i64 %81, %82
  store i64 %83, i64* @LoaderPagesSpanned, align 8
  br label %84

84:                                               ; preds = %76, %46
  %85 = load i32*, i32** %11, align 8
  store i32* %85, i32** %4, align 8
  br label %86

86:                                               ; preds = %84, %42, %30, %14
  %87 = load i32*, i32** %4, align 8
  ret i32* %87
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @UiMessageBoxCritical(i8*) #1

declare dso_local i64 @ROUND_UP(i32, i64) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i64 @MmFindAvailablePagesBeforePage(i32, i32, i64, i64) #1

declare dso_local i32 @MmAllocatePagesInLookupTable(i32, i64, i64, i32) #1

declare dso_local i32 @TRACE(i8*, i32*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
