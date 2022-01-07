; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ath79_set_pllval.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ath79_set_pllval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32, i32, i64*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ath79_set_pllval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath79_set_pllval(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %5 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %6 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %5, i32 0, i32 3
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 1
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %3, align 8
  %10 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %11 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %49

15:                                               ; preds = %1
  %16 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %17 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %37 [
    i32 130, label %19
    i32 129, label %25
    i32 128, label %31
  ]

19:                                               ; preds = %15
  %20 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %21 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 2
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %4, align 8
  br label %39

25:                                               ; preds = %15
  %26 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %27 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %4, align 8
  br label %39

31:                                               ; preds = %15
  %32 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %33 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %4, align 8
  br label %39

37:                                               ; preds = %15
  %38 = call i32 (...) @BUG()
  br label %39

39:                                               ; preds = %37, %31, %25, %19
  %40 = load i64, i64* %4, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %44 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @regmap_write(i32 %45, i64 %46, i64 %47)
  br label %49

49:                                               ; preds = %14, %42, %39
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @regmap_write(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
