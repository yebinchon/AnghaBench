; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_nl.c_mt753x_nl_reply_write.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt753x_nl.c_mt753x_nl_reply_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i32 }
%struct.gsw_mt753x = type { i32 (%struct.gsw_mt753x*, i64, i64, i64, i64)*, i32 (%struct.gsw_mt753x*, i64, i64, i64)* }
%struct.sk_buff = type { i32 }

@MT753X_ATTR_TYPE_PHY = common dso_local global i32 0, align 4
@MT753X_ATTR_TYPE_DEVAD = common dso_local global i32 0, align 4
@MT753X_ATTR_TYPE_REG = common dso_local global i32 0, align 4
@MT753X_ATTR_TYPE_VAL = common dso_local global i32 0, align 4
@MT753X_CMD_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, %struct.gsw_mt753x*)* @mt753x_nl_reply_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt753x_nl_reply_write(%struct.genl_info* %0, %struct.gsw_mt753x* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.gsw_mt753x*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
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
  %21 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %22 = load i32, i32* @MT753X_ATTR_TYPE_VAL, align 4
  %23 = call i64 @mt753x_nl_get_u32(%struct.genl_info* %21, i32 %22, i64* %10)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %88

26:                                               ; preds = %2
  %27 = load i64, i64* %9, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %88

30:                                               ; preds = %26
  %31 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %32 = load i32, i32* @MT753X_CMD_WRITE, align 4
  %33 = call i32 @mt753x_nl_prepare_reply(%struct.genl_info* %31, i32 %32, %struct.sk_buff** %6)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %88

37:                                               ; preds = %30
  %38 = load i64, i64* %7, align 8
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %37
  %41 = load i64, i64* %8, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %45 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %44, i32 0, i32 1
  %46 = load i32 (%struct.gsw_mt753x*, i64, i64, i64)*, i32 (%struct.gsw_mt753x*, i64, i64, i64)** %45, align 8
  %47 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i32 %46(%struct.gsw_mt753x* %47, i64 %48, i64 %49, i64 %50)
  br label %62

52:                                               ; preds = %40
  %53 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %54 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %53, i32 0, i32 0
  %55 = load i32 (%struct.gsw_mt753x*, i64, i64, i64, i64)*, i32 (%struct.gsw_mt753x*, i64, i64, i64, i64)** %54, align 8
  %56 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 %55(%struct.gsw_mt753x* %56, i64 %57, i64 %58, i64 %59, i64 %60)
  br label %62

62:                                               ; preds = %52, %43
  br label %68

63:                                               ; preds = %37
  %64 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %5, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @mt753x_reg_write(%struct.gsw_mt753x* %64, i64 %65, i64 %66)
  br label %68

68:                                               ; preds = %63, %62
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = load i32, i32* @MT753X_ATTR_TYPE_REG, align 4
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @nla_put_s32(%struct.sk_buff* %69, i32 %70, i64 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %88

76:                                               ; preds = %68
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = load i32, i32* @MT753X_ATTR_TYPE_VAL, align 4
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @nla_put_s32(%struct.sk_buff* %77, i32 %78, i64 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %88

84:                                               ; preds = %76
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %87 = call i32 @mt753x_nl_send_reply(%struct.sk_buff* %85, %struct.genl_info* %86)
  store i32 %87, i32* %3, align 4
  br label %96

88:                                               ; preds = %83, %75, %36, %29, %25
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = icmp ne %struct.sk_buff* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %93 = call i32 @nlmsg_free(%struct.sk_buff* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %84
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @mt753x_nl_get_s32(%struct.genl_info*, i32, i32) #1

declare dso_local i64 @mt753x_nl_get_u32(%struct.genl_info*, i32, i64*) #1

declare dso_local i32 @mt753x_nl_prepare_reply(%struct.genl_info*, i32, %struct.sk_buff**) #1

declare dso_local i32 @mt753x_reg_write(%struct.gsw_mt753x*, i64, i64) #1

declare dso_local i32 @nla_put_s32(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @mt753x_nl_send_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
