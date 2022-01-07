; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_init_vlan.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_init_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*)* @rtl8366_init_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366_init_vlan(%struct.rtl8366_smi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtl8366_smi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %3, align 8
  %7 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %8 = call i32 @rtl8366_reset_vlan(%struct.rtl8366_smi* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %68

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %62, %13
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %17 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %65

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %23 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %28 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 1, %29
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %40

32:                                               ; preds = %20
  %33 = load i32, i32* %4, align 4
  %34 = shl i32 1, %33
  %35 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %36 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 1, %37
  %39 = or i32 %34, %38
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %32, %26
  %41 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @rtl8366_set_vlan(%struct.rtl8366_smi* %41, i32 %43, i32 %44, i32 %45, i32 0)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %68

51:                                               ; preds = %40
  %52 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i32 @rtl8366_set_pvid(%struct.rtl8366_smi* %52, i32 %53, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %68

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %14

65:                                               ; preds = %14
  %66 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %3, align 8
  %67 = call i32 @rtl8366_enable_vlan(%struct.rtl8366_smi* %66, i32 1)
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %65, %59, %49, %11
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @rtl8366_reset_vlan(%struct.rtl8366_smi*) #1

declare dso_local i32 @rtl8366_set_vlan(%struct.rtl8366_smi*, i32, i32, i32, i32) #1

declare dso_local i32 @rtl8366_set_pvid(%struct.rtl8366_smi*, i32, i32) #1

declare dso_local i32 @rtl8366_enable_vlan(%struct.rtl8366_smi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
