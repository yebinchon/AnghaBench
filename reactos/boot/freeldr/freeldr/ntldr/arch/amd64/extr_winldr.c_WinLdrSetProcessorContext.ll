; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/arch/amd64/extr_winldr.c_WinLdrSetProcessorContext.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/arch/amd64/extr_winldr.c_WinLdrSetProcessorContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"WinLdrSetProcessorContext\0A\00", align 1
@PxeBase = common dso_local global i64 0, align 8
@GdtIdt = common dso_local global i64 0, align 8
@KSEG0_BASE = common dso_local global i32 0, align 4
@TssBasePage = common dso_local global i32 0, align 4
@MM_PAGE_SHIFT = common dso_local global i32 0, align 4
@NUM_GDT = common dso_local global i32 0, align 4
@KGDT64_SYS_TSS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"leave WinLdrSetProcessorContext\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WinLdrSetProcessorContext() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 (...) @_disable()
  %4 = call i32 @__writeeflags(i32 0)
  %5 = load i64, i64* @PxeBase, align 8
  %6 = call i32 @__writecr3(i64 %5)
  %7 = load i64, i64* @GdtIdt, align 8
  %8 = load i32, i32* @KSEG0_BASE, align 4
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %7, %9
  store i64 %10, i64* @GdtIdt, align 8
  %11 = load i64, i64* @GdtIdt, align 8
  %12 = load i32, i32* @KSEG0_BASE, align 4
  %13 = load i32, i32* @TssBasePage, align 4
  %14 = load i32, i32* @MM_PAGE_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = or i32 %12, %15
  %17 = call i32 @Amd64SetupGdt(i64 %11, i32 %16)
  %18 = load i64, i64* @GdtIdt, align 8
  %19 = load i32, i32* @NUM_GDT, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = add i64 %18, %21
  %23 = call i32 @Amd64SetupIdt(i64 %22)
  %24 = load i32, i32* @KGDT64_SYS_TSS, align 4
  %25 = call i32 @__ltr(i32 %24)
  %26 = call i32 @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @_disable(...) #1

declare dso_local i32 @__writeeflags(i32) #1

declare dso_local i32 @__writecr3(i64) #1

declare dso_local i32 @Amd64SetupGdt(i64, i32) #1

declare dso_local i32 @Amd64SetupIdt(i64) #1

declare dso_local i32 @__ltr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
