; ModuleID = '/home/carl/AnghaBench/linux/tools/virtio/extr_vringh_test.c_getrange_iov.c'
source_filename = "/home/carl/AnghaBench/linux/tools/virtio/extr_vringh_test.c_getrange_iov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vringh = type { i32 }
%struct.vringh_range = type { i64, i64, i64 }

@__user_addr_min = common dso_local global i64 0, align 8
@user_addr_offset = common dso_local global i64 0, align 8
@__user_addr_max = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vringh*, i64, %struct.vringh_range*)* @getrange_iov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getrange_iov(%struct.vringh* %0, i64 %1, %struct.vringh_range* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vringh*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vringh_range*, align 8
  store %struct.vringh* %0, %struct.vringh** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.vringh_range* %2, %struct.vringh_range** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @__user_addr_min, align 8
  %10 = load i64, i64* @user_addr_offset, align 8
  %11 = sub nsw i64 %9, %10
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @__user_addr_max, align 8
  %17 = load i64, i64* @user_addr_offset, align 8
  %18 = sub nsw i64 %16, %17
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %36

21:                                               ; preds = %14
  %22 = load i64, i64* @__user_addr_min, align 8
  %23 = load i64, i64* @user_addr_offset, align 8
  %24 = sub nsw i64 %22, %23
  %25 = load %struct.vringh_range*, %struct.vringh_range** %7, align 8
  %26 = getelementptr inbounds %struct.vringh_range, %struct.vringh_range* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* @__user_addr_max, align 8
  %28 = sub nsw i64 %27, 1
  %29 = load i64, i64* @user_addr_offset, align 8
  %30 = sub nsw i64 %28, %29
  %31 = load %struct.vringh_range*, %struct.vringh_range** %7, align 8
  %32 = getelementptr inbounds %struct.vringh_range, %struct.vringh_range* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* @user_addr_offset, align 8
  %34 = load %struct.vringh_range*, %struct.vringh_range** %7, align 8
  %35 = getelementptr inbounds %struct.vringh_range, %struct.vringh_range* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %21, %20, %13
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
