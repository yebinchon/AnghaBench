; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_gsw_mt7620.c_mt7620_gsw_probe.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_gsw_mt7620.c_mt7620_gsw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }
%struct.mt7620_gsw = type { i32, i64, i8*, %struct.TYPE_3__*, i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"mediatek,port4\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ephy\00", align 1
@PORT4_EPHY = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"gmac\00", align 1
@PORT4_EXT = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"mediatek,ephy-base-address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mt7620_gsw_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7620_gsw_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mt7620_gsw*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @IORESOURCE_MEM, align 4
  %11 = call %struct.resource* @platform_get_resource(%struct.platform_device* %9, i32 %10, i32 0)
  store %struct.resource* %11, %struct.resource** %4, align 8
  store i8* null, i8** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %7, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.mt7620_gsw* @devm_kzalloc(%struct.TYPE_3__* %17, i32 40, i32 %18)
  store %struct.mt7620_gsw* %19, %struct.mt7620_gsw** %6, align 8
  %20 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %21 = icmp ne %struct.mt7620_gsw* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %94

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.resource*, %struct.resource** %4, align 8
  %29 = call i32 @devm_ioremap_resource(%struct.TYPE_3__* %27, %struct.resource* %28)
  %30 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %31 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %33 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @IS_ERR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %39 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @PTR_ERR(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %94

42:                                               ; preds = %25
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %46 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %45, i32 0, i32 3
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %46, align 8
  %47 = load %struct.device_node*, %struct.device_node** %7, align 8
  %48 = call i32 @of_property_read_string(%struct.device_node* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %5)
  %49 = load i8*, i8** %5, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %42
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** @PORT4_EPHY, align 8
  %57 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %58 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  br label %75

59:                                               ; preds = %51, %42
  %60 = load i8*, i8** %5, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i8*, i8** @PORT4_EXT, align 8
  %68 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %69 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  br label %74

70:                                               ; preds = %62, %59
  %71 = load i8*, i8** @PORT4_EPHY, align 8
  %72 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %73 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %70, %66
  br label %75

75:                                               ; preds = %74, %55
  %76 = load %struct.device_node*, %struct.device_node** %7, align 8
  %77 = call i64 @of_property_read_u16(%struct.device_node* %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64* %8)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %82 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  br label %86

83:                                               ; preds = %75
  %84 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %85 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %79
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = call i32 @platform_get_irq(%struct.platform_device* %87, i32 0)
  %89 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %90 = getelementptr inbounds %struct.mt7620_gsw, %struct.mt7620_gsw* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = load %struct.mt7620_gsw*, %struct.mt7620_gsw** %6, align 8
  %93 = call i32 @platform_set_drvdata(%struct.platform_device* %91, %struct.mt7620_gsw* %92)
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %86, %37, %22
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.mt7620_gsw* @devm_kzalloc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_3__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @of_property_read_u16(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mt7620_gsw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
