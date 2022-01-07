; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_dump_attr.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_swconfig.c_swconfig_dump_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swconfig_callback = type { i32*, %struct.sk_buff*, %struct.genl_info* }
%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32 }
%struct.switch_attr = type { i32, i64, i64 }

@switch_fam = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@SWITCH_CMD_NEW_ATTR = common dso_local global i32 0, align 4
@SWITCH_ATTR_OP_ID = common dso_local global i32 0, align 4
@SWITCH_ATTR_OP_TYPE = common dso_local global i32 0, align 4
@SWITCH_ATTR_OP_NAME = common dso_local global i32 0, align 4
@SWITCH_ATTR_OP_DESCRIPTION = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swconfig_callback*, i8*)* @swconfig_dump_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swconfig_dump_attr(%struct.swconfig_callback* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.swconfig_callback*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.genl_info*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.swconfig_callback* %0, %struct.swconfig_callback** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.switch_attr*
  store %struct.switch_attr* %12, %struct.switch_attr** %6, align 8
  %13 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %14 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %13, i32 0, i32 2
  %15 = load %struct.genl_info*, %struct.genl_info** %14, align 8
  store %struct.genl_info* %15, %struct.genl_info** %7, align 8
  %16 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %17 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %16, i32 0, i32 1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %18, %struct.sk_buff** %8, align 8
  %19 = load %struct.swconfig_callback*, %struct.swconfig_callback** %4, align 8
  %20 = getelementptr inbounds %struct.swconfig_callback, %struct.swconfig_callback* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %26 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.genl_info*, %struct.genl_info** %7, align 8
  %29 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NLM_F_MULTI, align 4
  %32 = load i32, i32* @SWITCH_CMD_NEW_ATTR, align 4
  %33 = call i8* @genlmsg_put(%struct.sk_buff* %24, i32 %27, i32 %30, i32* @switch_fam, i32 %31, i32 %32)
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i64 @IS_ERR(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %91

38:                                               ; preds = %2
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = load i32, i32* @SWITCH_ATTR_OP_ID, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @nla_put_u32(%struct.sk_buff* %39, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %85

45:                                               ; preds = %38
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = load i32, i32* @SWITCH_ATTR_OP_TYPE, align 4
  %48 = load %struct.switch_attr*, %struct.switch_attr** %6, align 8
  %49 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @nla_put_u32(%struct.sk_buff* %46, i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %85

54:                                               ; preds = %45
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = load i32, i32* @SWITCH_ATTR_OP_NAME, align 4
  %57 = load %struct.switch_attr*, %struct.switch_attr** %6, align 8
  %58 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @nla_put_string(%struct.sk_buff* %55, i32 %56, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %85

63:                                               ; preds = %54
  %64 = load %struct.switch_attr*, %struct.switch_attr** %6, align 8
  %65 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = load i32, i32* @SWITCH_ATTR_OP_DESCRIPTION, align 4
  %71 = load %struct.switch_attr*, %struct.switch_attr** %6, align 8
  %72 = getelementptr inbounds %struct.switch_attr, %struct.switch_attr* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @nla_put_string(%struct.sk_buff* %69, i32 %70, i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %85

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %63
  %79 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @genlmsg_end(%struct.sk_buff* %79, i8* %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %3, align 4
  br label %91

85:                                               ; preds = %76, %62, %53, %44
  %86 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @genlmsg_cancel(%struct.sk_buff* %86, i8* %87)
  %89 = load i32, i32* @EMSGSIZE, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %85, %78, %37
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
