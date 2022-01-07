; ModuleID = '/home/carl/AnghaBench/netdata/collectors/tc.plugin/extr_plugin_tc.c_tc_device_classes_cleanup.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/tc.plugin/extr_plugin_tc.c_tc_device_classes_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_device = type { %struct.tc_class*, i64, i64 }
%struct.tc_class = type { i32, %struct.tc_class*, i64, i64 }

@tc_device_classes_cleanup.cleanup_every = internal global i32 999, align 4
@.str = private unnamed_addr constant [10 x i8] c"plugin:tc\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"cleanup unused classes every\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tc_device*)* @tc_device_classes_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc_device_classes_cleanup(%struct.tc_device* %0) #0 {
  %2 = alloca %struct.tc_device*, align 8
  %3 = alloca %struct.tc_class*, align 8
  %4 = alloca %struct.tc_class*, align 8
  store %struct.tc_device* %0, %struct.tc_device** %2, align 8
  %5 = load i32, i32* @tc_device_classes_cleanup.cleanup_every, align 4
  %6 = icmp sgt i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = call i64 @config_get_number(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 120)
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* @tc_device_classes_cleanup.cleanup_every, align 4
  %13 = load i32, i32* @tc_device_classes_cleanup.cleanup_every, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @tc_device_classes_cleanup.cleanup_every, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* @tc_device_classes_cleanup.cleanup_every, align 4
  br label %18

18:                                               ; preds = %15, %10
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %21 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %23 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %25 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %24, i32 0, i32 0
  %26 = load %struct.tc_class*, %struct.tc_class** %25, align 8
  store %struct.tc_class* %26, %struct.tc_class** %3, align 8
  br label %27

27:                                               ; preds = %60, %19
  %28 = load %struct.tc_class*, %struct.tc_class** %3, align 8
  %29 = icmp ne %struct.tc_class* %28, null
  br i1 %29, label %30, label %61

30:                                               ; preds = %27
  %31 = load i32, i32* @tc_device_classes_cleanup.cleanup_every, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.tc_class*, %struct.tc_class** %3, align 8
  %35 = getelementptr inbounds %struct.tc_class, %struct.tc_class* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @tc_device_classes_cleanup.cleanup_every, align 4
  %38 = icmp sge i32 %36, %37
  br label %39

39:                                               ; preds = %33, %30
  %40 = phi i1 [ false, %30 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.tc_class*, %struct.tc_class** %3, align 8
  %46 = getelementptr inbounds %struct.tc_class, %struct.tc_class* %45, i32 0, i32 1
  %47 = load %struct.tc_class*, %struct.tc_class** %46, align 8
  store %struct.tc_class* %47, %struct.tc_class** %4, align 8
  %48 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %49 = load %struct.tc_class*, %struct.tc_class** %3, align 8
  %50 = call i32 @tc_class_free(%struct.tc_device* %48, %struct.tc_class* %49)
  %51 = load %struct.tc_class*, %struct.tc_class** %4, align 8
  store %struct.tc_class* %51, %struct.tc_class** %3, align 8
  br label %60

52:                                               ; preds = %39
  %53 = load %struct.tc_class*, %struct.tc_class** %3, align 8
  %54 = getelementptr inbounds %struct.tc_class, %struct.tc_class* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.tc_class*, %struct.tc_class** %3, align 8
  %56 = getelementptr inbounds %struct.tc_class, %struct.tc_class* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.tc_class*, %struct.tc_class** %3, align 8
  %58 = getelementptr inbounds %struct.tc_class, %struct.tc_class* %57, i32 0, i32 1
  %59 = load %struct.tc_class*, %struct.tc_class** %58, align 8
  store %struct.tc_class* %59, %struct.tc_class** %3, align 8
  br label %60

60:                                               ; preds = %52, %44
  br label %27

61:                                               ; preds = %27
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @config_get_number(i8*, i8*, i32) #1

declare dso_local i32 @tc_class_free(%struct.tc_device*, %struct.tc_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
