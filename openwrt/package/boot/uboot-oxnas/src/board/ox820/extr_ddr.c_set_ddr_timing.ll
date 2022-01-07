; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/board/ox820/extr_ddr.c_set_ddr_timing.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/board/ox820/extr_ddr.c_set_ddr_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DDR_PHY_TIMING_W_RST = common dso_local global i32 0, align 4
@DDR_PHY_TIMING_I_RST = common dso_local global i32 0, align 4
@DDR_PHY_TIMING = common dso_local global i32 0, align 4
@DDR_PHY_TIMING_CK = common dso_local global i32 0, align 4
@DDR_PHY_TIMING_INC = common dso_local global i32 0, align 4
@DDR_PHY_TIMING_W_CE = common dso_local global i32 0, align 4
@DDR_PHY_TIMING_I_CE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_ddr_timing(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 16, i32* %6, align 4
  store i32 32, i32* %7, align 4
  %8 = load i32, i32* @DDR_PHY_TIMING_W_RST, align 4
  %9 = load i32, i32* @DDR_PHY_TIMING_I_RST, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @DDR_PHY_TIMING, align 4
  %12 = call i32 @writel(i32 %10, i32 %11)
  %13 = load i32, i32* @DDR_PHY_TIMING_W_RST, align 4
  %14 = load i32, i32* @DDR_PHY_TIMING_I_RST, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @DDR_PHY_TIMING_CK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @DDR_PHY_TIMING, align 4
  %19 = call i32 @writel(i32 %17, i32 %18)
  %20 = load i32, i32* @DDR_PHY_TIMING_W_RST, align 4
  %21 = load i32, i32* @DDR_PHY_TIMING_I_RST, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @DDR_PHY_TIMING, align 4
  %24 = call i32 @writel(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %40, %2
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @DDR_PHY_TIMING_INC, align 4
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %40

37:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, -1
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i32, i32* @DDR_PHY_TIMING_W_CE, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @DDR_PHY_TIMING, align 4
  %45 = call i32 @writel(i32 %43, i32 %44)
  %46 = load i32, i32* @DDR_PHY_TIMING_CK, align 4
  %47 = load i32, i32* @DDR_PHY_TIMING_W_CE, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @DDR_PHY_TIMING, align 4
  %52 = call i32 @writel(i32 %50, i32 %51)
  %53 = load i32, i32* @DDR_PHY_TIMING_W_CE, align 4
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @DDR_PHY_TIMING, align 4
  %57 = call i32 @writel(i32 %55, i32 %56)
  br label %25

58:                                               ; preds = %25
  br label %59

59:                                               ; preds = %74, %58
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %92

63:                                               ; preds = %59
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* @DDR_PHY_TIMING_INC, align 4
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %74

71:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  %72 = load i32, i32* %7, align 4
  %73 = add i32 %72, -1
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %71, %67
  %75 = load i32, i32* @DDR_PHY_TIMING_I_CE, align 4
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @DDR_PHY_TIMING, align 4
  %79 = call i32 @writel(i32 %77, i32 %78)
  %80 = load i32, i32* @DDR_PHY_TIMING_CK, align 4
  %81 = load i32, i32* @DDR_PHY_TIMING_I_CE, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @DDR_PHY_TIMING, align 4
  %86 = call i32 @writel(i32 %84, i32 %85)
  %87 = load i32, i32* @DDR_PHY_TIMING_I_CE, align 4
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @DDR_PHY_TIMING, align 4
  %91 = call i32 @writel(i32 %89, i32 %90)
  br label %59

92:                                               ; preds = %59
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
