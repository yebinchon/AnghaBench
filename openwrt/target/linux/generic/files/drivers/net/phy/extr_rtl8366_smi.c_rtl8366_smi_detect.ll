; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_smi_detect.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c_rtl8366_smi_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32, i32, i32, i32, i32 }
%struct.rtl8366_platform_data = type { i32, i32 }

@rtl8366_smi_detect.smi = internal global %struct.rtl8366_smi zeroinitializer, align 4
@RTL8366_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"rtl8366\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Found an RTL8366S switch\0A\00", align 1
@RTL8366_TYPE_S = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Found an RTL8366RB switch\0A\00", align 1
@RTL8366_TYPE_RB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Found an Unknown RTL8366 switch (id=0x%04x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8366_smi_detect(%struct.rtl8366_platform_data* %0) #0 {
  %2 = alloca %struct.rtl8366_platform_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rtl8366_platform_data* %0, %struct.rtl8366_platform_data** %2, align 8
  %5 = load i32, i32* @RTL8366_TYPE_UNKNOWN, align 4
  store i32 %5, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = call i32 @memset(%struct.rtl8366_smi* @rtl8366_smi_detect.smi, i32 0, i32 20)
  %7 = load %struct.rtl8366_platform_data*, %struct.rtl8366_platform_data** %2, align 8
  %8 = getelementptr inbounds %struct.rtl8366_platform_data, %struct.rtl8366_platform_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.rtl8366_smi, %struct.rtl8366_smi* @rtl8366_smi_detect.smi, i32 0, i32 4), align 4
  %10 = load %struct.rtl8366_platform_data*, %struct.rtl8366_platform_data** %2, align 8
  %11 = getelementptr inbounds %struct.rtl8366_platform_data, %struct.rtl8366_platform_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.rtl8366_smi, %struct.rtl8366_smi* @rtl8366_smi_detect.smi, i32 0, i32 3), align 4
  store i32 10, i32* getelementptr inbounds (%struct.rtl8366_smi, %struct.rtl8366_smi* @rtl8366_smi_detect.smi, i32 0, i32 0), align 4
  store i32 169, i32* getelementptr inbounds (%struct.rtl8366_smi, %struct.rtl8366_smi* @rtl8366_smi_detect.smi, i32 0, i32 1), align 4
  store i32 168, i32* getelementptr inbounds (%struct.rtl8366_smi, %struct.rtl8366_smi* @rtl8366_smi_detect.smi, i32 0, i32 2), align 4
  %13 = call i64 @__rtl8366_smi_init(%struct.rtl8366_smi* @rtl8366_smi_detect.smi, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %34

16:                                               ; preds = %1
  %17 = call i64 @rtl8366_smi_read_reg(%struct.rtl8366_smi* @rtl8366_smi_detect.smi, i32 92, i32* %4)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %32

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %28 [
    i32 24615, label %22
    i32 22839, label %25
  ]

22:                                               ; preds = %20
  %23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @RTL8366_TYPE_S, align 4
  store i32 %24, i32* %3, align 4
  br label %31

25:                                               ; preds = %20
  %26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* @RTL8366_TYPE_RB, align 4
  store i32 %27, i32* %3, align 4
  br label %31

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  %30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %25, %22
  br label %32

32:                                               ; preds = %31, %19
  %33 = call i32 @__rtl8366_smi_cleanup(%struct.rtl8366_smi* @rtl8366_smi_detect.smi)
  br label %34

34:                                               ; preds = %32, %15
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @memset(%struct.rtl8366_smi*, i32, i32) #1

declare dso_local i64 @__rtl8366_smi_init(%struct.rtl8366_smi*, i8*) #1

declare dso_local i64 @rtl8366_smi_read_reg(%struct.rtl8366_smi*, i32, i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @__rtl8366_smi_cleanup(%struct.rtl8366_smi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
