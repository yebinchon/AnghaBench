; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-helpers.c_v4l2_destroy_mmap.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-helpers.c_v4l2_destroy_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_buffer_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@MAP_FAILED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_destroy_mmap(%struct.v4l2_buffer_data* %0) #0 {
  %2 = alloca %struct.v4l2_buffer_data*, align 8
  %3 = alloca i64, align 8
  store %struct.v4l2_buffer_data* %0, %struct.v4l2_buffer_data** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %46, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.v4l2_buffer_data*, %struct.v4l2_buffer_data** %2, align 8
  %7 = getelementptr inbounds %struct.v4l2_buffer_data, %struct.v4l2_buffer_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %49

10:                                               ; preds = %4
  %11 = load %struct.v4l2_buffer_data*, %struct.v4l2_buffer_data** %2, align 8
  %12 = getelementptr inbounds %struct.v4l2_buffer_data, %struct.v4l2_buffer_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MAP_FAILED, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %10
  %21 = load %struct.v4l2_buffer_data*, %struct.v4l2_buffer_data** %2, align 8
  %22 = getelementptr inbounds %struct.v4l2_buffer_data, %struct.v4l2_buffer_data* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %20
  %30 = load %struct.v4l2_buffer_data*, %struct.v4l2_buffer_data** %2, align 8
  %31 = getelementptr inbounds %struct.v4l2_buffer_data, %struct.v4l2_buffer_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.v4l2_buffer_data*, %struct.v4l2_buffer_data** %2, align 8
  %38 = getelementptr inbounds %struct.v4l2_buffer_data, %struct.v4l2_buffer_data* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @v4l2_munmap(i64 %36, i32 %43)
  br label %45

45:                                               ; preds = %29, %20, %10
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %3, align 8
  br label %4

49:                                               ; preds = %4
  %50 = load %struct.v4l2_buffer_data*, %struct.v4l2_buffer_data** %2, align 8
  %51 = getelementptr inbounds %struct.v4l2_buffer_data, %struct.v4l2_buffer_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.v4l2_buffer_data*, %struct.v4l2_buffer_data** %2, align 8
  %56 = getelementptr inbounds %struct.v4l2_buffer_data, %struct.v4l2_buffer_data* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = call i32 @bfree(%struct.TYPE_2__* %57)
  %59 = load %struct.v4l2_buffer_data*, %struct.v4l2_buffer_data** %2, align 8
  %60 = getelementptr inbounds %struct.v4l2_buffer_data, %struct.v4l2_buffer_data* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %54, %49
  ret i32 0
}

declare dso_local i32 @v4l2_munmap(i64, i32) #1

declare dso_local i32 @bfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
