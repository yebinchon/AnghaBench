; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_proto.c_is_ipv_X.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_proto.c_is_ipv_X.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.openvpn_iphdr = type { i32 }
%struct.openvpn_ethhdr = type { i32 }
%struct.openvpn_8021qhdr = type { i32 }

@DEV_TYPE_TUN = common dso_local global i32 0, align 4
@DEV_TYPE_TAP = common dso_local global i32 0, align 4
@OPENVPN_ETH_P_8021Q = common dso_local global i32 0, align 4
@OPENVPN_ETH_P_IPV6 = common dso_local global i64 0, align 8
@OPENVPN_ETH_P_IPV4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.buffer*, i32)* @is_ipv_X to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_ipv_X(i32 %0, %struct.buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.openvpn_iphdr*, align 8
  %11 = alloca %struct.openvpn_ethhdr*, align 8
  %12 = alloca %struct.openvpn_8021qhdr*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.buffer* %1, %struct.buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.buffer*, %struct.buffer** %6, align 8
  %14 = call i32 @verify_align_4(%struct.buffer* %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @DEV_TYPE_TUN, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.buffer*, %struct.buffer** %6, align 8
  %20 = call i32 @BLEN(%struct.buffer* %19)
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 4
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %93

24:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %75

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @DEV_TYPE_TAP, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %73

29:                                               ; preds = %25
  %30 = load %struct.buffer*, %struct.buffer** %6, align 8
  %31 = call i32 @BLEN(%struct.buffer* %30)
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 8
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %93

35:                                               ; preds = %29
  %36 = load %struct.buffer*, %struct.buffer** %6, align 8
  %37 = call i64 @BPTR(%struct.buffer* %36)
  %38 = inttoptr i64 %37 to %struct.openvpn_ethhdr*
  store %struct.openvpn_ethhdr* %38, %struct.openvpn_ethhdr** %11, align 8
  %39 = load %struct.openvpn_ethhdr*, %struct.openvpn_ethhdr** %11, align 8
  %40 = getelementptr inbounds %struct.openvpn_ethhdr, %struct.openvpn_ethhdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  store i32 4, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @OPENVPN_ETH_P_8021Q, align 4
  %44 = call i32 @htons(i32 %43)
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %35
  %47 = load %struct.buffer*, %struct.buffer** %6, align 8
  %48 = call i32 @BLEN(%struct.buffer* %47)
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %49, 8
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %93

52:                                               ; preds = %46
  %53 = load %struct.buffer*, %struct.buffer** %6, align 8
  %54 = call i64 @BPTR(%struct.buffer* %53)
  %55 = inttoptr i64 %54 to %struct.openvpn_8021qhdr*
  store %struct.openvpn_8021qhdr* %55, %struct.openvpn_8021qhdr** %12, align 8
  %56 = load %struct.openvpn_8021qhdr*, %struct.openvpn_8021qhdr** %12, align 8
  %57 = getelementptr inbounds %struct.openvpn_8021qhdr, %struct.openvpn_8021qhdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  store i32 4, i32* %8, align 4
  br label %59

59:                                               ; preds = %52, %35
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @ntohs(i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 6
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i64, i64* @OPENVPN_ETH_P_IPV6, align 8
  br label %68

66:                                               ; preds = %59
  %67 = load i64, i64* @OPENVPN_ETH_P_IPV4, align 8
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i64 [ %65, %64 ], [ %67, %66 ]
  %70 = icmp ne i64 %61, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %93

72:                                               ; preds = %68
  br label %74

73:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %93

74:                                               ; preds = %72
  br label %75

75:                                               ; preds = %74, %24
  %76 = load %struct.buffer*, %struct.buffer** %6, align 8
  %77 = call i64 @BPTR(%struct.buffer* %76)
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  %81 = inttoptr i64 %80 to %struct.openvpn_iphdr*
  store %struct.openvpn_iphdr* %81, %struct.openvpn_iphdr** %10, align 8
  %82 = load %struct.openvpn_iphdr*, %struct.openvpn_iphdr** %10, align 8
  %83 = getelementptr inbounds %struct.openvpn_iphdr, %struct.openvpn_iphdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @OPENVPN_IPH_GET_VER(i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %75
  %89 = load %struct.buffer*, %struct.buffer** %6, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @buf_advance(%struct.buffer* %89, i32 %90)
  store i32 %91, i32* %4, align 4
  br label %93

92:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %88, %73, %71, %51, %34, %23
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @verify_align_4(%struct.buffer*) #1

declare dso_local i32 @BLEN(%struct.buffer*) #1

declare dso_local i64 @BPTR(%struct.buffer*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @OPENVPN_IPH_GET_VER(i32) #1

declare dso_local i32 @buf_advance(%struct.buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
