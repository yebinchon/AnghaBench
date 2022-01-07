; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_nl.c_mt753x_nl_parse_find_gsw.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_nl.c_mt753x_nl_parse_find_gsw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32 }
%struct.genl_info = type { %struct.nlattr** }
%struct.nlattr = type { i32 }

@MT753X_ATTR_TYPE_DEV_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gsw_mt753x* (%struct.genl_info*)* @mt753x_nl_parse_find_gsw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gsw_mt753x* @mt753x_nl_parse_find_gsw(%struct.genl_info* %0) #0 {
  %2 = alloca %struct.genl_info*, align 8
  %3 = alloca %struct.gsw_mt753x*, align 8
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca i32, align 4
  store %struct.genl_info* %0, %struct.genl_info** %2, align 8
  %6 = load %struct.genl_info*, %struct.genl_info** %2, align 8
  %7 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %6, i32 0, i32 0
  %8 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %9 = load i64, i64* @MT753X_ATTR_TYPE_DEV_ID, align 8
  %10 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %8, i64 %9
  %11 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  store %struct.nlattr* %11, %struct.nlattr** %4, align 8
  %12 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %1
  %15 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %16 = call i32 @nla_get_s32(%struct.nlattr* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.gsw_mt753x* @mt753x_get_gsw(i32 %20)
  store %struct.gsw_mt753x* %21, %struct.gsw_mt753x** %3, align 8
  br label %24

22:                                               ; preds = %14
  %23 = call %struct.gsw_mt753x* (...) @mt753x_get_first_gsw()
  store %struct.gsw_mt753x* %23, %struct.gsw_mt753x** %3, align 8
  br label %24

24:                                               ; preds = %22, %19
  br label %27

25:                                               ; preds = %1
  %26 = call %struct.gsw_mt753x* (...) @mt753x_get_first_gsw()
  store %struct.gsw_mt753x* %26, %struct.gsw_mt753x** %3, align 8
  br label %27

27:                                               ; preds = %25, %24
  %28 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %3, align 8
  ret %struct.gsw_mt753x* %28
}

declare dso_local i32 @nla_get_s32(%struct.nlattr*) #1

declare dso_local %struct.gsw_mt753x* @mt753x_get_gsw(i32) #1

declare dso_local %struct.gsw_mt753x* @mt753x_get_first_gsw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
