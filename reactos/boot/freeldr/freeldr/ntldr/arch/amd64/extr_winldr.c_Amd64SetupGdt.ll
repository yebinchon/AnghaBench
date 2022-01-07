; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/arch/amd64/extr_winldr.c_Amd64SetupGdt.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/arch/amd64/extr_winldr.c_Amd64SetupGdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Amd64SetupGdt(GdtBase = %p, TssBase = %p)\0A\00", align 1
@KGDT64_NULL = common dso_local global i32 0, align 4
@KGDT64_R0_CODE = common dso_local global i32 0, align 4
@KGDT64_R0_DATA = common dso_local global i32 0, align 4
@KGDT64_R3_CMCODE = common dso_local global i32 0, align 4
@KGDT64_R3_DATA = common dso_local global i32 0, align 4
@KGDT64_R3_CODE = common dso_local global i32 0, align 4
@KGDT64_R3_CMTEB = common dso_local global i32 0, align 4
@KGDT64_SYS_TSS = common dso_local global i32 0, align 4
@I386_TSS = common dso_local global i32 0, align 4
@NUM_GDT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Leave Amd64SetupGdt()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @Amd64SetupGdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Amd64SetupGdt(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_2__, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @KGDT64_NULL, align 4
  %13 = call i64 @KiGetGdtEntry(i32 %11, i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to i32*
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @KGDT64_R0_CODE, align 4
  %18 = call i64 @KiGetGdtEntry(i32 %16, i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = inttoptr i64 %19 to i32*
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @KGDT64_R0_DATA, align 4
  %23 = call i64 @KiGetGdtEntry(i32 %21, i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = inttoptr i64 %24 to i32*
  store i32 65535, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @KGDT64_R3_CMCODE, align 4
  %28 = call i64 @KiGetGdtEntry(i32 %26, i32 %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = inttoptr i64 %29 to i32*
  store i32 65535, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @KGDT64_R3_DATA, align 4
  %33 = call i64 @KiGetGdtEntry(i32 %31, i32 %32)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = inttoptr i64 %34 to i32*
  store i32 65535, i32* %35, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @KGDT64_R3_CODE, align 4
  %38 = call i64 @KiGetGdtEntry(i32 %36, i32 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = inttoptr i64 %39 to i32*
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @KGDT64_R3_CMTEB, align 4
  %43 = call i64 @KiGetGdtEntry(i32 %41, i32 %42)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = inttoptr i64 %44 to i32*
  store i32 1342192640, i32* %45, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @KGDT64_SYS_TSS, align 4
  %48 = call i64 @KiGetGdtEntry(i32 %46, i32 %47)
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @I386_TSS, align 4
  %52 = call i32 @KiInitGdtEntry(i64 %49, i32 %50, i32 4, i32 %51, i32 0)
  %53 = load i32, i32* %4, align 4
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @NUM_GDT, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = sub i64 %57, 1
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %62 = call i32 @__lgdt(i32* %61)
  %63 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i64 @KiGetGdtEntry(i32, i32) #1

declare dso_local i32 @KiInitGdtEntry(i64, i32, i32, i32, i32) #1

declare dso_local i32 @__lgdt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
