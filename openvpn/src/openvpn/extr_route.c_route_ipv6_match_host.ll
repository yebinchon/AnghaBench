; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_route_ipv6_match_host.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_route_ipv6_match_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route_ipv6 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.in6_addr = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.route_ipv6*, %struct.in6_addr*)* @route_ipv6_match_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @route_ipv6_match_host(%struct.route_ipv6* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.route_ipv6*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.route_ipv6* %0, %struct.route_ipv6** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  %9 = load %struct.route_ipv6*, %struct.route_ipv6** %4, align 8
  %10 = getelementptr inbounds %struct.route_ipv6, %struct.route_ipv6* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ugt i32 %12, 128
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

15:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %38, %15
  %17 = load i32, i32* %6, align 4
  %18 = icmp uge i32 %17, 8
  br i1 %18, label %19, label %43

19:                                               ; preds = %16
  %20 = load %struct.route_ipv6*, %struct.route_ipv6** %4, align 8
  %21 = getelementptr inbounds %struct.route_ipv6, %struct.route_ipv6* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %29 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %27, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %73

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sub i32 %41, 8
  store i32 %42, i32* %6, align 4
  br label %16

43:                                               ; preds = %16
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %73

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = sub i32 8, %48
  %50 = shl i32 255, %49
  store i32 %50, i32* %8, align 4
  %51 = load %struct.route_ipv6*, %struct.route_ipv6** %4, align 8
  %52 = getelementptr inbounds %struct.route_ipv6, %struct.route_ipv6* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %58, %59
  %61 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %62 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %60, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %47
  store i32 1, i32* %3, align 4
  br label %73

72:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %71, %46, %36, %14
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
