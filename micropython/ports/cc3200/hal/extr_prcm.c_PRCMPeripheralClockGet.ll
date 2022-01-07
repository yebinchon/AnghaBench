; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_prcm.c_PRCMPeripheralClockGet.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_prcm.c_PRCMPeripheralClockGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRCM_SSPI = common dso_local global i64 0, align 8
@PRCM_LSPI = common dso_local global i64 0, align 8
@PRCM_GSPI = common dso_local global i64 0, align 8
@XTAL_CLK = common dso_local global i64 0, align 8
@PRCM_CAMERA = common dso_local global i64 0, align 8
@ARCM_BASE = common dso_local global i64 0, align 8
@APPS_RCM_O_CAMERA_CLK_GEN = common dso_local global i64 0, align 8
@PRCM_SDHOST = common dso_local global i64 0, align 8
@APPS_RCM_O_MMCHS_CLK_GEN = common dso_local global i64 0, align 8
@SYS_CLK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PRCMPeripheralClockGet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @PRCM_SSPI, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @PRCM_LSPI, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = or i32 %10, %14
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @PRCM_GSPI, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = or i32 %15, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i64, i64* @XTAL_CLK, align 8
  store i64 %23, i64* %2, align 8
  br label %72

24:                                               ; preds = %1
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @PRCM_CAMERA, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i64, i64* @ARCM_BASE, align 8
  %30 = load i64, i64* @APPS_RCM_O_CAMERA_CLK_GEN, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @HWREG(i64 %31)
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 7
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* @ARCM_BASE, align 8
  %37 = load i64, i64* @APPS_RCM_O_CAMERA_CLK_GEN, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @HWREG(i64 %38)
  %40 = and i32 %39, 255
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %6, align 8
  br label %63

42:                                               ; preds = %24
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @PRCM_SDHOST, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load i64, i64* @ARCM_BASE, align 8
  %48 = load i64, i64* @APPS_RCM_O_MMCHS_CLK_GEN, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @HWREG(i64 %49)
  %51 = ashr i32 %50, 8
  %52 = and i32 %51, 7
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* @ARCM_BASE, align 8
  %55 = load i64, i64* @APPS_RCM_O_MMCHS_CLK_GEN, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @HWREG(i64 %56)
  %58 = and i32 %57, 255
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %6, align 8
  br label %62

60:                                               ; preds = %42
  %61 = load i64, i64* @SYS_CLK, align 8
  store i64 %61, i64* %2, align 8
  br label %72

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62, %28
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %5, align 8
  %66 = add i64 %65, 1
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %67, 1
  %69 = add i64 %66, %68
  %70 = udiv i64 240000000, %69
  store i64 %70, i64* %4, align 8
  %71 = load i64, i64* %4, align 8
  store i64 %71, i64* %2, align 8
  br label %72

72:                                               ; preds = %64, %60, %22
  %73 = load i64, i64* %2, align 8
  ret i64 %73
}

declare dso_local i32 @HWREG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
