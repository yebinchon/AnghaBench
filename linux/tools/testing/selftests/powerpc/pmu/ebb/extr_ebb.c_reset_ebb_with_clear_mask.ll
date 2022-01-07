; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_ebb.c_reset_ebb_with_clear_mask.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/ebb/extr_ebb.c_reset_ebb_with_clear_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPRN_MMCR0 = common dso_local global i32 0, align 4
@MMCR0_PMAE = common dso_local global i64 0, align 8
@SPRN_BESCRR = common dso_local global i32 0, align 4
@BESCR_PMEO = common dso_local global i64 0, align 8
@SPRN_BESCRS = common dso_local global i32 0, align 4
@BESCR_PME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_ebb_with_clear_mask(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @SPRN_MMCR0, align 4
  %5 = call i64 @mfspr(i32 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i32, i32* @SPRN_MMCR0, align 4
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* %2, align 8
  %9 = xor i64 %8, -1
  %10 = and i64 %7, %9
  %11 = load i64, i64* @MMCR0_PMAE, align 8
  %12 = or i64 %10, %11
  %13 = call i32 @mtspr(i32 %6, i64 %12)
  %14 = load i32, i32* @SPRN_BESCRR, align 4
  %15 = load i64, i64* @BESCR_PMEO, align 8
  %16 = call i32 @mtspr(i32 %14, i64 %15)
  %17 = load i32, i32* @SPRN_BESCRS, align 4
  %18 = load i64, i64* @BESCR_PME, align 8
  %19 = call i32 @mtspr(i32 %17, i64 %18)
  ret void
}

declare dso_local i64 @mfspr(i32) #1

declare dso_local i32 @mtspr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
