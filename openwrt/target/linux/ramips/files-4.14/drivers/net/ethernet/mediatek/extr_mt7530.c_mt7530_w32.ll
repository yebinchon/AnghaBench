; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mt7530.c_mt7530_w32.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mt7530.c_mt7530_w32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7530_priv = type { i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"MT7530 MDIO Write[%04x]=%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7530_priv*, i32, i32)* @mt7530_w32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7530_w32(%struct.mt7530_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mt7530_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mt7530_priv* %0, %struct.mt7530_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %8 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %3
  %12 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 6
  %17 = and i32 %16, 1023
  %18 = call i32 @mdiobus_write(i64 %14, i32 31, i32 31, i32 %17)
  %19 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %20 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = ashr i32 %22, 2
  %24 = and i32 %23, 15
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 65535
  %27 = call i32 @mdiobus_write(i64 %21, i32 31, i32 %24, i32 %26)
  %28 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %29 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 16
  %33 = call i32 @mdiobus_write(i64 %30, i32 31, i32 16, i32 %32)
  br label %46

34:                                               ; preds = %3
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %40 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = call i32 @iowrite32(i32 %38, i64 %44)
  br label %46

46:                                               ; preds = %34, %11
  ret void
}

declare dso_local i32 @mdiobus_write(i64, i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
