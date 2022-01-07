; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_probe.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ag71xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.ag71xx_platform_data* }
%struct.ag71xx_platform_data = type { i32, i32, i32, i32, i64, i64, i64, i32* }
%struct.net_device = type { i64, i32, i32, i32, i32*, i32* }
%struct.resource = type { i64, i64 }
%struct.ag71xx = type { i64, i32, i64, %struct.TYPE_15__*, %struct.TYPE_13__, i64, i64, %struct.TYPE_12__, %struct.TYPE_14__, i32, i32, i32, %struct.net_device*, %struct.platform_device* }
%struct.TYPE_15__ = type { i64, i64, i64 }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_14__ = type { i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"no platform data specified\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"no MII bus device specified\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ag71xx_msg_level = common dso_local global i32 0, align 4
@AG71XX_DEFAULT_MSG_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"mac_base\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"no mac_base resource found\0A\00", align 1
@ag71xx_interrupt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"unable to request IRQ %d\0A\00", align 1
@ag71xx_netdev_ops = common dso_local global i32 0, align 4
@ag71xx_ethtool_ops = common dso_local global i32 0, align 4
@ag71xx_restart_work_func = common dso_local global i32 0, align 4
@ag71xx_oom_timer_handler = common dso_local global i32 0, align 4
@AG71XX_TX_RING_SIZE_DEFAULT = common dso_local global i32 0, align 4
@AG71XX_RX_RING_SIZE_DEFAULT = common dso_local global i32 0, align 4
@AG71XX_TX_RING_SPLIT = common dso_local global i32 0, align 4
@AG71XX_TX_RING_DS_PER_PKT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ag71xx_poll = common dso_local global i32 0, align 4
@AG71XX_NAPI_WEIGHT = common dso_local global i32 0, align 4
@AG71XX_REG_MAC_CFG1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"unable to register net device\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"%s: Atheros AG71xx at 0x%08lx, irq %d, mode: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ag71xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.ag71xx*, align 8
  %7 = alloca %struct.ag71xx_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %12, align 8
  store %struct.ag71xx_platform_data* %13, %struct.ag71xx_platform_data** %7, align 8
  %14 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %7, align 8
  %15 = icmp ne %struct.ag71xx_platform_data* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %317

22:                                               ; preds = %1
  %23 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %7, align 8
  %24 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %7, align 8
  %29 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %317

38:                                               ; preds = %27, %22
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call %struct.net_device* @devm_alloc_etherdev(%struct.TYPE_16__* %40, i32 120)
  store %struct.net_device* %41, %struct.net_device** %4, align 8
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = icmp ne %struct.net_device* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %317

47:                                               ; preds = %38
  %48 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %7, align 8
  %49 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %7, align 8
  %54 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %317

60:                                               ; preds = %52
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = load i32, i32* @IORESOURCE_MEM, align 4
  %63 = call %struct.resource* @platform_get_resource(%struct.platform_device* %61, i32 %62, i32 0)
  store %struct.resource* %63, %struct.resource** %5, align 8
  %64 = load %struct.resource*, %struct.resource** %5, align 8
  %65 = icmp ne %struct.resource* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %317

69:                                               ; preds = %60
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i32 @SET_NETDEV_DEV(%struct.net_device* %70, %struct.TYPE_16__* %72)
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = call %struct.ag71xx* @netdev_priv(%struct.net_device* %74)
  store %struct.ag71xx* %75, %struct.ag71xx** %6, align 8
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %78 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %77, i32 0, i32 13
  store %struct.platform_device* %76, %struct.platform_device** %78, align 8
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %81 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %80, i32 0, i32 12
  store %struct.net_device* %79, %struct.net_device** %81, align 8
  %82 = load i32, i32* @ag71xx_msg_level, align 4
  %83 = load i32, i32* @AG71XX_DEFAULT_MSG_ENABLE, align 4
  %84 = call i32 @netif_msg_init(i32 %82, i32 %83)
  %85 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %86 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %85, i32 0, i32 11
  store i32 %84, i32* %86, align 8
  %87 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %88 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %87, i32 0, i32 10
  %89 = call i32 @spin_lock_init(i32* %88)
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = load i32, i32* @IORESOURCE_MEM, align 4
  %92 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %90, i32 %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store %struct.resource* %92, %struct.resource** %5, align 8
  %93 = load %struct.resource*, %struct.resource** %5, align 8
  %94 = icmp ne %struct.resource* %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %69
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* @ENXIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %317

101:                                              ; preds = %69
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = load %struct.resource*, %struct.resource** %5, align 8
  %105 = getelementptr inbounds %struct.resource, %struct.resource* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.resource*, %struct.resource** %5, align 8
  %108 = getelementptr inbounds %struct.resource, %struct.resource* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.resource*, %struct.resource** %5, align 8
  %111 = getelementptr inbounds %struct.resource, %struct.resource* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = sub nsw i64 %109, %112
  %114 = add nsw i64 %113, 1
  %115 = call i64 @devm_ioremap_nocache(%struct.TYPE_16__* %103, i64 %106, i64 %114)
  %116 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %117 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %116, i32 0, i32 0
  store i64 %115, i64* %117, align 8
  %118 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %119 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %101
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %317

125:                                              ; preds = %101
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = call i32 @platform_get_irq(%struct.platform_device* %126, i32 0)
  %128 = load %struct.net_device*, %struct.net_device** %4, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = load %struct.net_device*, %struct.net_device** %4, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @ag71xx_interrupt, align 4
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i32 @dev_name(%struct.TYPE_16__* %137)
  %139 = load %struct.net_device*, %struct.net_device** %4, align 8
  %140 = call i32 @devm_request_irq(%struct.TYPE_16__* %131, i32 %134, i32 %135, i32 0, i32 %138, %struct.net_device* %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %125
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = load %struct.net_device*, %struct.net_device** %4, align 8
  %147 = getelementptr inbounds %struct.net_device, %struct.net_device* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %145, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %2, align 4
  br label %317

151:                                              ; preds = %125
  %152 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %153 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.net_device*, %struct.net_device** %4, align 8
  %156 = getelementptr inbounds %struct.net_device, %struct.net_device* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = load %struct.net_device*, %struct.net_device** %4, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 5
  store i32* @ag71xx_netdev_ops, i32** %158, align 8
  %159 = load %struct.net_device*, %struct.net_device** %4, align 8
  %160 = getelementptr inbounds %struct.net_device, %struct.net_device* %159, i32 0, i32 4
  store i32* @ag71xx_ethtool_ops, i32** %160, align 8
  %161 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %162 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %161, i32 0, i32 9
  %163 = load i32, i32* @ag71xx_restart_work_func, align 4
  %164 = call i32 @INIT_DELAYED_WORK(i32* %162, i32 %163)
  %165 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %166 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %165, i32 0, i32 8
  %167 = call i32 @init_timer(%struct.TYPE_14__* %166)
  %168 = load %struct.net_device*, %struct.net_device** %4, align 8
  %169 = ptrtoint %struct.net_device* %168 to i64
  %170 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %171 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %170, i32 0, i32 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  store i64 %169, i64* %172, align 8
  %173 = load i32, i32* @ag71xx_oom_timer_handler, align 4
  %174 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %175 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %174, i32 0, i32 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  store i32 %173, i32* %176, align 8
  %177 = load i32, i32* @AG71XX_TX_RING_SIZE_DEFAULT, align 4
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* @AG71XX_RX_RING_SIZE_DEFAULT, align 4
  %179 = call i8* @ag71xx_ring_size_order(i32 %178)
  %180 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %181 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %180, i32 0, i32 7
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  store i8* %179, i8** %182, align 8
  %183 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %7, align 8
  %184 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %183, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %187 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %186, i32 0, i32 6
  store i64 %185, i64* %187, align 8
  %188 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %7, align 8
  %189 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %188, i32 0, i32 4
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %192 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %191, i32 0, i32 5
  store i64 %190, i64* %192, align 8
  %193 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %7, align 8
  %194 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %210, label %197

197:                                              ; preds = %151
  %198 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %7, align 8
  %199 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %210, label %202

202:                                              ; preds = %197
  %203 = load i32, i32* @AG71XX_TX_RING_SPLIT, align 4
  %204 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %205 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 1
  store i32 %203, i32* %206, align 8
  %207 = load i32, i32* @AG71XX_TX_RING_DS_PER_PKT, align 4
  %208 = load i32, i32* %8, align 4
  %209 = mul nsw i32 %208, %207
  store i32 %209, i32* %8, align 4
  br label %210

210:                                              ; preds = %202, %197, %151
  %211 = load i32, i32* %8, align 4
  %212 = call i8* @ag71xx_ring_size_order(i32 %211)
  %213 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %214 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  store i8* %212, i8** %215, align 8
  %216 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %217 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %216, i32 0, i32 0
  %218 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %219 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %218, i32 0, i32 2
  %220 = load i32, i32* @GFP_KERNEL, align 4
  %221 = call %struct.TYPE_15__* @dmam_alloc_coherent(%struct.TYPE_16__* %217, i32 4, i64* %219, i32 %220)
  %222 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %223 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %222, i32 0, i32 3
  store %struct.TYPE_15__* %221, %struct.TYPE_15__** %223, align 8
  %224 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %225 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %224, i32 0, i32 3
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %225, align 8
  %227 = icmp ne %struct.TYPE_15__* %226, null
  br i1 %227, label %231, label %228

228:                                              ; preds = %210
  %229 = load i32, i32* @ENOMEM, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %2, align 4
  br label %317

231:                                              ; preds = %210
  %232 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %233 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %232, i32 0, i32 3
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 2
  store i64 0, i64* %235, align 8
  %236 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %237 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %236, i32 0, i32 3
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 1
  store i64 0, i64* %239, align 8
  %240 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %241 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %244 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %243, i32 0, i32 3
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 0
  store i64 %242, i64* %246, align 8
  %247 = load %struct.net_device*, %struct.net_device** %4, align 8
  %248 = getelementptr inbounds %struct.net_device, %struct.net_device* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %7, align 8
  %251 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @ETH_ALEN, align 4
  %254 = call i32 @memcpy(i32 %249, i32 %252, i32 %253)
  %255 = load %struct.net_device*, %struct.net_device** %4, align 8
  %256 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %257 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %256, i32 0, i32 1
  %258 = load i32, i32* @ag71xx_poll, align 4
  %259 = load i32, i32* @AG71XX_NAPI_WEIGHT, align 4
  %260 = call i32 @netif_napi_add(%struct.net_device* %255, i32* %257, i32 %258, i32 %259)
  %261 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %262 = call i32 @ag71xx_dump_regs(%struct.ag71xx* %261)
  %263 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %264 = load i32, i32* @AG71XX_REG_MAC_CFG1, align 4
  %265 = call i32 @ag71xx_wr(%struct.ag71xx* %263, i32 %264, i32 0)
  %266 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %267 = call i32 @ag71xx_hw_init(%struct.ag71xx* %266)
  %268 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %269 = call i32 @ag71xx_dump_regs(%struct.ag71xx* %268)
  %270 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %271 = call i32 @ag71xx_phy_connect(%struct.ag71xx* %270)
  store i32 %271, i32* %9, align 4
  %272 = load i32, i32* %9, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %231
  %275 = load i32, i32* %9, align 4
  store i32 %275, i32* %2, align 4
  br label %317

276:                                              ; preds = %231
  %277 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %278 = call i32 @ag71xx_debugfs_init(%struct.ag71xx* %277)
  store i32 %278, i32* %9, align 4
  %279 = load i32, i32* %9, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %276
  br label %313

282:                                              ; preds = %276
  %283 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %284 = load %struct.net_device*, %struct.net_device** %4, align 8
  %285 = call i32 @platform_set_drvdata(%struct.platform_device* %283, %struct.net_device* %284)
  %286 = load %struct.net_device*, %struct.net_device** %4, align 8
  %287 = call i32 @register_netdev(%struct.net_device* %286)
  store i32 %287, i32* %9, align 4
  %288 = load i32, i32* %9, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %298

290:                                              ; preds = %282
  %291 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %292 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %291, i32 0, i32 0
  %293 = call i32 (%struct.TYPE_16__*, i8*, ...) @dev_err(%struct.TYPE_16__* %292, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %294 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %295 = call i32 @platform_set_drvdata(%struct.platform_device* %294, %struct.net_device* null)
  %296 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %297 = call i32 @ag71xx_debugfs_exit(%struct.ag71xx* %296)
  br label %313

298:                                              ; preds = %282
  %299 = load %struct.net_device*, %struct.net_device** %4, align 8
  %300 = getelementptr inbounds %struct.net_device, %struct.net_device* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %303 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.net_device*, %struct.net_device** %4, align 8
  %306 = getelementptr inbounds %struct.net_device, %struct.net_device* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %7, align 8
  %309 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @phy_modes(i32 %310)
  %312 = call i32 @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %301, i64 %304, i32 %307, i32 %311)
  store i32 0, i32* %2, align 4
  br label %317

313:                                              ; preds = %290, %281
  %314 = load %struct.ag71xx*, %struct.ag71xx** %6, align 8
  %315 = call i32 @ag71xx_phy_disconnect(%struct.ag71xx* %314)
  %316 = load i32, i32* %9, align 4
  store i32 %316, i32* %2, align 4
  br label %317

317:                                              ; preds = %313, %298, %274, %228, %143, %122, %95, %66, %57, %44, %32, %16
  %318 = load i32, i32* %2, align 4
  ret i32 %318
}

declare dso_local i32 @dev_err(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local %struct.net_device* @devm_alloc_etherdev(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.TYPE_16__*) #1

declare dso_local %struct.ag71xx* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_msg_init(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i64 @devm_ioremap_nocache(%struct.TYPE_16__*, i64, i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_16__*, i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @dev_name(%struct.TYPE_16__*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_14__*) #1

declare dso_local i8* @ag71xx_ring_size_order(i32) #1

declare dso_local %struct.TYPE_15__* @dmam_alloc_coherent(%struct.TYPE_16__*, i32, i64*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @ag71xx_dump_regs(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_wr(%struct.ag71xx*, i32, i32) #1

declare dso_local i32 @ag71xx_hw_init(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_phy_connect(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_debugfs_init(%struct.ag71xx*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @ag71xx_debugfs_exit(%struct.ag71xx*) #1

declare dso_local i32 @pr_info(i8*, i32, i64, i32, i32) #1

declare dso_local i32 @phy_modes(i32) #1

declare dso_local i32 @ag71xx_phy_disconnect(%struct.ag71xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
