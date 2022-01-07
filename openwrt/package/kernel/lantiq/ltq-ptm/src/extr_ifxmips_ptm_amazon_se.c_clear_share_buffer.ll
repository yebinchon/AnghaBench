; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_amazon_se.c_clear_share_buffer.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-ptm/src/extr_ifxmips_ptm_amazon_se.c_clear_share_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SB_RAM0_DWLEN = common dso_local global i32 0, align 4
@SB_RAM1_DWLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @clear_share_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_share_buffer() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = call i32* @SB_RAM0_ADDR(i32 0)
  store i32* %3, i32** %1, align 8
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @SB_RAM0_DWLEN, align 4
  %7 = load i32, i32* @SB_RAM1_DWLEN, align 4
  %8 = add i32 %6, %7
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = load i32*, i32** %1, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %1, align 8
  %13 = ptrtoint i32* %11 to i32
  %14 = call i32 @IFX_REG_W32(i32 0, i32 %13)
  br label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %2, align 4
  br label %4

18:                                               ; preds = %4
  ret void
}

declare dso_local i32* @SB_RAM0_ADDR(i32) #1

declare dso_local i32 @IFX_REG_W32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
