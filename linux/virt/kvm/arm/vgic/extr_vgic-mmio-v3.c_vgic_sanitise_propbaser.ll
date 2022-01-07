; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v3.c_vgic_sanitise_propbaser.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-mmio-v3.c_vgic_sanitise_propbaser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GICR_PROPBASER_SHAREABILITY_MASK = common dso_local global i32 0, align 4
@GICR_PROPBASER_SHAREABILITY_SHIFT = common dso_local global i32 0, align 4
@vgic_sanitise_shareability = common dso_local global i32 0, align 4
@GICR_PROPBASER_INNER_CACHEABILITY_MASK = common dso_local global i32 0, align 4
@GICR_PROPBASER_INNER_CACHEABILITY_SHIFT = common dso_local global i32 0, align 4
@vgic_sanitise_inner_cacheability = common dso_local global i32 0, align 4
@GICR_PROPBASER_OUTER_CACHEABILITY_MASK = common dso_local global i32 0, align 4
@GICR_PROPBASER_OUTER_CACHEABILITY_SHIFT = common dso_local global i32 0, align 4
@vgic_sanitise_outer_cacheability = common dso_local global i32 0, align 4
@PROPBASER_RES0_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vgic_sanitise_propbaser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_sanitise_propbaser(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @GICR_PROPBASER_SHAREABILITY_MASK, align 4
  %5 = load i32, i32* @GICR_PROPBASER_SHAREABILITY_SHIFT, align 4
  %6 = load i32, i32* @vgic_sanitise_shareability, align 4
  %7 = call i32 @vgic_sanitise_field(i32 %3, i32 %4, i32 %5, i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @GICR_PROPBASER_INNER_CACHEABILITY_MASK, align 4
  %10 = load i32, i32* @GICR_PROPBASER_INNER_CACHEABILITY_SHIFT, align 4
  %11 = load i32, i32* @vgic_sanitise_inner_cacheability, align 4
  %12 = call i32 @vgic_sanitise_field(i32 %8, i32 %9, i32 %10, i32 %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @GICR_PROPBASER_OUTER_CACHEABILITY_MASK, align 4
  %15 = load i32, i32* @GICR_PROPBASER_OUTER_CACHEABILITY_SHIFT, align 4
  %16 = load i32, i32* @vgic_sanitise_outer_cacheability, align 4
  %17 = call i32 @vgic_sanitise_field(i32 %13, i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* @PROPBASER_RES0_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %2, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @vgic_sanitise_field(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
