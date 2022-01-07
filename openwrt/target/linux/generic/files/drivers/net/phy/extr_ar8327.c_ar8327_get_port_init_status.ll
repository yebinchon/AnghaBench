; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_get_port_init_status.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_get_port_init_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8327_port_cfg = type { i32, i64, i64, i64, i32 }

@AR8216_PORT_STATUS_LINK_AUTO = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_TXMAC = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_RXMAC = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_DUPLEX = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_RXFLOW = common dso_local global i32 0, align 4
@AR8216_PORT_STATUS_TXFLOW = common dso_local global i32 0, align 4
@AR8216_PORT_SPEED_10M = common dso_local global i32 0, align 4
@AR8216_PORT_SPEED_100M = common dso_local global i32 0, align 4
@AR8216_PORT_SPEED_1000M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar8327_port_cfg*)* @ar8327_get_port_init_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8327_get_port_init_status(%struct.ar8327_port_cfg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar8327_port_cfg*, align 8
  %4 = alloca i32, align 4
  store %struct.ar8327_port_cfg* %0, %struct.ar8327_port_cfg** %3, align 8
  %5 = load %struct.ar8327_port_cfg*, %struct.ar8327_port_cfg** %3, align 8
  %6 = getelementptr inbounds %struct.ar8327_port_cfg, %struct.ar8327_port_cfg* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @AR8216_PORT_STATUS_LINK_AUTO, align 4
  store i32 %10, i32* %2, align 4
  br label %65

11:                                               ; preds = %1
  %12 = load i32, i32* @AR8216_PORT_STATUS_TXMAC, align 4
  %13 = load i32, i32* @AR8216_PORT_STATUS_RXMAC, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.ar8327_port_cfg*, %struct.ar8327_port_cfg** %3, align 8
  %16 = getelementptr inbounds %struct.ar8327_port_cfg, %struct.ar8327_port_cfg* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @AR8216_PORT_STATUS_DUPLEX, align 4
  br label %22

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load %struct.ar8327_port_cfg*, %struct.ar8327_port_cfg** %3, align 8
  %27 = getelementptr inbounds %struct.ar8327_port_cfg, %struct.ar8327_port_cfg* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @AR8216_PORT_STATUS_RXFLOW, align 4
  br label %33

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.ar8327_port_cfg*, %struct.ar8327_port_cfg** %3, align 8
  %38 = getelementptr inbounds %struct.ar8327_port_cfg, %struct.ar8327_port_cfg* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @AR8216_PORT_STATUS_TXFLOW, align 4
  br label %44

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load %struct.ar8327_port_cfg*, %struct.ar8327_port_cfg** %3, align 8
  %49 = getelementptr inbounds %struct.ar8327_port_cfg, %struct.ar8327_port_cfg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %63 [
    i32 130, label %51
    i32 129, label %55
    i32 128, label %59
  ]

51:                                               ; preds = %44
  %52 = load i32, i32* @AR8216_PORT_SPEED_10M, align 4
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  br label %63

55:                                               ; preds = %44
  %56 = load i32, i32* @AR8216_PORT_SPEED_100M, align 4
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %4, align 4
  br label %63

59:                                               ; preds = %44
  %60 = load i32, i32* @AR8216_PORT_SPEED_1000M, align 4
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %44, %59, %55, %51
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %9
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
