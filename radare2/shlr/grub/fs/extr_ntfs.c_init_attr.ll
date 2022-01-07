; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ntfs.c_init_attr.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ntfs.c_init_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_ntfs_attr = type { i32*, i32, i32, i32, i64, i32, %struct.grub_ntfs_file* }
%struct.grub_ntfs_file = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.grub_ntfs_file }

@AF_MMFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grub_ntfs_attr*, %struct.grub_ntfs_file*)* @init_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_attr(%struct.grub_ntfs_attr* %0, %struct.grub_ntfs_file* %1) #0 {
  %3 = alloca %struct.grub_ntfs_attr*, align 8
  %4 = alloca %struct.grub_ntfs_file*, align 8
  store %struct.grub_ntfs_attr* %0, %struct.grub_ntfs_attr** %3, align 8
  store %struct.grub_ntfs_file* %1, %struct.grub_ntfs_file** %4, align 8
  %5 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %4, align 8
  %6 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %3, align 8
  %7 = getelementptr inbounds %struct.grub_ntfs_attr, %struct.grub_ntfs_attr* %6, i32 0, i32 6
  store %struct.grub_ntfs_file* %5, %struct.grub_ntfs_file** %7, align 8
  %8 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %4, align 8
  %9 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %4, align 8
  %10 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = icmp eq %struct.grub_ntfs_file* %8, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @AF_MMFT, align 4
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ]
  %19 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %3, align 8
  %20 = getelementptr inbounds %struct.grub_ntfs_attr, %struct.grub_ntfs_attr* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %4, align 8
  %22 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %4, align 8
  %25 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @u16at(i64 %26, i32 20)
  %28 = add nsw i64 %23, %27
  %29 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %3, align 8
  %30 = getelementptr inbounds %struct.grub_ntfs_attr, %struct.grub_ntfs_attr* %29, i32 0, i32 4
  store i64 %28, i64* %30, align 8
  %31 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %3, align 8
  %32 = getelementptr inbounds %struct.grub_ntfs_attr, %struct.grub_ntfs_attr* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %3, align 8
  %34 = getelementptr inbounds %struct.grub_ntfs_attr, %struct.grub_ntfs_attr* %33, i32 0, i32 1
  store i32 0, i32* %34, align 8
  %35 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %3, align 8
  %36 = getelementptr inbounds %struct.grub_ntfs_attr, %struct.grub_ntfs_attr* %35, i32 0, i32 2
  store i32 0, i32* %36, align 4
  %37 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %3, align 8
  %38 = getelementptr inbounds %struct.grub_ntfs_attr, %struct.grub_ntfs_attr* %37, i32 0, i32 3
  store i32 0, i32* %38, align 8
  ret void
}

declare dso_local i64 @u16at(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
