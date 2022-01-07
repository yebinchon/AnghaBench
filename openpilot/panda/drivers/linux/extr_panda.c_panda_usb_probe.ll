; ModuleID = '/home/carl/AnghaBench/openpilot/panda/drivers/linux/extr_panda.c_panda_usb_probe.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/drivers/linux/extr_panda.c_panda_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.net_device = type { i32, i32* }
%struct.panda_inf_priv = type { i32, %struct.net_device*, %struct.TYPE_4__, i32, i32, %struct.panda_dev_priv* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.panda_dev_priv = type { %struct.panda_inf_priv**, i32, i32*, %struct.usb_device* }
%struct.usb_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Couldn't alloc priv_dev\0A\00", align 1
@PANDA_NUM_CAN_INTERFACES = common dso_local global i32 0, align 4
@PANDA_MAX_TX_URBS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Couldn't alloc candev\0A\00", align 1
@panda_netdev_ops = common dso_local global i32 0, align 4
@IFF_ECHO = common dso_local global i32 0, align 4
@can_numbering = common dso_local global i32* null, align 8
@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@PANDA_BITRATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"couldn't register PANDA CAN device: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Failed to initialize Comma.ai Panda CAN controller\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Failed to initialize send enable message to Panda.\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Comma.ai Panda CAN controller connected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @panda_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panda_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.panda_inf_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.panda_dev_priv*, align 8
  %11 = alloca %struct.usb_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %14)
  store %struct.usb_device* %15, %struct.usb_device** %11, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.panda_dev_priv* @kzalloc(i32 32, i32 %16)
  store %struct.panda_dev_priv* %17, %struct.panda_dev_priv** %10, align 8
  %18 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %10, align 8
  %19 = icmp ne %struct.panda_dev_priv* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %22 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %173

26:                                               ; preds = %2
  %27 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %28 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %10, align 8
  %29 = getelementptr inbounds %struct.panda_dev_priv, %struct.panda_dev_priv* %28, i32 0, i32 3
  store %struct.usb_device* %27, %struct.usb_device** %29, align 8
  %30 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %31 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %30, i32 0, i32 0
  %32 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %10, align 8
  %33 = getelementptr inbounds %struct.panda_dev_priv, %struct.panda_dev_priv* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %35 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %10, align 8
  %36 = call i32 @usb_set_intfdata(%struct.usb_interface* %34, %struct.panda_dev_priv* %35)
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %115, %26
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @PANDA_NUM_CAN_INTERFACES, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %118

41:                                               ; preds = %37
  %42 = load i32, i32* @PANDA_MAX_TX_URBS, align 4
  %43 = call %struct.net_device* @alloc_candev(i32 40, i32 %42)
  store %struct.net_device* %43, %struct.net_device** %6, align 8
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = icmp ne %struct.net_device* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %48 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %140

50:                                               ; preds = %41
  %51 = load %struct.net_device*, %struct.net_device** %6, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  store i32* @panda_netdev_ops, i32** %52, align 8
  %53 = load i32, i32* @IFF_ECHO, align 4
  %54 = load %struct.net_device*, %struct.net_device** %6, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.net_device*, %struct.net_device** %6, align 8
  %59 = call %struct.panda_inf_priv* @netdev_priv(%struct.net_device* %58)
  store %struct.panda_inf_priv* %59, %struct.panda_inf_priv** %7, align 8
  %60 = load %struct.net_device*, %struct.net_device** %6, align 8
  %61 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %7, align 8
  %62 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %61, i32 0, i32 1
  store %struct.net_device* %60, %struct.net_device** %62, align 8
  %63 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %10, align 8
  %64 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %7, align 8
  %65 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %64, i32 0, i32 5
  store %struct.panda_dev_priv* %63, %struct.panda_dev_priv** %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %7, align 8
  %68 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32*, i32** @can_numbering, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %7, align 8
  %75 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %10, align 8
  %77 = getelementptr inbounds %struct.panda_dev_priv, %struct.panda_dev_priv* %76, i32 0, i32 1
  %78 = call i32 @init_usb_anchor(i32* %77)
  %79 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %7, align 8
  %80 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %79, i32 0, i32 3
  %81 = call i32 @init_usb_anchor(i32* %80)
  %82 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %83 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %7, align 8
  %84 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @PANDA_BITRATE, align 4
  %87 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %7, align 8
  %88 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 8
  %91 = load %struct.net_device*, %struct.net_device** %6, align 8
  %92 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %93 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %92, i32 0, i32 0
  %94 = call i32 @SET_NETDEV_DEV(%struct.net_device* %91, i32* %93)
  %95 = load %struct.net_device*, %struct.net_device** %6, align 8
  %96 = call i32 @register_candev(%struct.net_device* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %50
  %100 = load %struct.net_device*, %struct.net_device** %6, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @netdev_err(%struct.net_device* %100, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %7, align 8
  %104 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %103, i32 0, i32 1
  %105 = load %struct.net_device*, %struct.net_device** %104, align 8
  %106 = call i32 @free_candev(%struct.net_device* %105)
  br label %140

107:                                              ; preds = %50
  %108 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %7, align 8
  %109 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %10, align 8
  %110 = getelementptr inbounds %struct.panda_dev_priv, %struct.panda_dev_priv* %109, i32 0, i32 0
  %111 = load %struct.panda_inf_priv**, %struct.panda_inf_priv*** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.panda_inf_priv*, %struct.panda_inf_priv** %111, i64 %113
  store %struct.panda_inf_priv* %108, %struct.panda_inf_priv** %114, align 8
  br label %115

115:                                              ; preds = %107
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %37

118:                                              ; preds = %37
  %119 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %10, align 8
  %120 = call i32 @panda_usb_start(%struct.panda_dev_priv* %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %125 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %124, i32 0, i32 0
  %126 = call i32 @dev_err(i32* %125, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %140

127:                                              ; preds = %118
  %128 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %7, align 8
  %129 = call i32 @panda_set_output_enable(%struct.panda_inf_priv* %128, i32 1)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %134 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %133, i32 0, i32 0
  %135 = call i32 @dev_info(i32* %134, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %140

136:                                              ; preds = %127
  %137 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %138 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %137, i32 0, i32 0
  %139 = call i32 @dev_info(i32* %138, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %173

140:                                              ; preds = %132, %123, %99, %46
  store i32 0, i32* %9, align 4
  br label %141

141:                                              ; preds = %166, %140
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @PANDA_NUM_CAN_INTERFACES, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %169

145:                                              ; preds = %141
  %146 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %10, align 8
  %147 = getelementptr inbounds %struct.panda_dev_priv, %struct.panda_dev_priv* %146, i32 0, i32 0
  %148 = load %struct.panda_inf_priv**, %struct.panda_inf_priv*** %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.panda_inf_priv*, %struct.panda_inf_priv** %148, i64 %150
  %152 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %151, align 8
  store %struct.panda_inf_priv* %152, %struct.panda_inf_priv** %7, align 8
  %153 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %7, align 8
  %154 = icmp ne %struct.panda_inf_priv* %153, null
  br i1 %154, label %155, label %164

155:                                              ; preds = %145
  %156 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %7, align 8
  %157 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %156, i32 0, i32 1
  %158 = load %struct.net_device*, %struct.net_device** %157, align 8
  %159 = call i32 @unregister_candev(%struct.net_device* %158)
  %160 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %7, align 8
  %161 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %160, i32 0, i32 1
  %162 = load %struct.net_device*, %struct.net_device** %161, align 8
  %163 = call i32 @free_candev(%struct.net_device* %162)
  br label %165

164:                                              ; preds = %145
  br label %169

165:                                              ; preds = %155
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  br label %141

169:                                              ; preds = %164, %141
  %170 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %10, align 8
  %171 = call i32 @kfree(%struct.panda_dev_priv* %170)
  %172 = load i32, i32* %8, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %169, %136, %20
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.panda_dev_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.panda_dev_priv*) #1

declare dso_local %struct.net_device* @alloc_candev(i32, i32) #1

declare dso_local %struct.panda_inf_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @register_candev(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @free_candev(%struct.net_device*) #1

declare dso_local i32 @panda_usb_start(%struct.panda_dev_priv*) #1

declare dso_local i32 @panda_set_output_enable(%struct.panda_inf_priv*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @unregister_candev(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.panda_dev_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
