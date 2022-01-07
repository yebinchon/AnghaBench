; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/arch/i386/extr_winldr.c_WinLdrSetupMachineDependent.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/arch/i386/extr_winldr.c_WinLdrSetupMachineDependent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }

@MACHINE_TYPE_ISA = common dso_local global i32 0, align 4
@MM_PAGE_SIZE = common dso_local global i32 0, align 4
@LoaderStartupPcrPage = common dso_local global i32 0, align 4
@MM_PAGE_SHIFT = common dso_local global i32 0, align 4
@PcrBasePage = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Could not allocate PCR.\00", align 1
@LoaderMemoryData = common dso_local global i32 0, align 4
@TssBasePage = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Could not allocate TSS.\00", align 1
@NUM_GDT = common dso_local global i32 0, align 4
@NUM_IDT = common dso_local global i32 0, align 4
@GdtIdt = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Could not allocate pages for GDT+IDT!\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"MempAllocatePageTables failed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WinLdrSetupMachineDependent(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* @MACHINE_TYPE_ISA, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 8
  %17 = load i32, i32* @MM_PAGE_SIZE, align 4
  %18 = mul nsw i32 2, %17
  %19 = load i32, i32* @LoaderStartupPcrPage, align 4
  %20 = call i64 @MmAllocateMemoryWithType(i32 %18, i32 %19)
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MM_PAGE_SHIFT, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* @PcrBasePage, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = call i32 @UiMessageBox(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %89

29:                                               ; preds = %1
  %30 = load i32, i32* @MM_PAGE_SIZE, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 4, %31
  %33 = load i32, i32* @MM_PAGE_SIZE, align 4
  %34 = sub nsw i32 %33, 1
  %35 = xor i32 %34, -1
  %36 = sext i32 %35 to i64
  %37 = and i64 %32, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @LoaderMemoryData, align 4
  %41 = call i64 @MmAllocateMemoryWithType(i32 %39, i32 %40)
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @MM_PAGE_SHIFT, align 4
  %45 = ashr i32 %43, %44
  store i32 %45, i32* @TssBasePage, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %29
  %49 = call i32 @UiMessageBox(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %89

50:                                               ; preds = %29
  %51 = load i32, i32* @NUM_GDT, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = load i32, i32* @NUM_IDT, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = add i64 %53, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @MM_PAGE_SIZE, align 4
  %61 = add nsw i32 %59, %60
  %62 = sub nsw i32 %61, 1
  %63 = load i32, i32* @MM_PAGE_SHIFT, align 4
  %64 = ashr i32 %62, %63
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @MM_PAGE_SIZE, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* @LoaderMemoryData, align 4
  %69 = call i64 @MmAllocateMemoryWithType(i32 %67, i32 %68)
  %70 = inttoptr i64 %69 to i32*
  store i32* %70, i32** @GdtIdt, align 8
  %71 = load i32*, i32** @GdtIdt, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %50
  %74 = call i32 @UiMessageBox(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %89

75:                                               ; preds = %50
  %76 = load i32*, i32** @GdtIdt, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @MM_PAGE_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = call i32 @RtlZeroMemory(i32* %76, i32 %79)
  %81 = call i64 (...) @MempAllocatePageTables()
  %82 = load i64, i64* @FALSE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = call i32 @BugCheck(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %75
  %87 = call i32 (...) @WinLdrMapSpecialPages()
  %88 = call i32 (...) @WinLdrSetupSpecialDataPointers()
  br label %89

89:                                               ; preds = %86, %73, %48, %27
  ret void
}

declare dso_local i64 @MmAllocateMemoryWithType(i32, i32) #1

declare dso_local i32 @UiMessageBox(i8*) #1

declare dso_local i32 @RtlZeroMemory(i32*, i32) #1

declare dso_local i64 @MempAllocatePageTables(...) #1

declare dso_local i32 @BugCheck(i8*) #1

declare dso_local i32 @WinLdrMapSpecialPages(...) #1

declare dso_local i32 @WinLdrSetupSpecialDataPointers(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
