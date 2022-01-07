; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/mm/extr_mm.c_MmAllocateMemoryWithType.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/mm/extr_mm.c_MmAllocateMemoryWithType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [56 x i8] c"MmAllocateMemory() called for 0 bytes. Returning NULL.\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Memory allocation failed: MmAllocateMemory() called for 0 bytes.\00", align 1
@MM_PAGE_SIZE = common dso_local global i32 0, align 4
@FreePagesInLookupTable = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [94 x i8] c"Memory allocation failed in MmAllocateMemory(). Not enough free memory to allocate %d bytes.\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Memory allocation failed: out of memory.\00", align 1
@PageLookupTableAddress = common dso_local global i32 0, align 4
@TotalPagesInLookupTable = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [76 x i8] c"Allocated %d bytes (%d pages) of memory (type %ld) starting at page 0x%lx.\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Memory allocation pointer: 0x%x\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@LoaderPagesSpanned = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @MmAllocateMemoryWithType(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = call i32 @WARN(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @UiMessageBoxCritical(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %88

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ROUND_UP(i32 %15, i32 4)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @MM_PAGE_SIZE, align 4
  %19 = call i32 @ROUND_UP(i32 %17, i32 %18)
  %20 = load i32, i32* @MM_PAGE_SIZE, align 4
  %21 = sdiv i32 %19, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* @FreePagesInLookupTable, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @ERR(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = call i32 @UiMessageBoxCritical(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %88

30:                                               ; preds = %14
  %31 = load i32, i32* @PageLookupTableAddress, align 4
  %32 = load i32, i32* @TotalPagesInLookupTable, align 4
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* @FALSE, align 4
  %35 = call i64 @MmFindAvailablePages(i32 %31, i32 %32, i64 %33, i32 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @ERR(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = call i32 @UiMessageBoxCritical(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %88

42:                                               ; preds = %30
  %43 = load i32, i32* @PageLookupTableAddress, align 4
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @MmAllocatePagesInLookupTable(i32 %43, i64 %44, i64 %45, i32 %46)
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @FreePagesInLookupTable, align 8
  %50 = sub nsw i64 %49, %48
  store i64 %50, i64* @FreePagesInLookupTable, align 8
  %51 = load i64, i64* %7, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* @MM_PAGE_SIZE, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %8, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i64, i64* %6, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i64, i64* %7, align 8
  %61 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0), i32 %57, i64 %58, i32 %59, i64 %60)
  %62 = load i32*, i32** %8, align 8
  %63 = ptrtoint i32* %62 to i32
  %64 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %63)
  %65 = load i32*, i32** %8, align 8
  %66 = ptrtoint i32* %65 to i32
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* @PAGE_SIZE, align 4
  %70 = add nsw i32 %68, %69
  %71 = sub nsw i32 %70, 1
  %72 = load i32, i32* @PAGE_SHIFT, align 4
  %73 = ashr i32 %71, %72
  %74 = load i32, i32* @LoaderPagesSpanned, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %42
  %77 = load i32*, i32** %8, align 8
  %78 = ptrtoint i32* %77 to i32
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* @PAGE_SIZE, align 4
  %82 = add nsw i32 %80, %81
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* @PAGE_SHIFT, align 4
  %85 = ashr i32 %83, %84
  store i32 %85, i32* @LoaderPagesSpanned, align 4
  br label %86

86:                                               ; preds = %76, %42
  %87 = load i32*, i32** %8, align 8
  store i32* %87, i32** %3, align 8
  br label %88

88:                                               ; preds = %86, %38, %26, %11
  %89 = load i32*, i32** %3, align 8
  ret i32* %89
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @UiMessageBoxCritical(i8*) #1

declare dso_local i32 @ROUND_UP(i32, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i64 @MmFindAvailablePages(i32, i32, i64, i32) #1

declare dso_local i32 @MmAllocatePagesInLookupTable(i32, i64, i64, i32) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
