; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_send_attr_ports.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_send_attr_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i32 }
%struct.switch_val = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.switch_port* }
%struct.switch_port = type { i32, i32 }
%struct.nlattr = type { i32 }

@SWITCH_ATTR_OP_VALUE_PORTS = common dso_local global i32 0, align 4
@SWITCH_ATTR_PORT = common dso_local global i32 0, align 4
@SWITCH_PORT_ID = common dso_local global i32 0, align 4
@SWLIB_PORT_FLAG_TAGGED = common dso_local global i32 0, align 4
@SWITCH_PORT_FLAG_TAGGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nl_msg*, %struct.switch_val*)* @send_attr_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_attr_ports(%struct.nl_msg* %0, %struct.switch_val* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nl_msg*, align 8
  %5 = alloca %struct.switch_val*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.switch_port*, align 8
  %9 = alloca %struct.nlattr*, align 8
  store %struct.nl_msg* %0, %struct.nl_msg** %4, align 8
  store %struct.switch_val* %1, %struct.switch_val** %5, align 8
  %10 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %11 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %71

15:                                               ; preds = %2
  %16 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %17 = load i32, i32* @SWITCH_ATTR_OP_VALUE_PORTS, align 4
  %18 = call %struct.nlattr* @nla_nest_start(%struct.nl_msg* %16, i32 %17)
  store %struct.nlattr* %18, %struct.nlattr** %6, align 8
  %19 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %72

22:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %64, %22
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %26 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %23
  %30 = load %struct.switch_val*, %struct.switch_val** %5, align 8
  %31 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.switch_port*, %struct.switch_port** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %33, i64 %35
  store %struct.switch_port* %36, %struct.switch_port** %8, align 8
  %37 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %38 = load i32, i32* @SWITCH_ATTR_PORT, align 4
  %39 = call %struct.nlattr* @nla_nest_start(%struct.nl_msg* %37, i32 %38)
  store %struct.nlattr* %39, %struct.nlattr** %9, align 8
  %40 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %41 = icmp ne %struct.nlattr* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %29
  br label %72

43:                                               ; preds = %29
  %44 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %45 = load i32, i32* @SWITCH_PORT_ID, align 4
  %46 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %47 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @NLA_PUT_U32(%struct.nl_msg* %44, i32 %45, i32 %48)
  %50 = load %struct.switch_port*, %struct.switch_port** %8, align 8
  %51 = getelementptr inbounds %struct.switch_port, %struct.switch_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SWLIB_PORT_FLAG_TAGGED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %43
  %57 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %58 = load i32, i32* @SWITCH_PORT_FLAG_TAGGED, align 4
  %59 = call i32 @NLA_PUT_FLAG(%struct.nl_msg* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %43
  %61 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %62 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %63 = call i32 @nla_nest_end(%struct.nl_msg* %61, %struct.nlattr* %62)
  br label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %23

67:                                               ; preds = %23
  %68 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %69 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %70 = call i32 @nla_nest_end(%struct.nl_msg* %68, %struct.nlattr* %69)
  br label %71

71:                                               ; preds = %67, %14
  store i32 0, i32* %3, align 4
  br label %73

72:                                               ; preds = %42, %21
  store i32 -1, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %71
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.nlattr* @nla_nest_start(%struct.nl_msg*, i32) #1

declare dso_local i32 @NLA_PUT_U32(%struct.nl_msg*, i32, i32) #1

declare dso_local i32 @NLA_PUT_FLAG(%struct.nl_msg*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.nl_msg*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
