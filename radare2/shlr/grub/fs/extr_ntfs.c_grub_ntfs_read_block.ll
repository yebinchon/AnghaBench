; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ntfs.c_grub_ntfs_read_block.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ntfs.c_grub_ntfs_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_ntfs_rlst = type { i64, i64, i32, i64 }

@RF_BLNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @grub_ntfs_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_ntfs_read_block(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.grub_ntfs_rlst*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to %struct.grub_ntfs_rlst*
  store %struct.grub_ntfs_rlst* %8, %struct.grub_ntfs_rlst** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.grub_ntfs_rlst*, %struct.grub_ntfs_rlst** %6, align 8
  %11 = getelementptr inbounds %struct.grub_ntfs_rlst, %struct.grub_ntfs_rlst* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %9, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.grub_ntfs_rlst*, %struct.grub_ntfs_rlst** %6, align 8
  %16 = call i64 @grub_ntfs_read_run_list(%struct.grub_ntfs_rlst* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i64 -1, i64* %3, align 8
  br label %43

19:                                               ; preds = %14
  %20 = load %struct.grub_ntfs_rlst*, %struct.grub_ntfs_rlst** %6, align 8
  %21 = getelementptr inbounds %struct.grub_ntfs_rlst, %struct.grub_ntfs_rlst* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %3, align 8
  br label %43

23:                                               ; preds = %2
  %24 = load %struct.grub_ntfs_rlst*, %struct.grub_ntfs_rlst** %6, align 8
  %25 = getelementptr inbounds %struct.grub_ntfs_rlst, %struct.grub_ntfs_rlst* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RF_BLNK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %41

31:                                               ; preds = %23
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.grub_ntfs_rlst*, %struct.grub_ntfs_rlst** %6, align 8
  %34 = getelementptr inbounds %struct.grub_ntfs_rlst, %struct.grub_ntfs_rlst* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = load %struct.grub_ntfs_rlst*, %struct.grub_ntfs_rlst** %6, align 8
  %38 = getelementptr inbounds %struct.grub_ntfs_rlst, %struct.grub_ntfs_rlst* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  br label %41

41:                                               ; preds = %31, %30
  %42 = phi i64 [ 0, %30 ], [ %40, %31 ]
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %41, %19, %18
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

declare dso_local i64 @grub_ntfs_read_run_list(%struct.grub_ntfs_rlst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
