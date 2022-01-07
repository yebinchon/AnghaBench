; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_store_val.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_store_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i32 }
%struct.genlmsghdr = type { i32 }
%struct.switch_val = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@tb = common dso_local global i64* null, align 8
@SWITCH_ATTR_MAX = common dso_local global i64 0, align 8
@SWITCH_ATTR_OP_VALUE_INT = common dso_local global i64 0, align 8
@SWITCH_ATTR_OP_VALUE_STR = common dso_local global i64 0, align 8
@SWITCH_ATTR_OP_VALUE_PORTS = common dso_local global i64 0, align 8
@SWITCH_ATTR_OP_VALUE_LINK = common dso_local global i64 0, align 8
@NL_SKIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nl_msg*, i8*)* @store_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_val(%struct.nl_msg* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nl_msg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.genlmsghdr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  store %struct.nl_msg* %0, %struct.nl_msg** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %9 = call i32 @nlmsg_hdr(%struct.nl_msg* %8)
  %10 = call %struct.genlmsghdr* @nlmsg_data(i32 %9)
  store %struct.genlmsghdr* %10, %struct.genlmsghdr** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.switch_val*
  store %struct.switch_val* %12, %struct.switch_val** %7, align 8
  %13 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %14 = icmp ne %struct.switch_val* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %96

16:                                               ; preds = %2
  %17 = load i64*, i64** @tb, align 8
  %18 = load i64, i64* @SWITCH_ATTR_MAX, align 8
  %19 = sub nsw i64 %18, 1
  %20 = load %struct.genlmsghdr*, %struct.genlmsghdr** %6, align 8
  %21 = call i32 @genlmsg_attrdata(%struct.genlmsghdr* %20, i32 0)
  %22 = load %struct.genlmsghdr*, %struct.genlmsghdr** %6, align 8
  %23 = call i32 @genlmsg_attrlen(%struct.genlmsghdr* %22, i32 0)
  %24 = call i64 @nla_parse(i64* %17, i64 %19, i32 %21, i32 %23, i32* null)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %96

27:                                               ; preds = %16
  %28 = load i64*, i64** @tb, align 8
  %29 = load i64, i64* @SWITCH_ATTR_OP_VALUE_INT, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load i64*, i64** @tb, align 8
  %35 = load i64, i64* @SWITCH_ATTR_OP_VALUE_INT, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @nla_get_u32(i64 %37)
  %39 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %40 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  br label %93

42:                                               ; preds = %27
  %43 = load i64*, i64** @tb, align 8
  %44 = load i64, i64* @SWITCH_ATTR_OP_VALUE_STR, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load i64*, i64** @tb, align 8
  %50 = load i64, i64* @SWITCH_ATTR_OP_VALUE_STR, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @nla_get_string(i64 %52)
  %54 = call i32 @strdup(i32 %53)
  %55 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %56 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  br label %92

58:                                               ; preds = %42
  %59 = load i64*, i64** @tb, align 8
  %60 = load i64, i64* @SWITCH_ATTR_OP_VALUE_PORTS, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %66 = load i64*, i64** @tb, align 8
  %67 = load i64, i64* @SWITCH_ATTR_OP_VALUE_PORTS, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %71 = call i64 @store_port_val(%struct.nl_msg* %65, i64 %69, %struct.switch_val* %70)
  %72 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %73 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %91

74:                                               ; preds = %58
  %75 = load i64*, i64** @tb, align 8
  %76 = load i64, i64* @SWITCH_ATTR_OP_VALUE_LINK, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %82 = load i64*, i64** @tb, align 8
  %83 = load i64, i64* @SWITCH_ATTR_OP_VALUE_LINK, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %87 = call i64 @store_link_val(%struct.nl_msg* %81, i64 %85, %struct.switch_val* %86)
  %88 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %89 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %80, %74
  br label %91

91:                                               ; preds = %90, %64
  br label %92

92:                                               ; preds = %91, %48
  br label %93

93:                                               ; preds = %92, %33
  %94 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %95 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  store i32 0, i32* %3, align 4
  br label %98

96:                                               ; preds = %26, %15
  %97 = load i32, i32* @NL_SKIP, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %93
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.genlmsghdr* @nlmsg_data(i32) #1

declare dso_local i32 @nlmsg_hdr(%struct.nl_msg*) #1

declare dso_local i64 @nla_parse(i64*, i64, i32, i32, i32*) #1

declare dso_local i32 @genlmsg_attrdata(%struct.genlmsghdr*, i32) #1

declare dso_local i32 @genlmsg_attrlen(%struct.genlmsghdr*, i32) #1

declare dso_local i32 @nla_get_u32(i64) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @nla_get_string(i64) #1

declare dso_local i64 @store_port_val(%struct.nl_msg*, i64, %struct.switch_val*) #1

declare dso_local i64 @store_link_val(%struct.nl_msg*, i64, %struct.switch_val*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
