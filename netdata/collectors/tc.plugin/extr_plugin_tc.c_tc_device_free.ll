; ModuleID = '/home/carl/AnghaBench/netdata/collectors/tc.plugin/extr_plugin_tc.c_tc_device_free.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/tc.plugin/extr_plugin_tc.c_tc_device_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_device = type { %struct.tc_device*, %struct.tc_device*, %struct.tc_device*, i64, %struct.tc_device*, %struct.tc_device* }

@tc_device_root = common dso_local global %struct.tc_device* null, align 8
@.str = private unnamed_addr constant [76 x i8] c"plugin_tc: INTERNAL ERROR: removing device '%s' removed a different device.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tc_device*)* @tc_device_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc_device_free(%struct.tc_device* %0) #0 {
  %2 = alloca %struct.tc_device*, align 8
  store %struct.tc_device* %0, %struct.tc_device** %2, align 8
  %3 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %4 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %3, i32 0, i32 5
  %5 = load %struct.tc_device*, %struct.tc_device** %4, align 8
  %6 = icmp ne %struct.tc_device* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %9 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %8, i32 0, i32 4
  %10 = load %struct.tc_device*, %struct.tc_device** %9, align 8
  %11 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %12 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %11, i32 0, i32 5
  %13 = load %struct.tc_device*, %struct.tc_device** %12, align 8
  %14 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %13, i32 0, i32 4
  store %struct.tc_device* %10, %struct.tc_device** %14, align 8
  br label %15

15:                                               ; preds = %7, %1
  %16 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %17 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %16, i32 0, i32 4
  %18 = load %struct.tc_device*, %struct.tc_device** %17, align 8
  %19 = icmp ne %struct.tc_device* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %22 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %21, i32 0, i32 5
  %23 = load %struct.tc_device*, %struct.tc_device** %22, align 8
  %24 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %25 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %24, i32 0, i32 4
  %26 = load %struct.tc_device*, %struct.tc_device** %25, align 8
  %27 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %26, i32 0, i32 5
  store %struct.tc_device* %23, %struct.tc_device** %27, align 8
  br label %28

28:                                               ; preds = %20, %15
  %29 = load %struct.tc_device*, %struct.tc_device** @tc_device_root, align 8
  %30 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %31 = icmp eq %struct.tc_device* %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %34 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %33, i32 0, i32 5
  %35 = load %struct.tc_device*, %struct.tc_device** %34, align 8
  %36 = icmp ne %struct.tc_device* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %39 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %38, i32 0, i32 5
  %40 = load %struct.tc_device*, %struct.tc_device** %39, align 8
  store %struct.tc_device* %40, %struct.tc_device** @tc_device_root, align 8
  br label %45

41:                                               ; preds = %32
  %42 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %43 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %42, i32 0, i32 4
  %44 = load %struct.tc_device*, %struct.tc_device** %43, align 8
  store %struct.tc_device* %44, %struct.tc_device** @tc_device_root, align 8
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45, %28
  %47 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %48 = call %struct.tc_device* @tc_device_index_del(%struct.tc_device* %47)
  %49 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %50 = icmp ne %struct.tc_device* %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %56 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %55, i32 0, i32 2
  %57 = load %struct.tc_device*, %struct.tc_device** %56, align 8
  %58 = call i32 @error(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), %struct.tc_device* %57)
  br label %59

59:                                               ; preds = %54, %46
  br label %60

60:                                               ; preds = %65, %59
  %61 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %62 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %67 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %68 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @tc_class_free(%struct.tc_device* %66, i64 %69)
  br label %60

71:                                               ; preds = %60
  %72 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %73 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %72, i32 0, i32 2
  %74 = load %struct.tc_device*, %struct.tc_device** %73, align 8
  %75 = call i32 @freez(%struct.tc_device* %74)
  %76 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %77 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %76, i32 0, i32 1
  %78 = load %struct.tc_device*, %struct.tc_device** %77, align 8
  %79 = call i32 @freez(%struct.tc_device* %78)
  %80 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %81 = getelementptr inbounds %struct.tc_device, %struct.tc_device* %80, i32 0, i32 0
  %82 = load %struct.tc_device*, %struct.tc_device** %81, align 8
  %83 = call i32 @freez(%struct.tc_device* %82)
  %84 = load %struct.tc_device*, %struct.tc_device** %2, align 8
  %85 = call i32 @freez(%struct.tc_device* %84)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.tc_device* @tc_device_index_del(%struct.tc_device*) #1

declare dso_local i32 @error(i8*, %struct.tc_device*) #1

declare dso_local i32 @tc_class_free(%struct.tc_device*, i64) #1

declare dso_local i32 @freez(%struct.tc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
