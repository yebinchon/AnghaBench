; ModuleID = '/home/carl/AnghaBench/netdata/collectors/tc.plugin/extr_plugin_tc.c_tc_device_create.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/tc.plugin/extr_plugin_tc.c_tc_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_device = type { i8, %struct.tc_device*, %struct.tc_device*, i32, i32, i32 }

@D_TC_LOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"TC: Creating device '%s'\00", align 1
@tc_class_compare = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"plugin_tc: INTERNAL ERROR: removing device '%s' removed a different device.\00", align 1
@tc_device_root = common dso_local global %struct.tc_device* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tc_device* (i8*)* @tc_device_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tc_device* @tc_device_create(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tc_device*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.tc_device* @tc_device_index_find(i8* %4, i32 0)
  store %struct.tc_device* %5, %struct.tc_device** %3, align 8
  %6 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %7 = icmp ne %struct.tc_device* %6, null
  br i1 %7, label %55, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @D_TC_LOOP, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @debug(i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = call %struct.tc_device* @callocz(i32 1, i32 40)
  store %struct.tc_device* %12, %struct.tc_device** %3, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @strdupz(i8* %13)
  %15 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %16 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %18 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @simple_hash(i32 %19)
  %21 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %22 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %24 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %23, i32 0, i32 0
  store i8 -1, i8* %24, align 8
  %25 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %26 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %25, i32 0, i32 4
  %27 = load i32, i32* @tc_class_compare, align 4
  %28 = call i32 @avl_init(i32* %26, i32 %27)
  %29 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %30 = call %struct.tc_device* @tc_device_index_add(%struct.tc_device* %29)
  %31 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %32 = icmp ne %struct.tc_device* %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %8
  %37 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %38 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @error(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %36, %8
  %42 = load %struct.tc_device*, %struct.tc_device** @tc_device_root, align 8
  %43 = icmp ne %struct.tc_device* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  store %struct.tc_device* %45, %struct.tc_device** @tc_device_root, align 8
  br label %54

46:                                               ; preds = %41
  %47 = load %struct.tc_device*, %struct.tc_device** @tc_device_root, align 8
  %48 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %49 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %48, i32 0, i32 2
  store %struct.tc_device* %47, %struct.tc_device** %49, align 8
  %50 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  %51 = load %struct.tc_device*, %struct.tc_device** @tc_device_root, align 8
  %52 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %51, i32 0, i32 1
  store %struct.tc_device* %50, %struct.tc_device** %52, align 8
  %53 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  store %struct.tc_device* %53, %struct.tc_device** @tc_device_root, align 8
  br label %54

54:                                               ; preds = %46, %44
  br label %55

55:                                               ; preds = %54, %1
  %56 = load %struct.tc_device*, %struct.tc_device** %3, align 8
  ret %struct.tc_device* %56
}

declare dso_local %struct.tc_device* @tc_device_index_find(i8*, i32) #1

declare dso_local i32 @debug(i32, i8*, i8*) #1

declare dso_local %struct.tc_device* @callocz(i32, i32) #1

declare dso_local i32 @strdupz(i8*) #1

declare dso_local i32 @simple_hash(i32) #1

declare dso_local i32 @avl_init(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.tc_device* @tc_device_index_add(%struct.tc_device*) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
