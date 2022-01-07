; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_route_ipv6_clear_host_bits.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_route.c_route_ipv6_clear_host_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route_ipv6 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @route_ipv6_clear_host_bits(%struct.route_ipv6* %0) #0 {
  %2 = alloca %struct.route_ipv6*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.route_ipv6* %0, %struct.route_ipv6** %2, align 8
  store i32 15, i32* %3, align 4
  %5 = load %struct.route_ipv6*, %struct.route_ipv6** %2, align 8
  %6 = getelementptr inbounds %struct.route_ipv6, %struct.route_ipv6* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sub nsw i32 128, %7
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %44, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 0
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i1 [ false, %9 ], [ %14, %12 ]
  br i1 %16, label %17, label %45

17:                                               ; preds = %15
  %18 = load i32, i32* %4, align 4
  %19 = icmp sge i32 %18, 8
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load %struct.route_ipv6*, %struct.route_ipv6** %2, align 8
  %22 = getelementptr inbounds %struct.route_ipv6, %struct.route_ipv6* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %3, align 4
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %29, 8
  store i32 %30, i32* %4, align 4
  br label %44

31:                                               ; preds = %17
  %32 = load i32, i32* %4, align 4
  %33 = shl i32 255, %32
  %34 = load %struct.route_ipv6*, %struct.route_ipv6** %2, align 8
  %35 = getelementptr inbounds %struct.route_ipv6, %struct.route_ipv6* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %3, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %33
  store i32 %43, i32* %41, align 4
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %31, %20
  br label %9

45:                                               ; preds = %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
