; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfs.c_grub_hfs_dir_hook.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_hfs.c_grub_hfs_dir_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_hfs_record = type { i8*, %struct.grub_hfs_catalog_key* }
%struct.grub_hfs_catalog_key = type { i32, i64 }
%struct.grub_hfs_dir_closure = type { i32 (i8*, %struct.grub_dirhook_info*, i32)*, i32 }
%struct.grub_dirhook_info = type opaque
%struct.grub_dirhook_info.0 = type { i32 }

@GRUB_HFS_FILETYPE_DIR = common dso_local global i8 0, align 1
@GRUB_HFS_FILETYPE_FILE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_hfs_record*, i8*)* @grub_hfs_dir_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_hfs_dir_hook(%struct.grub_hfs_record* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.grub_hfs_record*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.grub_hfs_dir_closure*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca %struct.grub_hfs_catalog_key*, align 8
  %10 = alloca %struct.grub_dirhook_info.0, align 4
  store %struct.grub_hfs_record* %0, %struct.grub_hfs_record** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.grub_hfs_dir_closure*
  store %struct.grub_hfs_dir_closure* %12, %struct.grub_hfs_dir_closure** %6, align 8
  %13 = bitcast [32 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 32, i1 false)
  %14 = load %struct.grub_hfs_record*, %struct.grub_hfs_record** %4, align 8
  %15 = getelementptr inbounds %struct.grub_hfs_record, %struct.grub_hfs_record* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %8, align 8
  %17 = load %struct.grub_hfs_record*, %struct.grub_hfs_record** %4, align 8
  %18 = getelementptr inbounds %struct.grub_hfs_record, %struct.grub_hfs_record* %17, i32 0, i32 1
  %19 = load %struct.grub_hfs_catalog_key*, %struct.grub_hfs_catalog_key** %18, align 8
  store %struct.grub_hfs_catalog_key* %19, %struct.grub_hfs_catalog_key** %9, align 8
  %20 = call i32 @grub_memset(%struct.grub_dirhook_info.0* %10, i32 0, i32 4)
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %22 = load %struct.grub_hfs_catalog_key*, %struct.grub_hfs_catalog_key** %9, align 8
  %23 = getelementptr inbounds %struct.grub_hfs_catalog_key, %struct.grub_hfs_catalog_key* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.grub_hfs_catalog_key*, %struct.grub_hfs_catalog_key** %9, align 8
  %27 = getelementptr inbounds %struct.grub_hfs_catalog_key, %struct.grub_hfs_catalog_key* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @grub_strncpy(i8* %21, i8* %25, i32 %28)
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* @GRUB_HFS_FILETYPE_DIR, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %2
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = load i8, i8* @GRUB_HFS_FILETYPE_FILE, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %36, %2
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = load i8, i8* @GRUB_HFS_FILETYPE_DIR, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %46, %48
  %50 = zext i1 %49 to i32
  %51 = getelementptr inbounds %struct.grub_dirhook_info.0, %struct.grub_dirhook_info.0* %10, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load %struct.grub_hfs_dir_closure*, %struct.grub_hfs_dir_closure** %6, align 8
  %53 = getelementptr inbounds %struct.grub_hfs_dir_closure, %struct.grub_hfs_dir_closure* %52, i32 0, i32 0
  %54 = load i32 (i8*, %struct.grub_dirhook_info*, i32)*, i32 (i8*, %struct.grub_dirhook_info*, i32)** %53, align 8
  %55 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %56 = bitcast %struct.grub_dirhook_info.0* %10 to %struct.grub_dirhook_info*
  %57 = load %struct.grub_hfs_dir_closure*, %struct.grub_hfs_dir_closure** %6, align 8
  %58 = getelementptr inbounds %struct.grub_hfs_dir_closure, %struct.grub_hfs_dir_closure* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 %54(i8* %55, %struct.grub_dirhook_info* %56, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %62

61:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %43
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @grub_memset(%struct.grub_dirhook_info.0*, i32, i32) #2

declare dso_local i32 @grub_strncpy(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
