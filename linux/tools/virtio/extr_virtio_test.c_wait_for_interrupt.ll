; ModuleID = '/home/carl/AnghaBench/linux/tools/virtio/extr_virtio_test.c_wait_for_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/virtio/extr_virtio_test.c_wait_for_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdev_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdev_info*)* @wait_for_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_interrupt(%struct.vdev_info* %0) #0 {
  %2 = alloca %struct.vdev_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.vdev_info* %0, %struct.vdev_info** %2, align 8
  %5 = load %struct.vdev_info*, %struct.vdev_info** %2, align 8
  %6 = getelementptr inbounds %struct.vdev_info, %struct.vdev_info* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load %struct.vdev_info*, %struct.vdev_info** %2, align 8
  %9 = getelementptr inbounds %struct.vdev_info, %struct.vdev_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @poll(%struct.TYPE_2__* %7, i32 %10, i32 -1)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %41, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.vdev_info*, %struct.vdev_info** %2, align 8
  %15 = getelementptr inbounds %struct.vdev_info, %struct.vdev_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %12
  %19 = load %struct.vdev_info*, %struct.vdev_info** %2, align 8
  %20 = getelementptr inbounds %struct.vdev_info, %struct.vdev_info* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @POLLIN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %18
  %31 = load %struct.vdev_info*, %struct.vdev_info** %2, align 8
  %32 = getelementptr inbounds %struct.vdev_info, %struct.vdev_info* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @read(i32 %38, i64* %4, i32 8)
  br label %40

40:                                               ; preds = %30, %18
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %12

44:                                               ; preds = %12
  ret void
}

declare dso_local i32 @poll(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @read(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
