; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfs.c_grub_hfs_iterate_dir_node_found.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfs.c_grub_hfs_iterate_dir_node_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_hfs_node = type { i32, i32 }
%struct.grub_hfs_record = type { i64, %struct.grub_hfs_catalog_key* }
%struct.grub_hfs_catalog_key = type { i64, i32 }
%struct.grub_hfs_iterate_dir_closure = type { i32, i64, i32 (%struct.grub_hfs_record*, i32)*, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_hfs_node*, %struct.grub_hfs_record*, i8*)* @grub_hfs_iterate_dir_node_found to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_hfs_iterate_dir_node_found(%struct.grub_hfs_node* %0, %struct.grub_hfs_record* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.grub_hfs_node*, align 8
  %6 = alloca %struct.grub_hfs_record*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.grub_hfs_iterate_dir_closure*, align 8
  %9 = alloca %struct.grub_hfs_catalog_key*, align 8
  store %struct.grub_hfs_node* %0, %struct.grub_hfs_node** %5, align 8
  store %struct.grub_hfs_record* %1, %struct.grub_hfs_record** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.grub_hfs_iterate_dir_closure*
  store %struct.grub_hfs_iterate_dir_closure* %11, %struct.grub_hfs_iterate_dir_closure** %8, align 8
  %12 = load %struct.grub_hfs_record*, %struct.grub_hfs_record** %6, align 8
  %13 = getelementptr inbounds %struct.grub_hfs_record, %struct.grub_hfs_record* %12, i32 0, i32 1
  %14 = load %struct.grub_hfs_catalog_key*, %struct.grub_hfs_catalog_key** %13, align 8
  store %struct.grub_hfs_catalog_key* %14, %struct.grub_hfs_catalog_key** %9, align 8
  %15 = load %struct.grub_hfs_record*, %struct.grub_hfs_record** %6, align 8
  %16 = getelementptr inbounds %struct.grub_hfs_record, %struct.grub_hfs_record* %15, i32 0, i32 1
  %17 = load %struct.grub_hfs_catalog_key*, %struct.grub_hfs_catalog_key** %16, align 8
  %18 = load %struct.grub_hfs_iterate_dir_closure*, %struct.grub_hfs_iterate_dir_closure** %8, align 8
  %19 = getelementptr inbounds %struct.grub_hfs_iterate_dir_closure, %struct.grub_hfs_iterate_dir_closure* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i64 @grub_hfs_cmp_catkeys(%struct.grub_hfs_catalog_key* %17, i8* %21)
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load %struct.grub_hfs_record*, %struct.grub_hfs_record** %6, align 8
  %26 = getelementptr inbounds %struct.grub_hfs_record, %struct.grub_hfs_record* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @grub_be_to_cpu32(i32 %29)
  %31 = load %struct.grub_hfs_iterate_dir_closure*, %struct.grub_hfs_iterate_dir_closure** %8, align 8
  %32 = getelementptr inbounds %struct.grub_hfs_iterate_dir_closure, %struct.grub_hfs_iterate_dir_closure* %31, i32 0, i32 5
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %24, %3
  %34 = load %struct.grub_hfs_node*, %struct.grub_hfs_node** %5, align 8
  %35 = getelementptr inbounds %struct.grub_hfs_node, %struct.grub_hfs_node* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 255
  br i1 %37, label %38, label %78

38:                                               ; preds = %33
  %39 = load %struct.grub_hfs_catalog_key*, %struct.grub_hfs_catalog_key** %9, align 8
  %40 = getelementptr inbounds %struct.grub_hfs_catalog_key, %struct.grub_hfs_catalog_key* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %78

43:                                               ; preds = %38
  %44 = load %struct.grub_hfs_iterate_dir_closure*, %struct.grub_hfs_iterate_dir_closure** %8, align 8
  %45 = getelementptr inbounds %struct.grub_hfs_iterate_dir_closure, %struct.grub_hfs_iterate_dir_closure* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.grub_hfs_node*, %struct.grub_hfs_node** %5, align 8
  %47 = getelementptr inbounds %struct.grub_hfs_node, %struct.grub_hfs_node* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @grub_be_to_cpu32(i32 %48)
  %50 = load %struct.grub_hfs_iterate_dir_closure*, %struct.grub_hfs_iterate_dir_closure** %8, align 8
  %51 = getelementptr inbounds %struct.grub_hfs_iterate_dir_closure, %struct.grub_hfs_iterate_dir_closure* %50, i32 0, i32 4
  store i64 %49, i64* %51, align 8
  %52 = load %struct.grub_hfs_catalog_key*, %struct.grub_hfs_catalog_key** %9, align 8
  %53 = getelementptr inbounds %struct.grub_hfs_catalog_key, %struct.grub_hfs_catalog_key* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @grub_be_to_cpu32(i32 %54)
  %56 = load %struct.grub_hfs_iterate_dir_closure*, %struct.grub_hfs_iterate_dir_closure** %8, align 8
  %57 = getelementptr inbounds %struct.grub_hfs_iterate_dir_closure, %struct.grub_hfs_iterate_dir_closure* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %43
  %61 = load %struct.grub_hfs_iterate_dir_closure*, %struct.grub_hfs_iterate_dir_closure** %8, align 8
  %62 = getelementptr inbounds %struct.grub_hfs_iterate_dir_closure, %struct.grub_hfs_iterate_dir_closure* %61, i32 0, i32 2
  %63 = load i32 (%struct.grub_hfs_record*, i32)*, i32 (%struct.grub_hfs_record*, i32)** %62, align 8
  %64 = icmp ne i32 (%struct.grub_hfs_record*, i32)* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load %struct.grub_hfs_iterate_dir_closure*, %struct.grub_hfs_iterate_dir_closure** %8, align 8
  %67 = getelementptr inbounds %struct.grub_hfs_iterate_dir_closure, %struct.grub_hfs_iterate_dir_closure* %66, i32 0, i32 2
  %68 = load i32 (%struct.grub_hfs_record*, i32)*, i32 (%struct.grub_hfs_record*, i32)** %67, align 8
  %69 = load %struct.grub_hfs_record*, %struct.grub_hfs_record** %6, align 8
  %70 = load %struct.grub_hfs_iterate_dir_closure*, %struct.grub_hfs_iterate_dir_closure** %8, align 8
  %71 = getelementptr inbounds %struct.grub_hfs_iterate_dir_closure, %struct.grub_hfs_iterate_dir_closure* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 %68(%struct.grub_hfs_record* %69, i32 %72)
  br label %75

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %74, %65
  %76 = phi i32 [ %73, %65 ], [ 0, %74 ]
  store i32 %76, i32* %4, align 4
  br label %79

77:                                               ; preds = %43
  br label %78

78:                                               ; preds = %77, %38, %33
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i64 @grub_hfs_cmp_catkeys(%struct.grub_hfs_catalog_key*, i8*) #1

declare dso_local i64 @grub_be_to_cpu32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
