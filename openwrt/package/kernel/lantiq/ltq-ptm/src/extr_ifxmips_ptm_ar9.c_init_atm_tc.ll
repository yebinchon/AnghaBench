; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_ar9.c_init_atm_tc.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_ar9.c_init_atm_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RFBI_CFG = common dso_local global i32 0, align 4
@SFSM_DBA0 = common dso_local global i32 0, align 4
@SFSM_DBA1 = common dso_local global i32 0, align 4
@SFSM_CBA0 = common dso_local global i32 0, align 4
@SFSM_CBA1 = common dso_local global i32 0, align 4
@SFSM_CFG0 = common dso_local global i32 0, align 4
@SFSM_CFG1 = common dso_local global i32 0, align 4
@FFSM_DBA0 = common dso_local global i32 0, align 4
@FFSM_DBA1 = common dso_local global i32 0, align 4
@FFSM_CFG0 = common dso_local global i32 0, align 4
@FFSM_CFG1 = common dso_local global i32 0, align 4
@FFSM_IDLE_HEAD_BC0 = common dso_local global i32 0, align 4
@FFSM_IDLE_HEAD_BC1 = common dso_local global i32 0, align 4
@SW_P2_CTL = common dso_local global i32 0, align 4
@DM_RXCFG = common dso_local global i32 0, align 4
@DS_RXCFG = common dso_local global i32 0, align 4
@DM_RXDB = common dso_local global i32 0, align 4
@DS_RXDB = common dso_local global i32 0, align 4
@DM_RXCB = common dso_local global i32 0, align 4
@DS_RXCB = common dso_local global i32 0, align 4
@DM_RXPGCNT = common dso_local global i32 0, align 4
@DS_RXPGCNT = common dso_local global i32 0, align 4
@DM_RXPKTCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_atm_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_atm_tc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @RFBI_CFG, align 4
  %4 = call i32 @IFX_REG_W32(i32 0, i32 %3)
  %5 = load i32, i32* @SFSM_DBA0, align 4
  %6 = call i32 @IFX_REG_W32(i32 6144, i32 %5)
  %7 = load i32, i32* @SFSM_DBA1, align 4
  %8 = call i32 @IFX_REG_W32(i32 6433, i32 %7)
  %9 = load i32, i32* @SFSM_CBA0, align 4
  %10 = call i32 @IFX_REG_W32(i32 6722, i32 %9)
  %11 = load i32, i32* @SFSM_CBA1, align 4
  %12 = call i32 @IFX_REG_W32(i32 6739, i32 %11)
  %13 = load i32, i32* @SFSM_CFG0, align 4
  %14 = call i32 @IFX_REG_W32(i32 81937, i32 %13)
  %15 = load i32, i32* @SFSM_CFG1, align 4
  %16 = call i32 @IFX_REG_W32(i32 81937, i32 %15)
  %17 = load i32, i32* @FFSM_DBA0, align 4
  %18 = call i32 @IFX_REG_W32(i32 4096, i32 %17)
  %19 = load i32, i32* @FFSM_DBA1, align 4
  %20 = call i32 @IFX_REG_W32(i32 5888, i32 %19)
  %21 = load i32, i32* @FFSM_CFG0, align 4
  %22 = call i32 @IFX_REG_W32(i32 196620, i32 %21)
  %23 = load i32, i32* @FFSM_CFG1, align 4
  %24 = call i32 @IFX_REG_W32(i32 196620, i32 %23)
  %25 = load i32, i32* @FFSM_IDLE_HEAD_BC0, align 4
  %26 = call i32 @IFX_REG_W32(i32 -254738432, i32 %25)
  %27 = load i32, i32* @FFSM_IDLE_HEAD_BC1, align 4
  %28 = call i32 @IFX_REG_W32(i32 -254738432, i32 %27)
  %29 = load i32, i32* @SW_P2_CTL, align 4
  %30 = call i32 @IFX_REG_R32(i32 %29)
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* @SW_P2_CTL, align 4
  %32 = call i32 @IFX_REG_W32(i32 1073872896, i32 %31)
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %38, %0
  %34 = load i32, i32* %1, align 4
  %35 = icmp slt i32 %34, 200
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = call i32 @udelay(i32 2000)
  br label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %33

41:                                               ; preds = %33
  %42 = load i32, i32* @DM_RXCFG, align 4
  %43 = call i32 @IFX_REG_W32(i32 28712, i32 %42)
  %44 = load i32, i32* @DS_RXCFG, align 4
  %45 = call i32 @IFX_REG_W32(i32 28712, i32 %44)
  %46 = load i32, i32* @DM_RXDB, align 4
  %47 = call i32 @IFX_REG_W32(i32 4352, i32 %46)
  %48 = load i32, i32* @DS_RXDB, align 4
  %49 = call i32 @IFX_REG_W32(i32 4352, i32 %48)
  %50 = load i32, i32* @DM_RXCB, align 4
  %51 = call i32 @IFX_REG_W32(i32 5632, i32 %50)
  %52 = load i32, i32* @DS_RXCB, align 4
  %53 = call i32 @IFX_REG_W32(i32 5632, i32 %52)
  %54 = load i32, i32* @DM_RXPGCNT, align 4
  %55 = call i32 @IFX_REG_W32(i32 0, i32 %54)
  %56 = load i32, i32* @DS_RXPGCNT, align 4
  %57 = call i32 @IFX_REG_W32(i32 0, i32 %56)
  %58 = load i32, i32* @DM_RXPKTCNT, align 4
  %59 = call i32 @IFX_REG_W32(i32 0, i32 %58)
  %60 = load i32, i32* @DM_RXCFG, align 4
  %61 = call i32 @IFX_REG_W32_MASK(i32 0, i32 -2147483648, i32 %60)
  %62 = load i32, i32* @DS_RXCFG, align 4
  %63 = call i32 @IFX_REG_W32_MASK(i32 0, i32 32768, i32 %62)
  %64 = call i32 @udelay(i32 2000)
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* @SW_P2_CTL, align 4
  %67 = call i32 @IFX_REG_W32(i32 %65, i32 %66)
  %68 = call i32 @udelay(i32 2000)
  ret void
}

declare dso_local i32 @IFX_REG_W32(i32, i32) #1

declare dso_local i32 @IFX_REG_R32(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @IFX_REG_W32_MASK(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
