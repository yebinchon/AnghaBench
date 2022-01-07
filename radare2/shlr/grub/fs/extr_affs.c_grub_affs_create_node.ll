; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_affs.c_grub_affs_create_node.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_affs.c_grub_affs_create_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_affs_iterate_dir_closure = type { i32, i32, i64 (i8*, i32, %struct.grub_fshelp_node*, i32)*, %struct.TYPE_2__*, i32, %struct.grub_fshelp_node* }
%struct.TYPE_2__ = type { i32 }
%struct.grub_fshelp_node = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, %struct.grub_affs_iterate_dir_closure*)* @grub_affs_create_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_affs_create_node(i8* %0, i32 %1, i32 %2, i32 %3, %struct.grub_affs_iterate_dir_closure* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.grub_affs_iterate_dir_closure*, align 8
  %12 = alloca %struct.grub_fshelp_node*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.grub_affs_iterate_dir_closure* %4, %struct.grub_affs_iterate_dir_closure** %11, align 8
  %13 = call %struct.grub_fshelp_node* @grub_malloc(i32 16)
  store %struct.grub_fshelp_node* %13, %struct.grub_fshelp_node** %12, align 8
  %14 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %12, align 8
  %15 = load %struct.grub_affs_iterate_dir_closure*, %struct.grub_affs_iterate_dir_closure** %11, align 8
  %16 = getelementptr inbounds %struct.grub_affs_iterate_dir_closure, %struct.grub_affs_iterate_dir_closure* %15, i32 0, i32 5
  store %struct.grub_fshelp_node* %14, %struct.grub_fshelp_node** %16, align 8
  %17 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %12, align 8
  %18 = icmp ne %struct.grub_fshelp_node* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %5
  %20 = load %struct.grub_affs_iterate_dir_closure*, %struct.grub_affs_iterate_dir_closure** %11, align 8
  %21 = getelementptr inbounds %struct.grub_affs_iterate_dir_closure, %struct.grub_affs_iterate_dir_closure* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @grub_free(i32 %22)
  store i32 1, i32* %6, align 4
  br label %61

24:                                               ; preds = %5
  %25 = load %struct.grub_affs_iterate_dir_closure*, %struct.grub_affs_iterate_dir_closure** %11, align 8
  %26 = getelementptr inbounds %struct.grub_affs_iterate_dir_closure, %struct.grub_affs_iterate_dir_closure* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %12, align 8
  %29 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %12, align 8
  %32 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %12, align 8
  %35 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.grub_affs_iterate_dir_closure*, %struct.grub_affs_iterate_dir_closure** %11, align 8
  %37 = getelementptr inbounds %struct.grub_affs_iterate_dir_closure, %struct.grub_affs_iterate_dir_closure* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @grub_be_to_cpu32(i32 %40)
  %42 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %12, align 8
  %43 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.grub_affs_iterate_dir_closure*, %struct.grub_affs_iterate_dir_closure** %11, align 8
  %45 = getelementptr inbounds %struct.grub_affs_iterate_dir_closure, %struct.grub_affs_iterate_dir_closure* %44, i32 0, i32 2
  %46 = load i64 (i8*, i32, %struct.grub_fshelp_node*, i32)*, i64 (i8*, i32, %struct.grub_fshelp_node*, i32)** %45, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %12, align 8
  %50 = load %struct.grub_affs_iterate_dir_closure*, %struct.grub_affs_iterate_dir_closure** %11, align 8
  %51 = getelementptr inbounds %struct.grub_affs_iterate_dir_closure, %struct.grub_affs_iterate_dir_closure* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 %46(i8* %47, i32 %48, %struct.grub_fshelp_node* %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %24
  %56 = load %struct.grub_affs_iterate_dir_closure*, %struct.grub_affs_iterate_dir_closure** %11, align 8
  %57 = getelementptr inbounds %struct.grub_affs_iterate_dir_closure, %struct.grub_affs_iterate_dir_closure* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @grub_free(i32 %58)
  store i32 1, i32* %6, align 4
  br label %61

60:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %55, %19
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local %struct.grub_fshelp_node* @grub_malloc(i32) #1

declare dso_local i32 @grub_free(i32) #1

declare dso_local i32 @grub_be_to_cpu32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
