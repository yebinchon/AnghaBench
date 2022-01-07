; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_proto.h_get_tun_ip_ver.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_proto.h_get_tun_ip_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.openvpn_ethhdr = type { i32 }

@DEV_TYPE_TUN = common dso_local global i32 0, align 4
@DEV_TYPE_TAP = common dso_local global i32 0, align 4
@OPENVPN_ETH_P_IPV6 = common dso_local global i64 0, align 8
@OPENVPN_ETH_P_IPV4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.buffer*, i32*)* @get_tun_ip_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tun_ip_ver(i32 %0, %struct.buffer* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.openvpn_ethhdr*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.buffer* %1, %struct.buffer** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 -1, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @DEV_TYPE_TUN, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.buffer*, %struct.buffer** %5, align 8
  %16 = call i32 @BLEN(%struct.buffer* %15)
  %17 = icmp sge i32 %16, 4
  %18 = zext i1 %17 to i32
  %19 = call i64 @likely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load %struct.buffer*, %struct.buffer** %5, align 8
  %23 = call i32* @BPTR(%struct.buffer* %22)
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @OPENVPN_IPH_GET_VER(i32 %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %21, %13
  br label %62

27:                                               ; preds = %3
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @DEV_TYPE_TAP, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  store i32 4, i32* %32, align 4
  %33 = load %struct.buffer*, %struct.buffer** %5, align 8
  %34 = call i32 @BLEN(%struct.buffer* %33)
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %34, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @likely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %31
  %42 = load %struct.buffer*, %struct.buffer** %5, align 8
  %43 = call i32* @BPTR(%struct.buffer* %42)
  %44 = bitcast i32* %43 to %struct.openvpn_ethhdr*
  store %struct.openvpn_ethhdr* %44, %struct.openvpn_ethhdr** %8, align 8
  %45 = load %struct.openvpn_ethhdr*, %struct.openvpn_ethhdr** %8, align 8
  %46 = getelementptr inbounds %struct.openvpn_ethhdr, %struct.openvpn_ethhdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @ntohs(i32 %47)
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @OPENVPN_ETH_P_IPV6, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  store i32 6, i32* %7, align 4
  br label %59

53:                                               ; preds = %41
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @OPENVPN_ETH_P_IPV4, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 4, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %53
  br label %59

59:                                               ; preds = %58, %52
  br label %60

60:                                               ; preds = %59, %31
  br label %61

61:                                               ; preds = %60, %27
  br label %62

62:                                               ; preds = %61, %26
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @BLEN(%struct.buffer*) #1

declare dso_local i32 @OPENVPN_IPH_GET_VER(i32) #1

declare dso_local i32* @BPTR(%struct.buffer*) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
