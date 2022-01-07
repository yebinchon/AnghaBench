; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_send_attr_link.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_send_attr_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i32 }
%struct.switch_val = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.switch_port_link* }
%struct.switch_port_link = type { i32, i64, i64 }
%struct.nlattr = type { i32 }

@SWITCH_ATTR_OP_VALUE_LINK = common dso_local global i32 0, align 4
@SWITCH_LINK_FLAG_DUPLEX = common dso_local global i32 0, align 4
@SWITCH_LINK_FLAG_ANEG = common dso_local global i32 0, align 4
@SWITCH_LINK_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nl_msg*, %struct.switch_val*)* @send_attr_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_attr_link(%struct.nl_msg* %0, %struct.switch_val* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nl_msg*, align 8
  %5 = alloca %struct.switch_val*, align 8
  %6 = alloca %struct.switch_port_link*, align 8
  %7 = alloca %struct.nlattr*, align 8
  store %struct.nl_msg* %0, %struct.nl_msg** %4, align 8
  store %struct.switch_val* %1, %struct.switch_val** %5, align 8
  %8 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %9 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.switch_port_link*, %struct.switch_port_link** %10, align 8
  store %struct.switch_port_link* %11, %struct.switch_port_link** %6, align 8
  %12 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %13 = load i32, i32* @SWITCH_ATTR_OP_VALUE_LINK, align 4
  %14 = call %struct.nlattr* @nla_nest_start(%struct.nl_msg* %12, i32 %13)
  store %struct.nlattr* %14, %struct.nlattr** %7, align 8
  %15 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %46

18:                                               ; preds = %2
  %19 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %20 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %25 = load i32, i32* @SWITCH_LINK_FLAG_DUPLEX, align 4
  %26 = call i32 @NLA_PUT_FLAG(%struct.nl_msg* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %18
  %28 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %29 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %34 = load i32, i32* @SWITCH_LINK_FLAG_ANEG, align 4
  %35 = call i32 @NLA_PUT_FLAG(%struct.nl_msg* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %38 = load i32, i32* @SWITCH_LINK_SPEED, align 4
  %39 = load %struct.switch_port_link*, %struct.switch_port_link** %6, align 8
  %40 = getelementptr inbounds %struct.switch_port_link, %struct.switch_port_link* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @NLA_PUT_U32(%struct.nl_msg* %37, i32 %38, i32 %41)
  %43 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %44 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %45 = call i32 @nla_nest_end(%struct.nl_msg* %43, %struct.nlattr* %44)
  store i32 0, i32* %3, align 4
  br label %47

46:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.nl_msg*, i32) #1

declare dso_local i32 @NLA_PUT_FLAG(%struct.nl_msg*, i32) #1

declare dso_local i32 @NLA_PUT_U32(%struct.nl_msg*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.nl_msg*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
