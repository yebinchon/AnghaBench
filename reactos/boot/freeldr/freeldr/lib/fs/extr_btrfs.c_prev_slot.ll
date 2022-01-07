; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_prev_slot.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_prev_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_disk_key = type { i32 }
%struct.btrfs_path = type { i32* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_disk_key*, %struct.btrfs_path*)* @prev_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prev_slot(%struct.btrfs_disk_key* %0, %struct.btrfs_path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_disk_key*, align 8
  %5 = alloca %struct.btrfs_path*, align 8
  store %struct.btrfs_disk_key* %0, %struct.btrfs_disk_key** %4, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %5, align 8
  %6 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %7 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %33

13:                                               ; preds = %2
  %14 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %15 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %21 = call %struct.TYPE_3__* @path_current_disk_key(%struct.btrfs_path* %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %13
  %26 = load %struct.btrfs_disk_key*, %struct.btrfs_disk_key** %4, align 8
  %27 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %28 = call %struct.TYPE_3__* @path_current_disk_key(%struct.btrfs_path* %27)
  %29 = call i32 @btrfs_comp_keys_type(%struct.btrfs_disk_key* %26, %struct.TYPE_3__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %33

32:                                               ; preds = %25, %13
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.TYPE_3__* @path_current_disk_key(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_comp_keys_type(%struct.btrfs_disk_key*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
