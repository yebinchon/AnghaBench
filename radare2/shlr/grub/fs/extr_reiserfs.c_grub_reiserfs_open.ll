; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_reiserfs.c_grub_reiserfs_open.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_reiserfs.c_grub_reiserfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_file = type { i32, %struct.grub_reiserfs_data*, i64, %struct.TYPE_7__* }
%struct.grub_reiserfs_data = type { i64, i32, %struct.TYPE_12__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.grub_fshelp_node = type { i64, i32, %struct.TYPE_12__, %struct.TYPE_8__ }
%struct.grub_reiserfs_key = type { i8*, i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.grub_reiserfs_stat_item_v1 = type { i32 }
%struct.grub_reiserfs_stat_item_v2 = type { i32 }

@my_mod = common dso_local global i32 0, align 4
@GRUB_REISERFS_DIRECTORY = common dso_local global i32 0, align 4
@GRUB_ERR_NONE = common dso_local global i64 0, align 8
@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to find root item\00", align 1
@grub_reiserfs_iterate_dir = common dso_local global i32 0, align 4
@grub_reiserfs_read_symlink = common dso_local global i32 0, align 4
@GRUB_FSHELP_REG = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i64 0, align 8
@GRUB_REISERFS_STAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unable to find searched item\00", align 1
@GRUB_DISK_SECTOR_BITS = common dso_local global i64 0, align 8
@GRUB_DISK_SECTOR_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"reiserfs\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"file size : %d (%08x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.grub_file*, i8*)* @grub_reiserfs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_reiserfs_open(%struct.grub_file* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.grub_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.grub_reiserfs_data*, align 8
  %7 = alloca %struct.grub_fshelp_node, align 8
  %8 = alloca %struct.grub_fshelp_node*, align 8
  %9 = alloca %struct.grub_fshelp_node, align 8
  %10 = alloca %struct.grub_reiserfs_key, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.grub_reiserfs_stat_item_v1, align 4
  %16 = alloca %struct.grub_reiserfs_stat_item_v2, align 4
  store %struct.grub_file* %0, %struct.grub_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.grub_reiserfs_data* null, %struct.grub_reiserfs_data** %6, align 8
  store %struct.grub_fshelp_node* null, %struct.grub_fshelp_node** %8, align 8
  %17 = load i32, i32* @my_mod, align 4
  %18 = call i32 @grub_dl_ref(i32 %17)
  %19 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %20 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %19, i32 0, i32 3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.grub_reiserfs_data* @grub_reiserfs_mount(i32 %23)
  store %struct.grub_reiserfs_data* %24, %struct.grub_reiserfs_data** %6, align 8
  %25 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %6, align 8
  %26 = icmp ne %struct.grub_reiserfs_data* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %188

28:                                               ; preds = %2
  %29 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %6, align 8
  %30 = getelementptr inbounds %struct.grub_reiserfs_data, %struct.grub_reiserfs_data* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @grub_le_to_cpu16(i32 %32)
  store i64 %33, i64* %13, align 8
  %34 = call i8* @grub_cpu_to_le32(i32 1)
  %35 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %10, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = call i8* @grub_cpu_to_le32(i32 2)
  %37 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %10, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %10, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @GRUB_REISERFS_DIRECTORY, align 4
  %42 = call i32 @grub_reiserfs_set_key_type(%struct.grub_reiserfs_key* %10, i32 %41, i32 2)
  %43 = call i32 @grub_reiserfs_set_key_offset(%struct.grub_reiserfs_key* %10, i32 1)
  %44 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %6, align 8
  %45 = bitcast %struct.grub_fshelp_node* %7 to %struct.grub_reiserfs_data*
  %46 = call i64 @grub_reiserfs_get_item(%struct.grub_reiserfs_data* %44, %struct.grub_reiserfs_key* %10, %struct.grub_reiserfs_data* %45)
  %47 = load i64, i64* @GRUB_ERR_NONE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %28
  br label %188

50:                                               ; preds = %28
  %51 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %7, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %56 = call i32 @grub_error(i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %188

57:                                               ; preds = %50
  %58 = load i8*, i8** %5, align 8
  %59 = bitcast %struct.grub_fshelp_node* %7 to %struct.grub_reiserfs_data*
  %60 = bitcast %struct.grub_fshelp_node** %8 to %struct.grub_reiserfs_data**
  %61 = load i32, i32* @grub_reiserfs_iterate_dir, align 4
  %62 = load i32, i32* @grub_reiserfs_read_symlink, align 4
  %63 = load i32, i32* @GRUB_FSHELP_REG, align 4
  %64 = call i32 @grub_fshelp_find_file(i8* %58, %struct.grub_reiserfs_data* %59, %struct.grub_reiserfs_data** %60, i32 %61, i32 0, i32 %62, i32 %63)
  %65 = load i64, i64* @grub_errno, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %188

68:                                               ; preds = %57
  %69 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %8, align 8
  %70 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %10, i32 0, i32 1
  store i8* %73, i8** %74, align 8
  %75 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %8, align 8
  %76 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %10, i32 0, i32 0
  store i8* %79, i8** %80, align 8
  %81 = load i32, i32* @GRUB_REISERFS_STAT, align 4
  %82 = call i32 @grub_reiserfs_set_key_type(%struct.grub_reiserfs_key* %10, i32 %81, i32 2)
  %83 = call i32 @grub_reiserfs_set_key_offset(%struct.grub_reiserfs_key* %10, i32 0)
  %84 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %6, align 8
  %85 = bitcast %struct.grub_fshelp_node* %9 to %struct.grub_reiserfs_data*
  %86 = call i64 @grub_reiserfs_get_item(%struct.grub_reiserfs_data* %84, %struct.grub_reiserfs_key* %10, %struct.grub_reiserfs_data* %85)
  %87 = load i64, i64* @GRUB_ERR_NONE, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %68
  br label %188

90:                                               ; preds = %68
  %91 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %9, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %96 = call i32 @grub_error(i32 %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %188

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %9, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @grub_le_to_cpu16(i32 %100)
  store i64 %101, i64* %12, align 8
  %102 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %9, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @grub_le_to_cpu16(i32 %104)
  store i64 %105, i64* %14, align 8
  %106 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %9, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %11, align 8
  %108 = load i64, i64* %12, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %140

110:                                              ; preds = %97
  %111 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %6, align 8
  %112 = getelementptr inbounds %struct.grub_reiserfs_data, %struct.grub_reiserfs_data* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i64, i64* %11, align 8
  %115 = load i64, i64* %13, align 8
  %116 = load i64, i64* @GRUB_DISK_SECTOR_BITS, align 8
  %117 = ashr i64 %115, %116
  %118 = mul nsw i64 %114, %117
  %119 = load i64, i64* %14, align 8
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* %13, align 8
  %122 = mul nsw i64 %120, %121
  %123 = load i32, i32* @GRUB_DISK_SECTOR_SIZE, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = and i64 %122, %125
  %127 = add nsw i64 %119, %126
  %128 = bitcast %struct.grub_reiserfs_stat_item_v1* %15 to %struct.grub_reiserfs_stat_item_v2*
  %129 = call i32 @grub_disk_read(i32 %113, i64 %118, i64 %127, i32 4, %struct.grub_reiserfs_stat_item_v2* %128)
  %130 = load i64, i64* @grub_errno, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %110
  br label %188

133:                                              ; preds = %110
  %134 = getelementptr inbounds %struct.grub_reiserfs_stat_item_v1, %struct.grub_reiserfs_stat_item_v1* %15, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @grub_le_to_cpu64(i32 %135)
  %137 = trunc i64 %136 to i32
  %138 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %139 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  br label %169

140:                                              ; preds = %97
  %141 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %6, align 8
  %142 = getelementptr inbounds %struct.grub_reiserfs_data, %struct.grub_reiserfs_data* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load i64, i64* %11, align 8
  %145 = load i64, i64* %13, align 8
  %146 = load i64, i64* @GRUB_DISK_SECTOR_BITS, align 8
  %147 = ashr i64 %145, %146
  %148 = mul nsw i64 %144, %147
  %149 = load i64, i64* %14, align 8
  %150 = load i64, i64* %11, align 8
  %151 = load i64, i64* %13, align 8
  %152 = mul nsw i64 %150, %151
  %153 = load i32, i32* @GRUB_DISK_SECTOR_SIZE, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = and i64 %152, %155
  %157 = add nsw i64 %149, %156
  %158 = call i32 @grub_disk_read(i32 %143, i64 %148, i64 %157, i32 4, %struct.grub_reiserfs_stat_item_v2* %16)
  %159 = load i64, i64* @grub_errno, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %140
  br label %188

162:                                              ; preds = %140
  %163 = getelementptr inbounds %struct.grub_reiserfs_stat_item_v2, %struct.grub_reiserfs_stat_item_v2* %16, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @grub_le_to_cpu64(i32 %164)
  %166 = trunc i64 %165 to i32
  %167 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %168 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  br label %169

169:                                              ; preds = %162, %133
  %170 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %171 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %174 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = ashr i32 %175, 32
  %177 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %178 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @grub_dprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %172, i32 %176, i32 %179)
  %181 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %182 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %181, i32 0, i32 2
  store i64 0, i64* %182, align 8
  %183 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %8, align 8
  %184 = bitcast %struct.grub_fshelp_node* %183 to %struct.grub_reiserfs_data*
  %185 = load %struct.grub_file*, %struct.grub_file** %4, align 8
  %186 = getelementptr inbounds %struct.grub_file, %struct.grub_file* %185, i32 0, i32 1
  store %struct.grub_reiserfs_data* %184, %struct.grub_reiserfs_data** %186, align 8
  %187 = load i64, i64* @GRUB_ERR_NONE, align 8
  store i64 %187, i64* %3, align 8
  br label %202

188:                                              ; preds = %161, %132, %94, %89, %67, %54, %49, %27
  %189 = load i64, i64* @grub_errno, align 8
  %190 = load i64, i64* @GRUB_ERR_NONE, align 8
  %191 = icmp ne i64 %189, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %8, align 8
  %195 = bitcast %struct.grub_fshelp_node* %194 to %struct.grub_reiserfs_data*
  %196 = call i32 @grub_free(%struct.grub_reiserfs_data* %195)
  %197 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %6, align 8
  %198 = call i32 @grub_free(%struct.grub_reiserfs_data* %197)
  %199 = load i32, i32* @my_mod, align 4
  %200 = call i32 @grub_dl_unref(i32 %199)
  %201 = load i64, i64* @grub_errno, align 8
  store i64 %201, i64* %3, align 8
  br label %202

202:                                              ; preds = %188, %169
  %203 = load i64, i64* %3, align 8
  ret i64 %203
}

declare dso_local i32 @grub_dl_ref(i32) #1

declare dso_local %struct.grub_reiserfs_data* @grub_reiserfs_mount(i32) #1

declare dso_local i64 @grub_le_to_cpu16(i32) #1

declare dso_local i8* @grub_cpu_to_le32(i32) #1

declare dso_local i32 @grub_reiserfs_set_key_type(%struct.grub_reiserfs_key*, i32, i32) #1

declare dso_local i32 @grub_reiserfs_set_key_offset(%struct.grub_reiserfs_key*, i32) #1

declare dso_local i64 @grub_reiserfs_get_item(%struct.grub_reiserfs_data*, %struct.grub_reiserfs_key*, %struct.grub_reiserfs_data*) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i32 @grub_fshelp_find_file(i8*, %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data**, i32, i32, i32, i32) #1

declare dso_local i32 @grub_disk_read(i32, i64, i64, i32, %struct.grub_reiserfs_stat_item_v2*) #1

declare dso_local i64 @grub_le_to_cpu64(i32) #1

declare dso_local i32 @grub_dprintf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @grub_free(%struct.grub_reiserfs_data*) #1

declare dso_local i32 @grub_dl_unref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
