; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfs.c_grub_hfs_iterate_dir.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfs.c_grub_hfs_iterate_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_hfs_data = type { i32 }
%struct.grub_hfs_record = type opaque
%struct.grub_hfs_catalog_key = type { i8*, i32, i32, i32 }
%struct.grub_hfs_iterate_dir_closure = type { i32, i32 (%struct.grub_hfs_record.0*, i8*)*, i32, i32, i64, i8*, %struct.grub_hfs_catalog_key* }
%struct.grub_hfs_record.0 = type opaque

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@grub_hfs_iterate_dir_node_found = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i32 0, align 4
@grub_hfs_iterate_dir_it_dir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_hfs_data*, i32, i32, i32 (%struct.grub_hfs_record*, i8*)*, i8*)* @grub_hfs_iterate_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_hfs_iterate_dir(%struct.grub_hfs_data* %0, i32 %1, i32 %2, i32 (%struct.grub_hfs_record*, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.grub_hfs_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32 (%struct.grub_hfs_record*, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.grub_hfs_catalog_key, align 8
  %13 = alloca %struct.grub_hfs_iterate_dir_closure, align 8
  store %struct.grub_hfs_data* %0, %struct.grub_hfs_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 (%struct.grub_hfs_record*, i8*)* %3, i32 (%struct.grub_hfs_record*, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = getelementptr inbounds %struct.grub_hfs_catalog_key, %struct.grub_hfs_catalog_key* %12, i32 0, i32 0
  store i8* null, i8** %14, align 8
  %15 = getelementptr inbounds %struct.grub_hfs_catalog_key, %struct.grub_hfs_catalog_key* %12, i32 0, i32 1
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @grub_cpu_to_be32(i32 %16)
  store i32 %17, i32* %15, align 8
  %18 = getelementptr inbounds %struct.grub_hfs_catalog_key, %struct.grub_hfs_catalog_key* %12, i32 0, i32 2
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.grub_hfs_catalog_key, %struct.grub_hfs_catalog_key* %12, i32 0, i32 3
  store i32 ptrtoint ([1 x i8]* @.str to i32), i32* %19, align 8
  %20 = getelementptr inbounds %struct.grub_hfs_iterate_dir_closure, %struct.grub_hfs_iterate_dir_closure* %13, i32 0, i32 6
  store %struct.grub_hfs_catalog_key* %12, %struct.grub_hfs_catalog_key** %20, align 8
  %21 = load i32, i32* %9, align 4
  %22 = getelementptr inbounds %struct.grub_hfs_iterate_dir_closure, %struct.grub_hfs_iterate_dir_closure* %13, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load i32 (%struct.grub_hfs_record*, i8*)*, i32 (%struct.grub_hfs_record*, i8*)** %10, align 8
  %24 = bitcast i32 (%struct.grub_hfs_record*, i8*)* %23 to i32 (%struct.grub_hfs_record.0*, i8*)*
  %25 = getelementptr inbounds %struct.grub_hfs_iterate_dir_closure, %struct.grub_hfs_iterate_dir_closure* %13, i32 0, i32 1
  store i32 (%struct.grub_hfs_record.0*, i8*)* %24, i32 (%struct.grub_hfs_record.0*, i8*)** %25, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = getelementptr inbounds %struct.grub_hfs_iterate_dir_closure, %struct.grub_hfs_iterate_dir_closure* %13, i32 0, i32 5
  store i8* %26, i8** %27, align 8
  %28 = getelementptr inbounds %struct.grub_hfs_iterate_dir_closure, %struct.grub_hfs_iterate_dir_closure* %13, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.grub_hfs_iterate_dir_closure, %struct.grub_hfs_iterate_dir_closure* %13, i32 0, i32 2
  store i32 0, i32* %29, align 8
  br label %30

30:                                               ; preds = %47, %5
  %31 = getelementptr inbounds %struct.grub_hfs_iterate_dir_closure, %struct.grub_hfs_iterate_dir_closure* %13, i32 0, i32 3
  store i32 -1, i32* %31, align 4
  %32 = load %struct.grub_hfs_data*, %struct.grub_hfs_data** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @grub_hfs_iterate_dir_node_found, align 4
  %35 = call i64 @grub_hfs_iterate_records(%struct.grub_hfs_data* %32, i32 0, i32 %33, i32 0, i32 %34, %struct.grub_hfs_iterate_dir_closure* %13)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @grub_errno, align 4
  store i32 %38, i32* %6, align 4
  br label %59

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.grub_hfs_iterate_dir_closure, %struct.grub_hfs_iterate_dir_closure* %13, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %59

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.grub_hfs_iterate_dir_closure, %struct.grub_hfs_iterate_dir_closure* %13, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.grub_hfs_iterate_dir_closure, %struct.grub_hfs_iterate_dir_closure* %13, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = xor i1 %50, true
  br i1 %51, label %30, label %52

52:                                               ; preds = %47
  %53 = load %struct.grub_hfs_data*, %struct.grub_hfs_data** %7, align 8
  %54 = getelementptr inbounds %struct.grub_hfs_iterate_dir_closure, %struct.grub_hfs_iterate_dir_closure* %13, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @grub_hfs_iterate_dir_it_dir, align 4
  %57 = call i64 @grub_hfs_iterate_records(%struct.grub_hfs_data* %53, i32 0, i32 %55, i32 1, i32 %56, %struct.grub_hfs_iterate_dir_closure* %13)
  %58 = load i32, i32* @grub_errno, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %52, %43, %37
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @grub_cpu_to_be32(i32) #1

declare dso_local i64 @grub_hfs_iterate_records(%struct.grub_hfs_data*, i32, i32, i32, i32, %struct.grub_hfs_iterate_dir_closure*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
