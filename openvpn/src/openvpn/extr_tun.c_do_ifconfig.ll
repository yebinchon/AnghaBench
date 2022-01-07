; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_tun.c_do_ifconfig.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_tun.c_do_ifconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuntap = type { i64, i64, i32, i32 }
%struct.env_set = type { i32 }

@D_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"do_ifconfig, ipv4=%d, ipv6=%d\00", align 1
@OPENVPN_STATE_ASSIGN_IP = common dso_local global i32 0, align 4
@management = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_ifconfig(%struct.tuntap* %0, i8* %1, i32 %2, %struct.env_set* %3, i32* %4) #0 {
  %6 = alloca %struct.tuntap*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.env_set*, align 8
  %10 = alloca i32*, align 8
  store %struct.tuntap* %0, %struct.tuntap** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.env_set* %3, %struct.env_set** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* @D_LOW, align 4
  %12 = load %struct.tuntap*, %struct.tuntap** %6, align 8
  %13 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.tuntap*, %struct.tuntap** %6, align 8
  %16 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @msg(i32 %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %14, i64 %17)
  %19 = load %struct.tuntap*, %struct.tuntap** %6, align 8
  %20 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %5
  %24 = load %struct.tuntap*, %struct.tuntap** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.env_set*, %struct.env_set** %9, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @do_ifconfig_ipv4(%struct.tuntap* %24, i8* %25, i32 %26, %struct.env_set* %27, i32* %28)
  br label %30

30:                                               ; preds = %23, %5
  %31 = load %struct.tuntap*, %struct.tuntap** %6, align 8
  %32 = getelementptr inbounds %struct.tuntap, %struct.tuntap* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.tuntap*, %struct.tuntap** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.env_set*, %struct.env_set** %9, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @do_ifconfig_ipv6(%struct.tuntap* %36, i8* %37, i32 %38, %struct.env_set* %39, i32* %40)
  br label %42

42:                                               ; preds = %35, %30
  %43 = load i32*, i32** %10, align 8
  %44 = call i32 @net_ctx_free(i32* %43)
  ret void
}

declare dso_local i32 @msg(i32, i8*, i64, i64) #1

declare dso_local i32 @do_ifconfig_ipv4(%struct.tuntap*, i8*, i32, %struct.env_set*, i32*) #1

declare dso_local i32 @do_ifconfig_ipv6(%struct.tuntap*, i8*, i32, %struct.env_set*, i32*) #1

declare dso_local i32 @net_ctx_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
