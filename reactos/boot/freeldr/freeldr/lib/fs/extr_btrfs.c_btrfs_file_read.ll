; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_btrfs_file_read.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_btrfs.c_btrfs_file_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root_item = type { i32 }
%struct.btrfs_path = type { i32 }
%struct.btrfs_disk_key = type { i64, i32, i64 }
%struct.btrfs_file_extent_item = type { i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }

@READ_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"btrfs_file_read inr=%llu offset=%llu size=%llu\0A\00", align 1
@BTRFS_EXTENT_DATA_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Current extent: (%llu %u %llu) \0A\00", align 1
@BTRFS_FILE_EXTENT_INLINE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Error while reading extent\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"file_read size=%llu rd=%llu seek_pointer=%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.btrfs_root_item*, i64, i64, i64, i8*)* @btrfs_file_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btrfs_file_read(%struct.btrfs_root_item* %0, i64 %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.btrfs_root_item*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.btrfs_path, align 4
  %12 = alloca %struct.btrfs_disk_key, align 8
  %13 = alloca %struct.btrfs_file_extent_item*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.btrfs_root_item* %0, %struct.btrfs_root_item** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %14, align 4
  %19 = load i64, i64* @READ_ERROR, align 8
  store i64 %19, i64* %16, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %21, i64 %22)
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %12, i32 0, i32 2
  store i64 %24, i64* %25, align 8
  %26 = load i32, i32* @BTRFS_EXTENT_DATA_KEY, align 4
  %27 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %12, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.btrfs_disk_key, %struct.btrfs_disk_key* %12, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = call i32 @init_path(%struct.btrfs_path* %11)
  %31 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %6, align 8
  %32 = call i32 @BtrFsSearchTree(%struct.btrfs_root_item* %31, %struct.btrfs_disk_key* %12, %struct.btrfs_path* %11)
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %18, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %5
  %36 = call %struct.TYPE_4__* @path_current_disk_key(%struct.btrfs_path* %11)
  %37 = call i64 @btrfs_comp_keys(%struct.btrfs_disk_key* %12, %struct.TYPE_4__* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = call i64 @prev_slot(%struct.btrfs_disk_key* %12, %struct.btrfs_path* %11)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %133

43:                                               ; preds = %39
  br label %50

44:                                               ; preds = %35, %5
  %45 = call %struct.TYPE_4__* @path_current_disk_key(%struct.btrfs_path* %11)
  %46 = call i64 @btrfs_comp_keys_type(%struct.btrfs_disk_key* %12, %struct.TYPE_4__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %133

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %43
  %51 = load i64, i64* %8, align 8
  store i64 %51, i64* %16, align 8
  br label %52

52:                                               ; preds = %120, %50
  %53 = call %struct.TYPE_4__* @path_current_disk_key(%struct.btrfs_path* %11)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call %struct.TYPE_4__* @path_current_disk_key(%struct.btrfs_path* %11)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call %struct.TYPE_4__* @path_current_disk_key(%struct.btrfs_path* %11)
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %55, i64 %58, i64 %61)
  %63 = call i64 @path_current_data(%struct.btrfs_path* %11)
  %64 = inttoptr i64 %63 to %struct.btrfs_file_extent_item*
  store %struct.btrfs_file_extent_item* %64, %struct.btrfs_file_extent_item** %13, align 8
  %65 = load i64, i64* %16, align 8
  store i64 %65, i64* %17, align 8
  %66 = load i64, i64* %16, align 8
  %67 = call %struct.TYPE_4__* @path_current_disk_key(%struct.btrfs_path* %11)
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp sge i64 %66, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %52
  %72 = call %struct.TYPE_4__* @path_current_disk_key(%struct.btrfs_path* %11)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %17, align 8
  %76 = sub nsw i64 %75, %74
  store i64 %76, i64* %17, align 8
  br label %77

77:                                               ; preds = %71, %52
  %78 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %13, align 8
  %79 = getelementptr inbounds %struct.btrfs_file_extent_item, %struct.btrfs_file_extent_item* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @BTRFS_FILE_EXTENT_INLINE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %13, align 8
  %85 = load i64, i64* %17, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = call i64 @btrfs_read_extent_inline(%struct.btrfs_path* %11, %struct.btrfs_file_extent_item* %84, i64 %85, i64 %86, i8* %87)
  store i64 %88, i64* %15, align 8
  br label %95

89:                                               ; preds = %77
  %90 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %13, align 8
  %91 = load i64, i64* %17, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = call i64 @btrfs_read_extent_reg(%struct.btrfs_path* %11, %struct.btrfs_file_extent_item* %90, i64 %91, i64 %92, i8* %93)
  store i64 %94, i64* %15, align 8
  br label %95

95:                                               ; preds = %89, %83
  %96 = load i64, i64* %15, align 8
  %97 = load i64, i64* @READ_ERROR, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i64, i64* @READ_ERROR, align 8
  store i64 %101, i64* %16, align 8
  br label %133

102:                                              ; preds = %95
  %103 = load i64, i64* %15, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 %103
  store i8* %105, i8** %10, align 8
  %106 = load i64, i64* %15, align 8
  %107 = load i64, i64* %16, align 8
  %108 = add nsw i64 %107, %106
  store i64 %108, i64* %16, align 8
  %109 = load i64, i64* %15, align 8
  %110 = load i64, i64* %9, align 8
  %111 = sub nsw i64 %110, %109
  store i64 %111, i64* %9, align 8
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* %15, align 8
  %114 = load i64, i64* %16, align 8
  %115 = call i32 @TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i64 %112, i64 %113, i64 %114)
  %116 = load i64, i64* %9, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %102
  br label %124

119:                                              ; preds = %102
  br label %120

120:                                              ; preds = %119
  %121 = call i32 @next_slot(%struct.btrfs_disk_key* %12, %struct.btrfs_path* %11)
  store i32 %121, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  br i1 %123, label %52, label %124

124:                                              ; preds = %120, %118
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load i64, i64* @READ_ERROR, align 8
  store i64 %128, i64* %16, align 8
  br label %133

129:                                              ; preds = %124
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* %16, align 8
  %132 = sub nsw i64 %131, %130
  store i64 %132, i64* %16, align 8
  br label %133

133:                                              ; preds = %129, %127, %99, %48, %42
  %134 = call i32 @free_path(%struct.btrfs_path* %11)
  %135 = load i64, i64* %16, align 8
  ret i64 %135
}

declare dso_local i32 @TRACE(i8*, i64, i64, i64) #1

declare dso_local i32 @init_path(%struct.btrfs_path*) #1

declare dso_local i32 @BtrFsSearchTree(%struct.btrfs_root_item*, %struct.btrfs_disk_key*, %struct.btrfs_path*) #1

declare dso_local i64 @btrfs_comp_keys(%struct.btrfs_disk_key*, %struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @path_current_disk_key(%struct.btrfs_path*) #1

declare dso_local i64 @prev_slot(%struct.btrfs_disk_key*, %struct.btrfs_path*) #1

declare dso_local i64 @btrfs_comp_keys_type(%struct.btrfs_disk_key*, %struct.TYPE_4__*) #1

declare dso_local i64 @path_current_data(%struct.btrfs_path*) #1

declare dso_local i64 @btrfs_read_extent_inline(%struct.btrfs_path*, %struct.btrfs_file_extent_item*, i64, i64, i8*) #1

declare dso_local i64 @btrfs_read_extent_reg(%struct.btrfs_path*, %struct.btrfs_file_extent_item*, i64, i64, i8*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @next_slot(%struct.btrfs_disk_key*, %struct.btrfs_path*) #1

declare dso_local i32 @free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
