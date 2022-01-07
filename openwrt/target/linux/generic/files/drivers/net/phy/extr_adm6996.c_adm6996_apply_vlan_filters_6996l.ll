; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_apply_vlan_filters_6996l.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_apply_vlan_filters_6996l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm6996_priv = type { i64* }

@ADM_NUM_VLANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adm6996_priv*)* @adm6996_apply_vlan_filters_6996l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm6996_apply_vlan_filters_6996l(%struct.adm6996_priv* %0) #0 {
  %2 = alloca %struct.adm6996_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adm6996_priv* %0, %struct.adm6996_priv** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %34, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @ADM_NUM_VLANS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %6
  %11 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %12 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %10
  %21 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ADM_VLAN_MAP(i32 %22)
  %24 = call i32 @w16(%struct.adm6996_priv* %21, i32 %23, i32 0)
  br label %34

25:                                               ; preds = %10
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @ADM_VLAN_FILT(i64 %26)
  store i32 %27, i32* %4, align 4
  %28 = load %struct.adm6996_priv*, %struct.adm6996_priv** %2, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ADM_VLAN_MAP(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @w16(%struct.adm6996_priv* %28, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %20
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %6

37:                                               ; preds = %6
  ret void
}

declare dso_local i32 @w16(%struct.adm6996_priv*, i32, i32) #1

declare dso_local i32 @ADM_VLAN_MAP(i32) #1

declare dso_local i32 @ADM_VLAN_FILT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
