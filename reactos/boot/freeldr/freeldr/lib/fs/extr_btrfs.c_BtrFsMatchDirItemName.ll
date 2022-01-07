; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_BtrFsMatchDirItemName.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_BtrFsMatchDirItemName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_dir_item = type { i32, i32 }
%struct.btrfs_path = type { i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btrfs_dir_item* (%struct.btrfs_path*, i8*, i32)* @BtrFsMatchDirItemName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btrfs_dir_item* @BtrFsMatchDirItemName(%struct.btrfs_path* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_dir_item*, align 8
  %5 = alloca %struct.btrfs_path*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_dir_item*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.btrfs_path* %0, %struct.btrfs_path** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %13 = call i64 @path_current_data(%struct.btrfs_path* %12)
  %14 = inttoptr i64 %13 to %struct.btrfs_dir_item*
  store %struct.btrfs_dir_item* %14, %struct.btrfs_dir_item** %8, align 8
  store i64 0, i64* %9, align 8
  br label %15

15:                                               ; preds = %56, %3
  %16 = load i64, i64* %9, align 8
  %17 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %18 = call %struct.TYPE_2__* @path_current_item(%struct.btrfs_path* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %16, %20
  br i1 %21, label %22, label %65

22:                                               ; preds = %15
  %23 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %8, align 8
  %24 = getelementptr inbounds %struct.btrfs_dir_item, %struct.btrfs_dir_item* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 8, %26
  %28 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %8, align 8
  %29 = getelementptr inbounds %struct.btrfs_dir_item, %struct.btrfs_dir_item* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %27, %31
  store i64 %32, i64* %10, align 8
  %33 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %8, align 8
  %34 = bitcast %struct.btrfs_dir_item* %33 to i8*
  %35 = getelementptr inbounds i8, i8* %34, i64 8
  store i8* %35, i8** %11, align 8
  %36 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @verify_dir_item(%struct.btrfs_dir_item* %36, i64 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %22
  store %struct.btrfs_dir_item* null, %struct.btrfs_dir_item** %4, align 8
  br label %66

42:                                               ; preds = %22
  %43 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %8, align 8
  %44 = getelementptr inbounds %struct.btrfs_dir_item, %struct.btrfs_dir_item* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @memcmp(i8* %49, i8* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  %55 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %8, align 8
  store %struct.btrfs_dir_item* %55, %struct.btrfs_dir_item** %4, align 8
  br label %66

56:                                               ; preds = %48, %42
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %9, align 8
  %60 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %8, align 8
  %61 = bitcast %struct.btrfs_dir_item* %60 to i32*
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = bitcast i32* %63 to %struct.btrfs_dir_item*
  store %struct.btrfs_dir_item* %64, %struct.btrfs_dir_item** %8, align 8
  br label %15

65:                                               ; preds = %15
  store %struct.btrfs_dir_item* null, %struct.btrfs_dir_item** %4, align 8
  br label %66

66:                                               ; preds = %65, %54, %41
  %67 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %4, align 8
  ret %struct.btrfs_dir_item* %67
}

declare dso_local i64 @path_current_data(%struct.btrfs_path*) #1

declare dso_local %struct.TYPE_2__* @path_current_item(%struct.btrfs_path*) #1

declare dso_local i64 @verify_dir_item(%struct.btrfs_dir_item*, i64, i64) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
