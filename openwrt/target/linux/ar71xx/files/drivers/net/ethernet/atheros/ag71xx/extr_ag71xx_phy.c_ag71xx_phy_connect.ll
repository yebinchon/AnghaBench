; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_phy.c_ag71xx_phy_connect.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_phy.c_ag71xx_phy_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 (%struct.TYPE_7__*)* }
%struct.TYPE_6__ = type { i32 }
%struct.ag71xx_platform_data = type { i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [39 x i8] c"unable to find MII bus on device '%s'\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ag71xx_phy_connect(%struct.ag71xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ag71xx*, align 8
  %4 = alloca %struct.ag71xx_platform_data*, align 8
  store %struct.ag71xx* %0, %struct.ag71xx** %3, align 8
  %5 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %6 = call %struct.ag71xx_platform_data* @ag71xx_get_pdata(%struct.ag71xx* %5)
  store %struct.ag71xx_platform_data* %6, %struct.ag71xx_platform_data** %4, align 8
  %7 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %4, align 8
  %8 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %7, i32 0, i32 2
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = icmp eq %struct.TYPE_8__* %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %4, align 8
  %13 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %12, i32 0, i32 2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %11, %1
  %19 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %20 = call i32 @ag71xx_phy_connect_fixed(%struct.ag71xx* %19)
  store i32 %20, i32* %2, align 4
  br label %90

21:                                               ; preds = %11
  %22 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %4, align 8
  %23 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %22, i32 0, i32 2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = call %struct.TYPE_7__* @dev_to_mii_bus(%struct.TYPE_8__* %24)
  %26 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %27 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %26, i32 0, i32 0
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %27, align 8
  %28 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %29 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = icmp eq %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %21
  %33 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %34 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %4, align 8
  %38 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %37, i32 0, i32 2
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = call i32 @dev_name(%struct.TYPE_8__* %39)
  %41 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %90

44:                                               ; preds = %21
  %45 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %46 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %48, align 8
  %50 = icmp ne i32 (%struct.TYPE_7__*)* %49, null
  br i1 %50, label %51, label %71

51:                                               ; preds = %44
  %52 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %53 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = call i32 @mutex_lock(i32* %55)
  %57 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %58 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %60, align 8
  %62 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %63 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = call i32 %61(%struct.TYPE_7__* %64)
  %66 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %67 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  br label %71

71:                                               ; preds = %51, %44
  %72 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %4, align 8
  %73 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %78 = call i32 @ag71xx_ar7240_init(%struct.ag71xx* %77)
  store i32 %78, i32* %2, align 4
  br label %90

79:                                               ; preds = %71
  %80 = load %struct.ag71xx_platform_data*, %struct.ag71xx_platform_data** %4, align 8
  %81 = getelementptr inbounds %struct.ag71xx_platform_data, %struct.ag71xx_platform_data* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %86 = call i32 @ag71xx_phy_connect_multi(%struct.ag71xx* %85)
  store i32 %86, i32* %2, align 4
  br label %90

87:                                               ; preds = %79
  %88 = load %struct.ag71xx*, %struct.ag71xx** %3, align 8
  %89 = call i32 @ag71xx_phy_connect_fixed(%struct.ag71xx* %88)
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %87, %84, %76, %32, %18
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.ag71xx_platform_data* @ag71xx_get_pdata(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_phy_connect_fixed(%struct.ag71xx*) #1

declare dso_local %struct.TYPE_7__* @dev_to_mii_bus(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_8__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ag71xx_ar7240_init(%struct.ag71xx*) #1

declare dso_local i32 @ag71xx_phy_connect_multi(%struct.ag71xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
