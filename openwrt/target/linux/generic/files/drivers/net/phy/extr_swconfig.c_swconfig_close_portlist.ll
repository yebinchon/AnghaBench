; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_close_portlist.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_close_portlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swconfig_callback = type { i64*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swconfig_callback*, i8*)* @swconfig_close_portlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swconfig_close_portlist(%struct.swconfig_callback* %0, i8* %1) #0 {
  %3 = alloca %struct.swconfig_callback*, align 8
  %4 = alloca i8*, align 8
  store %struct.swconfig_callback* %0, %struct.swconfig_callback** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.swconfig_callback*, %struct.swconfig_callback** %3, align 8
  %6 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load %struct.swconfig_callback*, %struct.swconfig_callback** %3, align 8
  %13 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.swconfig_callback*, %struct.swconfig_callback** %3, align 8
  %16 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @nla_nest_end(i32 %14, i64 %19)
  br label %21

21:                                               ; preds = %11, %2
  ret i32 0
}

declare dso_local i32 @nla_nest_end(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
