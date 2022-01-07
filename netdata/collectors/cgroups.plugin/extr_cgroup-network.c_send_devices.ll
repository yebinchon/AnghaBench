; ModuleID = '/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_cgroup-network.c_send_devices.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/cgroups.plugin/extr_cgroup-network.c_send_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.found_device = type { i8*, i8*, %struct.found_device* }

@detected_devices = common dso_local global %struct.found_device* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @send_devices() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.found_device*, align 8
  store i32 0, i32* %1, align 4
  %3 = load %struct.found_device*, %struct.found_device** @detected_devices, align 8
  store %struct.found_device* %3, %struct.found_device** %2, align 8
  br label %4

4:                                                ; preds = %28, %0
  %5 = load %struct.found_device*, %struct.found_device** %2, align 8
  %6 = icmp ne %struct.found_device* %5, null
  br i1 %6, label %7, label %32

7:                                                ; preds = %4
  %8 = load i32, i32* %1, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %1, align 4
  %10 = load %struct.found_device*, %struct.found_device** %2, align 8
  %11 = getelementptr inbounds %struct.found_device, %struct.found_device* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.found_device*, %struct.found_device** %2, align 8
  %14 = getelementptr inbounds %struct.found_device, %struct.found_device* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %7
  %18 = load %struct.found_device*, %struct.found_device** %2, align 8
  %19 = getelementptr inbounds %struct.found_device, %struct.found_device* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  br label %25

21:                                               ; preds = %7
  %22 = load %struct.found_device*, %struct.found_device** %2, align 8
  %23 = getelementptr inbounds %struct.found_device, %struct.found_device* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i8* [ %20, %17 ], [ %24, %21 ]
  %27 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %26)
  br label %28

28:                                               ; preds = %25
  %29 = load %struct.found_device*, %struct.found_device** %2, align 8
  %30 = getelementptr inbounds %struct.found_device, %struct.found_device* %29, i32 0, i32 2
  %31 = load %struct.found_device*, %struct.found_device** %30, align 8
  store %struct.found_device* %31, %struct.found_device** %2, align 8
  br label %4

32:                                               ; preds = %4
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
