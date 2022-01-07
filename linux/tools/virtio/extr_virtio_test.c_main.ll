; ModuleID = '/home/carl/AnghaBench/linux/tools/virtio/extr_virtio_test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/virtio/extr_virtio_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdev_info = type { i32* }

@VIRTIO_RING_F_INDIRECT_DESC = common dso_local global i64 0, align 8
@VIRTIO_RING_F_EVENT_IDX = common dso_local global i64 0, align 8
@VIRTIO_F_VERSION_1 = common dso_local global i64 0, align 8
@optstring = common dso_local global i32 0, align 4
@longopts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.vdev_info, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i64, i64* @VIRTIO_RING_F_INDIRECT_DESC, align 8
  %11 = shl i64 1, %10
  %12 = load i64, i64* @VIRTIO_RING_F_EVENT_IDX, align 8
  %13 = shl i64 1, %12
  %14 = or i64 %11, %13
  %15 = load i64, i64* @VIRTIO_F_VERSION_1, align 8
  %16 = shl i64 1, %15
  %17 = or i64 %14, %16
  store i64 %17, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %52, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = load i32, i32* @optstring, align 4
  %22 = load i32, i32* @longopts, align 4
  %23 = call i32 @getopt_long(i32 %19, i8** %20, i32 %21, i32 %22, i32* null)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %50 [
    i32 -1, label %25
    i32 63, label %26
    i32 101, label %29
    i32 104, label %35
    i32 105, label %37
    i32 48, label %43
    i32 68, label %49
  ]

25:                                               ; preds = %18
  br label %53

26:                                               ; preds = %18
  %27 = call i32 (...) @help()
  %28 = call i32 @exit(i32 2) #3
  unreachable

29:                                               ; preds = %18
  %30 = load i64, i64* @VIRTIO_RING_F_EVENT_IDX, align 8
  %31 = shl i64 1, %30
  %32 = xor i64 %31, -1
  %33 = load i64, i64* %7, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %7, align 8
  br label %52

35:                                               ; preds = %18
  %36 = call i32 (...) @help()
  br label %53

37:                                               ; preds = %18
  %38 = load i64, i64* @VIRTIO_RING_F_INDIRECT_DESC, align 8
  %39 = shl i64 1, %38
  %40 = xor i64 %39, -1
  %41 = load i64, i64* %7, align 8
  %42 = and i64 %41, %40
  store i64 %42, i64* %7, align 8
  br label %52

43:                                               ; preds = %18
  %44 = load i64, i64* @VIRTIO_F_VERSION_1, align 8
  %45 = shl i64 1, %44
  %46 = xor i64 %45, -1
  %47 = load i64, i64* %7, align 8
  %48 = and i64 %47, %46
  store i64 %48, i64* %7, align 8
  br label %52

49:                                               ; preds = %18
  store i32 1, i32* %9, align 4
  br label %52

50:                                               ; preds = %18
  %51 = call i32 @assert(i32 0)
  br label %52

52:                                               ; preds = %50, %49, %43, %37, %29
  br label %18

53:                                               ; preds = %35, %25
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @vdev_info_init(%struct.vdev_info* %6, i64 %54)
  %56 = call i32 @vq_info_add(%struct.vdev_info* %6, i32 256)
  %57 = getelementptr inbounds %struct.vdev_info, %struct.vdev_info* %6, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @run_test(%struct.vdev_info* %6, i32* %59, i32 %60, i32 1048576)
  ret i32 0
}

declare dso_local i32 @getopt_long(i32, i8**, i32, i32, i32*) #1

declare dso_local i32 @help(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vdev_info_init(%struct.vdev_info*, i64) #1

declare dso_local i32 @vq_info_add(%struct.vdev_info*, i32) #1

declare dso_local i32 @run_test(%struct.vdev_info*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
