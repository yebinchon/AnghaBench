; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_esw_rt3050.c_esw_interrupt.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_esw_rt3050.c_esw_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt305x_esw = type { i32 }

@RT305X_ESW_REG_ISR = common dso_local global i32 0, align 4
@RT305X_ESW_PORT_ST_CHG = common dso_local global i32 0, align 4
@RT305X_ESW_REG_POA = common dso_local global i32 0, align 4
@RT305X_ESW_POA_LINK_SHIFT = common dso_local global i32 0, align 4
@RT305X_ESW_POA_LINK_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"link changed 0x%02X\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @esw_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esw_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rt305x_esw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.rt305x_esw*
  store %struct.rt305x_esw* %9, %struct.rt305x_esw** %5, align 8
  %10 = load %struct.rt305x_esw*, %struct.rt305x_esw** %5, align 8
  %11 = load i32, i32* @RT305X_ESW_REG_ISR, align 4
  %12 = call i32 @esw_r32(%struct.rt305x_esw* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @RT305X_ESW_PORT_ST_CHG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load %struct.rt305x_esw*, %struct.rt305x_esw** %5, align 8
  %19 = load i32, i32* @RT305X_ESW_REG_POA, align 4
  %20 = call i32 @esw_r32(%struct.rt305x_esw* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @RT305X_ESW_POA_LINK_SHIFT, align 4
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @RT305X_ESW_POA_LINK_MASK, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load %struct.rt305x_esw*, %struct.rt305x_esw** %5, align 8
  %28 = getelementptr inbounds %struct.rt305x_esw, %struct.rt305x_esw* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @dev_info(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %17, %2
  %33 = load %struct.rt305x_esw*, %struct.rt305x_esw** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @RT305X_ESW_REG_ISR, align 4
  %36 = call i32 @esw_w32(%struct.rt305x_esw* %33, i32 %34, i32 %35)
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %37
}

declare dso_local i32 @esw_r32(%struct.rt305x_esw*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @esw_w32(%struct.rt305x_esw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
