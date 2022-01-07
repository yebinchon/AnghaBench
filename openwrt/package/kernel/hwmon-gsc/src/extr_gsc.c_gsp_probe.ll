; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/hwmon-gsc/src/extr_gsc.c_gsp_probe.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/hwmon-gsc/src/extr_gsc.c_gsp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_6__, i32, %struct.i2c_adapter* }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.gsp_data = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gsp_attributes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s chip found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @gsp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsp_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.gsp_data*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 2
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  store %struct.i2c_adapter* %11, %struct.i2c_adapter** %6, align 8
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %13 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %14 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  br label %87

21:                                               ; preds = %2
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.gsp_data* @kzalloc(i32 12, i32 %22)
  store %struct.gsp_data* %23, %struct.gsp_data** %7, align 8
  %24 = icmp ne %struct.gsp_data* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %87

28:                                               ; preds = %21
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load %struct.gsp_data*, %struct.gsp_data** %7, align 8
  %31 = call i32 @i2c_set_clientdata(%struct.i2c_client* %29, %struct.gsp_data* %30)
  %32 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %33 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.gsp_data*, %struct.gsp_data** %7, align 8
  %36 = getelementptr inbounds %struct.gsp_data, %struct.gsp_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.gsp_data*, %struct.gsp_data** %7, align 8
  %38 = getelementptr inbounds %struct.gsp_data, %struct.gsp_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %45 [
    i32 0, label %40
  ]

40:                                               ; preds = %28
  %41 = load i32, i32* @gsp_attributes, align 4
  %42 = load %struct.gsp_data*, %struct.gsp_data** %7, align 8
  %43 = getelementptr inbounds %struct.gsp_data, %struct.gsp_data* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %28, %40
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_info(%struct.TYPE_6__* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.gsp_data*, %struct.gsp_data** %7, align 8
  %56 = getelementptr inbounds %struct.gsp_data, %struct.gsp_data* %55, i32 0, i32 1
  %57 = call i32 @sysfs_create_group(i32* %54, %struct.TYPE_5__* %56)
  store i32 %57, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %84

60:                                               ; preds = %45
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = call i32 @hwmon_device_register(%struct.TYPE_6__* %62)
  %64 = load %struct.gsp_data*, %struct.gsp_data** %7, align 8
  %65 = getelementptr inbounds %struct.gsp_data, %struct.gsp_data* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load %struct.gsp_data*, %struct.gsp_data** %7, align 8
  %67 = getelementptr inbounds %struct.gsp_data, %struct.gsp_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %60
  %72 = load %struct.gsp_data*, %struct.gsp_data** %7, align 8
  %73 = getelementptr inbounds %struct.gsp_data, %struct.gsp_data* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %8, align 4
  br label %77

76:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %89

77:                                               ; preds = %71
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.gsp_data*, %struct.gsp_data** %7, align 8
  %82 = getelementptr inbounds %struct.gsp_data, %struct.gsp_data* %81, i32 0, i32 1
  %83 = call i32 @sysfs_remove_group(i32* %80, %struct.TYPE_5__* %82)
  br label %84

84:                                               ; preds = %77, %59
  %85 = load %struct.gsp_data*, %struct.gsp_data** %7, align 8
  %86 = call i32 @kfree(%struct.gsp_data* %85)
  br label %87

87:                                               ; preds = %84, %25, %18
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %76
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.gsp_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.gsp_data*) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @sysfs_create_group(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.gsp_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
