; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_reiserfs.c_grub_reiserfs_read_symlink.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_reiserfs.c_grub_reiserfs_read_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__*, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.grub_fshelp_node = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.grub_reiserfs_key = type { i32 }

@GRUB_REISERFS_DIRECT = common dso_local global i32 0, align 4
@GRUB_ERR_NONE = common dso_local global i64 0, align 8
@GRUB_DISK_SECTOR_BITS = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_10__*)* @grub_reiserfs_read_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @grub_reiserfs_read_symlink(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.grub_fshelp_node, align 8
  %10 = alloca %struct.grub_reiserfs_key, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i8* null, i8** %4, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = call i32 @grub_memcpy(%struct.grub_reiserfs_key* %10, i32* %13, i32 4)
  %15 = call i32 @grub_reiserfs_set_key_offset(%struct.grub_reiserfs_key* %10, i32 1)
  %16 = load i32, i32* @GRUB_REISERFS_DIRECT, align 4
  %17 = call i32 @grub_reiserfs_get_key_version(%struct.grub_reiserfs_key* %10)
  %18 = call i32 @grub_reiserfs_set_key_type(%struct.grub_reiserfs_key* %10, i32 %16, i32 %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = call i64 @grub_reiserfs_get_item(%struct.TYPE_11__* %21, %struct.grub_reiserfs_key* %10, %struct.grub_fshelp_node* %9)
  %23 = load i64, i64* @GRUB_ERR_NONE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %82

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %9, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %82

31:                                               ; preds = %26
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @grub_le_to_cpu16(i32 %37)
  store i8* %38, i8** %5, align 8
  %39 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %9, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @grub_le_to_cpu16(i32 %41)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %9, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i8*, i8** %5, align 8
  %48 = ptrtoint i8* %47 to i32
  %49 = load i32, i32* @GRUB_DISK_SECTOR_BITS, align 4
  %50 = ashr i32 %48, %49
  %51 = mul nsw i32 %46, %50
  store i32 %51, i32* %6, align 4
  %52 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %9, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @grub_le_to_cpu16(i32 %54)
  store i8* %55, i8** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  %58 = call i8* @grub_malloc(i32 %57)
  store i8* %58, i8** %4, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %31
  br label %82

62:                                               ; preds = %31
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @grub_disk_read(i32 %67, i32 %68, i8* %69, i32 %70, i8* %71)
  %73 = load i64, i64* @grub_errno, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  br label %82

76:                                               ; preds = %62
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8 0, i8* %80, align 1
  %81 = load i8*, i8** %4, align 8
  store i8* %81, i8** %2, align 8
  br label %85

82:                                               ; preds = %75, %61, %30, %25
  %83 = load i8*, i8** %4, align 8
  %84 = call i32 @grub_free(i8* %83)
  store i8* null, i8** %2, align 8
  br label %85

85:                                               ; preds = %82, %76
  %86 = load i8*, i8** %2, align 8
  ret i8* %86
}

declare dso_local i32 @grub_memcpy(%struct.grub_reiserfs_key*, i32*, i32) #1

declare dso_local i32 @grub_reiserfs_set_key_offset(%struct.grub_reiserfs_key*, i32) #1

declare dso_local i32 @grub_reiserfs_set_key_type(%struct.grub_reiserfs_key*, i32, i32) #1

declare dso_local i32 @grub_reiserfs_get_key_version(%struct.grub_reiserfs_key*) #1

declare dso_local i64 @grub_reiserfs_get_item(%struct.TYPE_11__*, %struct.grub_reiserfs_key*, %struct.grub_fshelp_node*) #1

declare dso_local i8* @grub_le_to_cpu16(i32) #1

declare dso_local i8* @grub_malloc(i32) #1

declare dso_local i32 @grub_disk_read(i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @grub_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
