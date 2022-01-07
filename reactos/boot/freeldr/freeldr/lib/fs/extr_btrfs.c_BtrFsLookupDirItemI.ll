; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_BtrFsLookupDirItemI.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_BtrFsLookupDirItemI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root_item = type { i32 }
%struct.btrfs_dir_item = type { i32, i64 }
%struct.btrfs_path = type { i32 }
%struct.btrfs_disk_key = type { i64, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@BTRFS_DIR_INDEX_KEY = common dso_local global i32 0, align 4
@BTRFS_FT_XATTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Compare names %.*s and %.*s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root_item*, i32, i8*, i32, %struct.btrfs_dir_item*)* @BtrFsLookupDirItemI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BtrFsLookupDirItemI(%struct.btrfs_root_item* %0, i32 %1, i8* %2, i32 %3, %struct.btrfs_dir_item* %4) #0 {
  %6 = alloca %struct.btrfs_root_item*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_dir_item*, align 8
  %11 = alloca %struct.btrfs_path, align 4
  %12 = alloca %struct.btrfs_disk_key, align 8
  %13 = alloca %struct.btrfs_dir_item*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.btrfs_root_item* %0, %struct.btrfs_root_item** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.btrfs_dir_item* %4, %struct.btrfs_dir_item** %10, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %12, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @BTRFS_DIR_INDEX_KEY, align 4
  %20 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %12, i32 0, i32 1
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %12, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = call i32 @init_path(%struct.btrfs_path* %11)
  %23 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %6, align 8
  %24 = call i32 @BtrFsSearchTree(%struct.btrfs_root_item* %23, %struct.btrfs_disk_key* %12, %struct.btrfs_path* %11)
  %25 = call i32 @path_current_disk_key(%struct.btrfs_path* %11)
  %26 = call i64 @btrfs_comp_keys_type(%struct.btrfs_disk_key* %12, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %84

29:                                               ; preds = %5
  br label %30

30:                                               ; preds = %79, %29
  %31 = call i64 @path_current_data(%struct.btrfs_path* %11)
  %32 = inttoptr i64 %31 to %struct.btrfs_dir_item*
  store %struct.btrfs_dir_item* %32, %struct.btrfs_dir_item** %13, align 8
  %33 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %13, align 8
  %34 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %13, align 8
  %35 = getelementptr inbounds %struct.btrfs_dir_item, %struct.btrfs_dir_item* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = add i64 16, %37
  %39 = trunc i64 %38 to i32
  %40 = call i64 @verify_dir_item(%struct.btrfs_dir_item* %33, i32 0, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %79

43:                                               ; preds = %30
  %44 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %13, align 8
  %45 = getelementptr inbounds %struct.btrfs_dir_item, %struct.btrfs_dir_item* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BTRFS_FT_XATTR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %79

50:                                               ; preds = %43
  %51 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %13, align 8
  %52 = bitcast %struct.btrfs_dir_item* %51 to i8*
  %53 = getelementptr inbounds i8, i8* %52, i64 16
  store i8* %53, i8** %14, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %13, align 8
  %57 = getelementptr inbounds %struct.btrfs_dir_item, %struct.btrfs_dir_item* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %54, i8* %55, i32 %58, i8* %59)
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %13, align 8
  %63 = getelementptr inbounds %struct.btrfs_dir_item, %struct.btrfs_dir_item* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %50
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @_strnicmp(i8* %67, i8* %68, i32 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %10, align 8
  %74 = load %struct.btrfs_dir_item*, %struct.btrfs_dir_item** %13, align 8
  %75 = bitcast %struct.btrfs_dir_item* %73 to i8*
  %76 = bitcast %struct.btrfs_dir_item* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 8 %76, i64 16, i1 false)
  %77 = load i32, i32* @TRUE, align 4
  store i32 %77, i32* %15, align 4
  br label %84

78:                                               ; preds = %66, %50
  br label %79

79:                                               ; preds = %78, %49, %42
  %80 = call i32 @next_slot(%struct.btrfs_disk_key* %12, %struct.btrfs_path* %11)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  br i1 %82, label %30, label %83

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %83, %72, %28
  %85 = call i32 @free_path(%struct.btrfs_path* %11)
  %86 = load i32, i32* %15, align 4
  ret i32 %86
}

declare dso_local i32 @init_path(%struct.btrfs_path*) #1

declare dso_local i32 @BtrFsSearchTree(%struct.btrfs_root_item*, %struct.btrfs_disk_key*, %struct.btrfs_path*) #1

declare dso_local i64 @btrfs_comp_keys_type(%struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @path_current_disk_key(%struct.btrfs_path*) #1

declare dso_local i64 @path_current_data(%struct.btrfs_path*) #1

declare dso_local i64 @verify_dir_item(%struct.btrfs_dir_item*, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i8*, i32, i8*) #1

declare dso_local i64 @_strnicmp(i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @next_slot(%struct.btrfs_disk_key*, %struct.btrfs_path*) #1

declare dso_local i32 @free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
