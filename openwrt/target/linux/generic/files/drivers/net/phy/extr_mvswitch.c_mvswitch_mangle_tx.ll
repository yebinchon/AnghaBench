; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_mvswitch.c_mvswitch_mangle_tx.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_mvswitch.c_mvswitch_mangle_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.mvswitch_priv* }
%struct.mvswitch_priv = type { i32* }
%struct.sk_buff = type { i32, i8*, i32 }

@MV_TRAILER_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@MV_TRAILER_OVERRIDE = common dso_local global i32 0, align 4
@MV_TRAILER_FLAGS_S = common dso_local global i32 0, align 4
@MV_TRAILER_PORTS_M = common dso_local global i32 0, align 4
@MV_TRAILER_PORTS_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%s: failed to expand/update skb for the switch\0A\00", align 1
@MV_HEADER_PORTS_M = common dso_local global i32 0, align 4
@MV_HEADER_PORTS_S = common dso_local global i32 0, align 4
@MV_HEADER_SIZE = common dso_local global i64 0, align 8
@MV_HEADER_VLAN_M = common dso_local global i32 0, align 4
@MV_HEADER_VLAN_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*, %struct.sk_buff*)* @mvswitch_mangle_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @mvswitch_mangle_tx(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.mvswitch_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i8* null, i8** %7, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 1
  %11 = load %struct.mvswitch_priv*, %struct.mvswitch_priv** %10, align 8
  store %struct.mvswitch_priv* %11, %struct.mvswitch_priv** %6, align 8
  %12 = load %struct.mvswitch_priv*, %struct.mvswitch_priv** %6, align 8
  %13 = icmp ne %struct.mvswitch_priv* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %152

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %22, 16
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %152

28:                                               ; preds = %19
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i64 @__vlan_get_tag(%struct.sk_buff* %29, i32* %8)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %152

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 15
  br i1 %35, label %46, label %36

36:                                               ; preds = %33
  %37 = load %struct.mvswitch_priv*, %struct.mvswitch_priv** %6, align 8
  %38 = getelementptr inbounds %struct.mvswitch_priv, %struct.mvswitch_priv* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %36, %33
  %47 = phi i1 [ true, %33 ], [ %45, %36 ]
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %152

52:                                               ; preds = %46
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sle i32 %55, 64
  br i1 %56, label %57, label %78

57:                                               ; preds = %52
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = load i32, i32* @MV_TRAILER_SIZE, align 4
  %60 = add nsw i32 64, %59
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %60, %63
  %65 = load i32, i32* @GFP_ATOMIC, align 4
  %66 = call i64 @pskb_expand_head(%struct.sk_buff* %58, i64 0, i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %143

69:                                               ; preds = %57
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 64
  store i8* %73, i8** %7, align 8
  %74 = load i32, i32* @MV_TRAILER_SIZE, align 4
  %75 = add nsw i32 64, %74
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %99

78:                                               ; preds = %52
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = call i64 @skb_cloned(%struct.sk_buff* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %78
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %84 = call i32 @skb_tailroom(%struct.sk_buff* %83)
  %85 = icmp slt i32 %84, 4
  %86 = zext i1 %85 to i32
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %82, %78
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = load i32, i32* @GFP_ATOMIC, align 4
  %92 = call i64 @pskb_expand_head(%struct.sk_buff* %90, i64 0, i32 4, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %143

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95, %82
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = call i8* @skb_put(%struct.sk_buff* %97, i32 4)
  store i8* %98, i8** %7, align 8
  br label %99

99:                                               ; preds = %96, %69
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @memmove(i8* %103, i8* %106, i32 12)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 4
  store i8* %111, i8** %109, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, 4
  store i32 %115, i32* %113, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 4
  store i32 %119, i32* %117, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %99
  br label %152

123:                                              ; preds = %99
  %124 = load i32, i32* @MV_TRAILER_OVERRIDE, align 4
  %125 = load i32, i32* @MV_TRAILER_FLAGS_S, align 4
  %126 = shl i32 %124, %125
  %127 = load %struct.mvswitch_priv*, %struct.mvswitch_priv** %6, align 8
  %128 = getelementptr inbounds %struct.mvswitch_priv, %struct.mvswitch_priv* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @MV_TRAILER_PORTS_M, align 4
  %135 = and i32 %133, %134
  %136 = load i32, i32* @MV_TRAILER_PORTS_S, align 4
  %137 = shl i32 %135, %136
  %138 = or i32 %126, %137
  %139 = call i32 @cpu_to_be32(i32 %138)
  %140 = load i8*, i8** %7, align 8
  %141 = bitcast i8* %140 to i32*
  store i32 %139, i32* %141, align 4
  %142 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %142, %struct.sk_buff** %3, align 8
  br label %155

143:                                              ; preds = %94, %68
  %144 = call i64 (...) @net_ratelimit()
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load %struct.net_device*, %struct.net_device** %4, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %146, %143
  br label %152

152:                                              ; preds = %151, %122, %51, %32, %27, %18
  %153 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %154 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %153)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %155

155:                                              ; preds = %152, %123
  %156 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %156
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @__vlan_get_tag(%struct.sk_buff*, i32*) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i64, i32, i32) #1

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
