; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_port_get_mib.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/b53/extr_b53_common.c_b53_port_get_mib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_mib_desc = type { i32, i8*, i32 }
%struct.switch_dev = type { i32 }
%struct.switch_attr = type { i32 }
%struct.switch_val = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }
%struct.b53_device = type { i32, i64* }

@b53_mibs_65 = common dso_local global %struct.b53_mib_desc* null, align 8
@b53_mibs_63xx = common dso_local global %struct.b53_mib_desc* null, align 8
@b53_mibs = common dso_local global %struct.b53_mib_desc* null, align 8
@B53_BUF_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"%-20s: %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, %struct.switch_attr*, %struct.switch_val*)* @b53_port_get_mib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_port_get_mib(%struct.switch_dev* %0, %struct.switch_attr* %1, %struct.switch_val* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.switch_dev*, align 8
  %6 = alloca %struct.switch_attr*, align 8
  %7 = alloca %struct.switch_val*, align 8
  %8 = alloca %struct.b53_device*, align 8
  %9 = alloca %struct.b53_mib_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %5, align 8
  store %struct.switch_attr* %1, %struct.switch_attr** %6, align 8
  store %struct.switch_val* %2, %struct.switch_val** %7, align 8
  %14 = load %struct.switch_dev*, %struct.switch_dev** %5, align 8
  %15 = call %struct.b53_device* @sw_to_b53(%struct.switch_dev* %14)
  store %struct.b53_device* %15, %struct.b53_device** %8, align 8
  %16 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %17 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @BIT(i32 %19)
  %21 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %22 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %111

27:                                               ; preds = %3
  %28 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %29 = call i64 @is5365(%struct.b53_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 5
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 8, i32* %10, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** @b53_mibs_65, align 8
  store %struct.b53_mib_desc* %36, %struct.b53_mib_desc** %9, align 8
  br label %46

37:                                               ; preds = %27
  %38 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %39 = call i64 @is63xx(%struct.b53_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** @b53_mibs_63xx, align 8
  store %struct.b53_mib_desc* %42, %struct.b53_mib_desc** %9, align 8
  br label %45

43:                                               ; preds = %37
  %44 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** @b53_mibs, align 8
  store %struct.b53_mib_desc* %44, %struct.b53_mib_desc** %9, align 8
  br label %45

45:                                               ; preds = %43, %41
  br label %46

46:                                               ; preds = %45, %35
  %47 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %48 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %98, %46
  %52 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** %9, align 8
  %53 = getelementptr inbounds %struct.b53_mib_desc, %struct.b53_mib_desc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %101

56:                                               ; preds = %51
  %57 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** %9, align 8
  %58 = getelementptr inbounds %struct.b53_mib_desc, %struct.b53_mib_desc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 8
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @B53_MIB_PAGE(i32 %63)
  %65 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** %9, align 8
  %66 = getelementptr inbounds %struct.b53_mib_desc, %struct.b53_mib_desc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @b53_read64(%struct.b53_device* %62, i32 %64, i32 %67, i32* %12)
  br label %78

69:                                               ; preds = %56
  %70 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @B53_MIB_PAGE(i32 %71)
  %73 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** %9, align 8
  %74 = getelementptr inbounds %struct.b53_mib_desc, %struct.b53_mib_desc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @b53_read32(%struct.b53_device* %70, i32 %72, i32 %75, i32* %13)
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %69, %61
  %79 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %80 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* @B53_BUF_SIZE, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = sub nsw i64 %85, %87
  %89 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** %9, align 8
  %90 = getelementptr inbounds %struct.b53_mib_desc, %struct.b53_mib_desc* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i64 @snprintf(i64* %84, i64 %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %91, i32 %92)
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %78
  %99 = load %struct.b53_mib_desc*, %struct.b53_mib_desc** %9, align 8
  %100 = getelementptr inbounds %struct.b53_mib_desc, %struct.b53_mib_desc* %99, i32 1
  store %struct.b53_mib_desc* %100, %struct.b53_mib_desc** %9, align 8
  br label %51

101:                                              ; preds = %51
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %104 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  %106 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = load %struct.switch_val*, %struct.switch_val** %7, align 8
  %109 = getelementptr inbounds %struct.switch_val, %struct.switch_val* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i64* %107, i64** %110, align 8
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %101, %26
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.b53_device* @sw_to_b53(%struct.switch_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @is5365(%struct.b53_device*) #1

declare dso_local i64 @is63xx(%struct.b53_device*) #1

declare dso_local i32 @b53_read64(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i32 @B53_MIB_PAGE(i32) #1

declare dso_local i32 @b53_read32(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i64 @snprintf(i64*, i64, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
