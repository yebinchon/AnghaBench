; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_init_debug.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_init_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_stats_debugfs_item = type { i32, i64, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"kvm\00", align 1
@kvm_debugfs_dir = common dso_local global i32 0, align 4
@kvm_debugfs_num_entries = common dso_local global i64 0, align 8
@debugfs_entries = common dso_local global %struct.kvm_stats_debugfs_item* null, align 8
@stat_fops = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kvm_init_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_init_debug() #0 {
  %1 = alloca %struct.kvm_stats_debugfs_item*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %3, i32* @kvm_debugfs_dir, align 4
  store i64 0, i64* @kvm_debugfs_num_entries, align 8
  %4 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** @debugfs_entries, align 8
  store %struct.kvm_stats_debugfs_item* %4, %struct.kvm_stats_debugfs_item** %1, align 8
  br label %5

5:                                                ; preds = %38, %0
  %6 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** %1, align 8
  %7 = getelementptr inbounds %struct.kvm_stats_debugfs_item, %struct.kvm_stats_debugfs_item* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %5
  %11 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** %1, align 8
  %12 = getelementptr inbounds %struct.kvm_stats_debugfs_item, %struct.kvm_stats_debugfs_item* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** %1, align 8
  %17 = getelementptr inbounds %struct.kvm_stats_debugfs_item, %struct.kvm_stats_debugfs_item* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  br label %20

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ %18, %15 ], [ 420, %19 ]
  store i32 %21, i32* %2, align 4
  %22 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** %1, align 8
  %23 = getelementptr inbounds %struct.kvm_stats_debugfs_item, %struct.kvm_stats_debugfs_item* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @kvm_debugfs_dir, align 4
  %27 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** %1, align 8
  %28 = getelementptr inbounds %struct.kvm_stats_debugfs_item, %struct.kvm_stats_debugfs_item* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load i32*, i32** @stat_fops, align 8
  %32 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** %1, align 8
  %33 = getelementptr inbounds %struct.kvm_stats_debugfs_item, %struct.kvm_stats_debugfs_item* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @debugfs_create_file(i64 %24, i32 %25, i32 %26, i8* %30, i32 %36)
  br label %38

38:                                               ; preds = %20
  %39 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** %1, align 8
  %40 = getelementptr inbounds %struct.kvm_stats_debugfs_item, %struct.kvm_stats_debugfs_item* %39, i32 1
  store %struct.kvm_stats_debugfs_item* %40, %struct.kvm_stats_debugfs_item** %1, align 8
  %41 = load i64, i64* @kvm_debugfs_num_entries, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* @kvm_debugfs_num_entries, align 8
  br label %5

43:                                               ; preds = %5
  ret void
}

declare dso_local i32 @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @debugfs_create_file(i64, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
