; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mt7530.c_mt7530_apply_mapping.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mt7530.c_mt7530_apply_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7530_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mt7530_mapping = type { i32*, i32*, i32*, i32* }

@MT7530_NUM_PORTS = common dso_local global i32 0, align 4
@MT7530_NUM_VLANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7530_priv*, %struct.mt7530_mapping*)* @mt7530_apply_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7530_apply_mapping(%struct.mt7530_priv* %0, %struct.mt7530_mapping* %1) #0 {
  %3 = alloca %struct.mt7530_priv*, align 8
  %4 = alloca %struct.mt7530_mapping*, align 8
  %5 = alloca i32, align 4
  store %struct.mt7530_priv* %0, %struct.mt7530_priv** %3, align 8
  store %struct.mt7530_mapping* %1, %struct.mt7530_mapping** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %25, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MT7530_NUM_PORTS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = load %struct.mt7530_mapping*, %struct.mt7530_mapping** %4, align 8
  %12 = getelementptr inbounds %struct.mt7530_mapping, %struct.mt7530_mapping* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mt7530_priv*, %struct.mt7530_priv** %3, align 8
  %19 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %17, i32* %24, align 4
  br label %25

25:                                               ; preds = %10
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %6

28:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %76, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @MT7530_NUM_VLANS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %79

33:                                               ; preds = %29
  %34 = load %struct.mt7530_mapping*, %struct.mt7530_mapping** %4, align 8
  %35 = getelementptr inbounds %struct.mt7530_mapping, %struct.mt7530_mapping* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mt7530_priv*, %struct.mt7530_priv** %3, align 8
  %42 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i32 %40, i32* %47, align 4
  %48 = load %struct.mt7530_mapping*, %struct.mt7530_mapping** %4, align 8
  %49 = getelementptr inbounds %struct.mt7530_mapping, %struct.mt7530_mapping* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mt7530_priv*, %struct.mt7530_priv** %3, align 8
  %56 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %54, i32* %61, align 4
  %62 = load %struct.mt7530_mapping*, %struct.mt7530_mapping** %4, align 8
  %63 = getelementptr inbounds %struct.mt7530_mapping, %struct.mt7530_mapping* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mt7530_priv*, %struct.mt7530_priv** %3, align 8
  %70 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %68, i32* %75, align 4
  br label %76

76:                                               ; preds = %33
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %29

79:                                               ; preds = %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
