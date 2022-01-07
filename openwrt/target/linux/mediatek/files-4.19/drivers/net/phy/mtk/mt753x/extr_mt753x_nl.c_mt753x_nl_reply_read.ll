; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_nl.c_mt753x_nl_reply_read.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_nl.c_mt753x_nl_reply_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i32 }
%struct.gsw_mt753x = type { i32 (%struct.gsw_mt753x*, i64, i64)*, i32 (%struct.gsw_mt753x*, i64, i64, i64)* }
%struct.sk_buff = type { i32 }

@MT753X_ATTR_TYPE_PHY = common dso_local global i32 0, align 4
@MT753X_ATTR_TYPE_DEVAD = common dso_local global i32 0, align 4
@MT753X_ATTR_TYPE_REG = common dso_local global i32 0, align 4
@MT753X_CMD_READ = common dso_local global i32 0, align 4
@MT753X_ATTR_TYPE_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.gsw_mt753x*)* @mt753x_nl_reply_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt753x_nl_reply_read(%struct.genl_info* %0, %struct.gsw_mt753x* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.gsw_mt753x*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.genl_info* %0, %struct.genl_info** %4, align 8
  store %struct.gsw_mt753x* %1, %struct.gsw_mt753x** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %13 = load i32, i32* @MT753X_ATTR_TYPE_PHY, align 4
  %14 = call i64 @mt753x_nl_get_s32(%struct.genl_info* %12, i32 %13, i32 -1)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %16 = load i32, i32* @MT753X_ATTR_TYPE_DEVAD, align 4
  %17 = call i64 @mt753x_nl_get_s32(%struct.genl_info* %15, i32 %16, i32 -1)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %19 = load i32, i32* @MT753X_ATTR_TYPE_REG, align 4
  %20 = call i64 @mt753x_nl_get_s32(%struct.genl_info* %18, i32 %19, i32 -1)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %80

24:                                               ; preds = %2
  %25 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %26 = load i32, i32* @MT753X_CMD_READ, align 4
  %27 = call i32 @mt753x_nl_prepare_reply(%struct.genl_info* %25, i32 %26, %struct.sk_buff** %6)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %80

31:                                               ; preds = %24
  %32 = load i64, i64* %7, align 8
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = load i64, i64* %8, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %39 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %38, i32 0, i32 0
  %40 = load i32 (%struct.gsw_mt753x*, i64, i64)*, i32 (%struct.gsw_mt753x*, i64, i64)** %39, align 8
  %41 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 %40(%struct.gsw_mt753x* %41, i64 %42, i64 %43)
  store i32 %44, i32* %10, align 4
  br label %54

45:                                               ; preds = %34
  %46 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %47 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %46, i32 0, i32 1
  %48 = load i32 (%struct.gsw_mt753x*, i64, i64, i64)*, i32 (%struct.gsw_mt753x*, i64, i64, i64)** %47, align 8
  %49 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 %48(%struct.gsw_mt753x* %49, i64 %50, i64 %51, i64 %52)
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %45, %37
  br label %59

55:                                               ; preds = %31
  %56 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @mt753x_reg_read(%struct.gsw_mt753x* %56, i64 %57)
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %55, %54
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = load i32, i32* @MT753X_ATTR_TYPE_REG, align 4
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @nla_put_s32(%struct.sk_buff* %60, i32 %61, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %80

68:                                               ; preds = %59
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = load i32, i32* @MT753X_ATTR_TYPE_VAL, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @nla_put_s32(%struct.sk_buff* %69, i32 %70, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %80

76:                                               ; preds = %68
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %79 = call i32 @mt753x_nl_send_reply(%struct.sk_buff* %77, %struct.genl_info* %78)
  store i32 %79, i32* %3, align 4
  br label %88

80:                                               ; preds = %75, %67, %30, %23
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = icmp ne %struct.sk_buff* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %85 = call i32 @nlmsg_free(%struct.sk_buff* %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %76
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @mt753x_nl_get_s32(%struct.genl_info*, i32, i32) #1

declare dso_local i32 @mt753x_nl_prepare_reply(%struct.genl_info*, i32, %struct.sk_buff**) #1

declare dso_local i32 @mt753x_reg_read(%struct.gsw_mt753x*, i64) #1

declare dso_local i32 @nla_put_s32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @mt753x_nl_send_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
