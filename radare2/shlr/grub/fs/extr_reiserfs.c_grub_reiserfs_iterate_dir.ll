; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_reiserfs.c_grub_reiserfs_iterate_dir.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_reiserfs.c_grub_reiserfs_iterate_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_reiserfs_block_header = type { i32, i64, i32, i32, %struct.TYPE_10__, i32, i32, %struct.grub_reiserfs_data* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.grub_reiserfs_data = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.grub_reiserfs_directory_header = type { i32, i32, i32, i32 }
%struct.grub_fshelp_node = type { i32, i64, i32, i32, %struct.TYPE_10__, i32, i32, %struct.grub_reiserfs_data* }
%struct.grub_reiserfs_item_header = type { %struct.grub_reiserfs_key, %struct.TYPE_7__, i32 }
%struct.grub_reiserfs_key = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.grub_reiserfs_stat_item_v1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.grub_reiserfs_stat_item_v2 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GRUB_REISERFS_DIRECTORY = common dso_local global i64 0, align 8
@GRUB_ERR_BAD_FILE_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"grub_reiserfs_iterate_dir called on a non-directory item\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"reiserfs\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Iterating directory...\0A\00", align 1
@GRUB_ERR_NONE = common dso_local global i32 0, align 4
@GRUB_DISK_SECTOR_BITS = common dso_local global i32 0, align 4
@GRUB_DISK_SECTOR_SIZE = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i32 0, align 4
@GRUB_REISERFS_VISIBLE_MASK = common dso_local global i32 0, align 4
@GRUB_FSHELP_DIR = common dso_local global i32 0, align 4
@GRUB_REISERFS_STAT = common dso_local global i64 0, align 8
@S_IFLNK = common dso_local global i32 0, align 4
@GRUB_FSHELP_SYMLINK = common dso_local global i32 0, align 4
@GRUB_FSHELP_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Warning : %s has no stat block !\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Found : %s, type=%d\0A\00", align 1
@GRUB_ERR_TEST_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_reiserfs_block_header*, i32 (i8*, i32, %struct.grub_reiserfs_block_header*, i8*)*, i8*)* @grub_reiserfs_iterate_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_reiserfs_iterate_dir(%struct.grub_reiserfs_block_header* %0, i32 (i8*, i32, %struct.grub_reiserfs_block_header*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.grub_reiserfs_block_header*, align 8
  %6 = alloca i32 (i8*, i32, %struct.grub_reiserfs_block_header*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.grub_reiserfs_data*, align 8
  %9 = alloca %struct.grub_reiserfs_block_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.grub_reiserfs_directory_header*, align 8
  %16 = alloca %struct.grub_fshelp_node, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.grub_reiserfs_item_header*, align 8
  %20 = alloca %struct.grub_reiserfs_directory_header*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.grub_reiserfs_block_header*, align 8
  %23 = alloca %struct.grub_reiserfs_key, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.grub_reiserfs_stat_item_v1, align 4
  %29 = alloca %struct.grub_reiserfs_stat_item_v2, align 4
  store %struct.grub_reiserfs_block_header* %0, %struct.grub_reiserfs_block_header** %5, align 8
  store i32 (i8*, i32, %struct.grub_reiserfs_block_header*, i8*)* %1, i32 (i8*, i32, %struct.grub_reiserfs_block_header*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %30 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %5, align 8
  %31 = getelementptr inbounds %struct.grub_reiserfs_block_header, %struct.grub_reiserfs_block_header* %30, i32 0, i32 7
  %32 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %31, align 8
  store %struct.grub_reiserfs_data* %32, %struct.grub_reiserfs_data** %8, align 8
  store %struct.grub_reiserfs_block_header* null, %struct.grub_reiserfs_block_header** %9, align 8
  %33 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %5, align 8
  %34 = getelementptr inbounds %struct.grub_reiserfs_block_header, %struct.grub_reiserfs_block_header* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %36 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %5, align 8
  %37 = getelementptr inbounds %struct.grub_reiserfs_block_header, %struct.grub_reiserfs_block_header* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @GRUB_REISERFS_DIRECTORY, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %3
  %42 = load i32, i32* @GRUB_ERR_BAD_FILE_TYPE, align 4
  %43 = call i32 (i32, i8*, ...) @grub_error(i32 %42, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %341

44:                                               ; preds = %3
  %45 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %8, align 8
  %46 = getelementptr inbounds %struct.grub_reiserfs_data, %struct.grub_reiserfs_data* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @grub_le_to_cpu16(i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call %struct.grub_reiserfs_block_header* @grub_malloc(i32 %50)
  store %struct.grub_reiserfs_block_header* %51, %struct.grub_reiserfs_block_header** %9, align 8
  %52 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %9, align 8
  %53 = icmp ne %struct.grub_reiserfs_block_header* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  br label %341

55:                                               ; preds = %44
  %56 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %5, align 8
  %57 = getelementptr inbounds %struct.grub_reiserfs_block_header, %struct.grub_reiserfs_block_header* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %12, align 4
  %59 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %5, align 8
  %60 = getelementptr inbounds %struct.grub_reiserfs_block_header, %struct.grub_reiserfs_block_header* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  %62 = call i32 (i8*, i8*, ...) @grub_dprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32 (i8*, i32, %struct.grub_reiserfs_block_header*, i8*)*, i32 (i8*, i32, %struct.grub_reiserfs_block_header*, i8*)** %6, align 8
  %64 = icmp ne i32 (i8*, i32, %struct.grub_reiserfs_block_header*, i8*)* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %55
  %66 = load i32, i32* @GRUB_ERR_NONE, align 4
  store i32 %66, i32* %4, align 4
  br label %349

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %328, %67
  %69 = bitcast %struct.grub_fshelp_node* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %69, i8 0, i64 48, i1 false)
  %70 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %8, align 8
  %71 = getelementptr inbounds %struct.grub_reiserfs_data, %struct.grub_reiserfs_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @GRUB_DISK_SECTOR_BITS, align 4
  %76 = ashr i32 %74, %75
  %77 = mul nsw i32 %73, %76
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %10, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* @GRUB_DISK_SECTOR_SIZE, align 4
  %82 = sub nsw i32 %81, 1
  %83 = and i32 %80, %82
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %9, align 8
  %86 = bitcast %struct.grub_reiserfs_block_header* %85 to i8*
  %87 = call i32 @grub_disk_read(i32 %72, i32 %77, i32 %83, i32 %84, i8* %86)
  %88 = load i32, i32* @grub_errno, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %68
  br label %341

91:                                               ; preds = %68
  %92 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %9, align 8
  %93 = getelementptr inbounds %struct.grub_reiserfs_block_header, %struct.grub_reiserfs_block_header* %92, i64 1
  %94 = bitcast %struct.grub_reiserfs_block_header* %93 to %struct.grub_reiserfs_item_header*
  store %struct.grub_reiserfs_item_header* %94, %struct.grub_reiserfs_item_header** %19, align 8
  %95 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %9, align 8
  %96 = bitcast %struct.grub_reiserfs_block_header* %95 to i8*
  %97 = load %struct.grub_reiserfs_item_header*, %struct.grub_reiserfs_item_header** %19, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.grub_reiserfs_item_header, %struct.grub_reiserfs_item_header* %97, i64 %99
  %101 = getelementptr inbounds %struct.grub_reiserfs_item_header, %struct.grub_reiserfs_item_header* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @grub_le_to_cpu16(i32 %102)
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %96, i64 %104
  %106 = bitcast i8* %105 to %struct.grub_reiserfs_directory_header*
  store %struct.grub_reiserfs_directory_header* %106, %struct.grub_reiserfs_directory_header** %15, align 8
  %107 = load %struct.grub_reiserfs_item_header*, %struct.grub_reiserfs_item_header** %19, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.grub_reiserfs_item_header, %struct.grub_reiserfs_item_header* %107, i64 %109
  %111 = getelementptr inbounds %struct.grub_reiserfs_item_header, %struct.grub_reiserfs_item_header* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @grub_le_to_cpu16(i32 %113)
  store i32 %114, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %115

115:                                              ; preds = %295, %91
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %17, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %298

119:                                              ; preds = %115
  %120 = load %struct.grub_reiserfs_directory_header*, %struct.grub_reiserfs_directory_header** %15, align 8
  %121 = load i32, i32* %18, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.grub_reiserfs_directory_header, %struct.grub_reiserfs_directory_header* %120, i64 %122
  store %struct.grub_reiserfs_directory_header* %123, %struct.grub_reiserfs_directory_header** %20, align 8
  %124 = load %struct.grub_reiserfs_directory_header*, %struct.grub_reiserfs_directory_header** %20, align 8
  %125 = getelementptr inbounds %struct.grub_reiserfs_directory_header, %struct.grub_reiserfs_directory_header* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @grub_le_to_cpu16(i32 %126)
  store i32 %127, i32* %21, align 4
  %128 = load i32, i32* %21, align 4
  %129 = load i32, i32* @GRUB_REISERFS_VISIBLE_MASK, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %294

132:                                              ; preds = %119
  %133 = load %struct.grub_reiserfs_directory_header*, %struct.grub_reiserfs_directory_header** %15, align 8
  %134 = bitcast %struct.grub_reiserfs_directory_header* %133 to i8*
  %135 = load %struct.grub_reiserfs_directory_header*, %struct.grub_reiserfs_directory_header** %20, align 8
  %136 = getelementptr inbounds %struct.grub_reiserfs_directory_header, %struct.grub_reiserfs_directory_header* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @grub_le_to_cpu16(i32 %137)
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %134, i64 %139
  store i8* %140, i8** %25, align 8
  %141 = load %struct.grub_reiserfs_directory_header*, %struct.grub_reiserfs_directory_header** %20, align 8
  %142 = getelementptr inbounds %struct.grub_reiserfs_directory_header, %struct.grub_reiserfs_directory_header* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %23, i32 0, i32 2
  store i32 %143, i32* %144, align 4
  %145 = load %struct.grub_reiserfs_directory_header*, %struct.grub_reiserfs_directory_header** %20, align 8
  %146 = getelementptr inbounds %struct.grub_reiserfs_directory_header, %struct.grub_reiserfs_directory_header* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %23, i32 0, i32 1
  store i32 %147, i32* %148, align 8
  %149 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %23, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  store i64 0, i64* %151, align 8
  %152 = load i64, i64* @GRUB_REISERFS_DIRECTORY, align 8
  %153 = call i32 @grub_reiserfs_set_key_type(%struct.grub_reiserfs_key* %23, i64 %152, i32 2)
  %154 = call i32 @grub_reiserfs_set_key_offset(%struct.grub_reiserfs_key* %23, i32 1)
  %155 = call %struct.grub_reiserfs_block_header* @grub_malloc(i32 48)
  store %struct.grub_reiserfs_block_header* %155, %struct.grub_reiserfs_block_header** %22, align 8
  %156 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %22, align 8
  %157 = icmp ne %struct.grub_reiserfs_block_header* %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %132
  br label %341

159:                                              ; preds = %132
  %160 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %8, align 8
  %161 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %22, align 8
  %162 = call i32 @grub_reiserfs_get_item(%struct.grub_reiserfs_data* %160, %struct.grub_reiserfs_key* %23, %struct.grub_reiserfs_block_header* %161)
  %163 = load i32, i32* @GRUB_ERR_NONE, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %22, align 8
  %167 = call i32 @grub_free(%struct.grub_reiserfs_block_header* %166)
  br label %341

168:                                              ; preds = %159
  %169 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %22, align 8
  %170 = getelementptr inbounds %struct.grub_reiserfs_block_header, %struct.grub_reiserfs_block_header* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @GRUB_REISERFS_DIRECTORY, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load i32, i32* @GRUB_FSHELP_DIR, align 4
  store i32 %175, i32* %24, align 4
  br label %280

176:                                              ; preds = %168
  %177 = call i32 @grub_reiserfs_set_key_offset(%struct.grub_reiserfs_key* %23, i32 0)
  %178 = load i64, i64* @GRUB_REISERFS_STAT, align 8
  %179 = call i32 @grub_reiserfs_set_key_type(%struct.grub_reiserfs_key* %23, i64 %178, i32 2)
  %180 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %8, align 8
  %181 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %22, align 8
  %182 = call i32 @grub_reiserfs_get_item(%struct.grub_reiserfs_data* %180, %struct.grub_reiserfs_key* %23, %struct.grub_reiserfs_block_header* %181)
  %183 = load i32, i32* @GRUB_ERR_NONE, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %176
  %186 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %22, align 8
  %187 = call i32 @grub_free(%struct.grub_reiserfs_block_header* %186)
  br label %341

188:                                              ; preds = %176
  %189 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %22, align 8
  %190 = getelementptr inbounds %struct.grub_reiserfs_block_header, %struct.grub_reiserfs_block_header* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %269

193:                                              ; preds = %188
  %194 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %22, align 8
  %195 = getelementptr inbounds %struct.grub_reiserfs_block_header, %struct.grub_reiserfs_block_header* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @grub_le_to_cpu16(i32 %197)
  store i32 %198, i32* %27, align 4
  %199 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %22, align 8
  %200 = getelementptr inbounds %struct.grub_reiserfs_block_header, %struct.grub_reiserfs_block_header* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  store i32 %201, i32* %26, align 4
  %202 = load i32, i32* %27, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %236

204:                                              ; preds = %193
  %205 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %8, align 8
  %206 = getelementptr inbounds %struct.grub_reiserfs_data, %struct.grub_reiserfs_data* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %26, align 4
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* @GRUB_DISK_SECTOR_BITS, align 4
  %211 = ashr i32 %209, %210
  %212 = mul nsw i32 %208, %211
  %213 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %22, align 8
  %214 = getelementptr inbounds %struct.grub_reiserfs_block_header, %struct.grub_reiserfs_block_header* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @grub_le_to_cpu16(i32 %216)
  %218 = bitcast %struct.grub_reiserfs_stat_item_v1* %28 to i8*
  %219 = call i32 @grub_disk_read(i32 %207, i32 %212, i32 %217, i32 40, i8* %218)
  %220 = load i32, i32* @grub_errno, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %204
  br label %341

223:                                              ; preds = %204
  %224 = getelementptr inbounds %struct.grub_reiserfs_stat_item_v1, %struct.grub_reiserfs_stat_item_v1* %28, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @grub_le_to_cpu16(i32 %225)
  %227 = load i32, i32* @S_IFLNK, align 4
  %228 = and i32 %226, %227
  %229 = load i32, i32* @S_IFLNK, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %223
  %232 = load i32, i32* @GRUB_FSHELP_SYMLINK, align 4
  store i32 %232, i32* %24, align 4
  br label %235

233:                                              ; preds = %223
  %234 = load i32, i32* @GRUB_FSHELP_REG, align 4
  store i32 %234, i32* %24, align 4
  br label %235

235:                                              ; preds = %233, %231
  br label %268

236:                                              ; preds = %193
  %237 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %8, align 8
  %238 = getelementptr inbounds %struct.grub_reiserfs_data, %struct.grub_reiserfs_data* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %26, align 4
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* @GRUB_DISK_SECTOR_BITS, align 4
  %243 = ashr i32 %241, %242
  %244 = mul nsw i32 %240, %243
  %245 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %22, align 8
  %246 = getelementptr inbounds %struct.grub_reiserfs_block_header, %struct.grub_reiserfs_block_header* %245, i32 0, i32 4
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @grub_le_to_cpu16(i32 %248)
  %250 = bitcast %struct.grub_reiserfs_stat_item_v2* %29 to i8*
  %251 = call i32 @grub_disk_read(i32 %239, i32 %244, i32 %249, i32 44, i8* %250)
  %252 = load i32, i32* @grub_errno, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %236
  br label %341

255:                                              ; preds = %236
  %256 = getelementptr inbounds %struct.grub_reiserfs_stat_item_v2, %struct.grub_reiserfs_stat_item_v2* %29, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @grub_le_to_cpu16(i32 %257)
  %259 = load i32, i32* @S_IFLNK, align 4
  %260 = and i32 %258, %259
  %261 = load i32, i32* @S_IFLNK, align 4
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %265

263:                                              ; preds = %255
  %264 = load i32, i32* @GRUB_FSHELP_SYMLINK, align 4
  store i32 %264, i32* %24, align 4
  br label %267

265:                                              ; preds = %255
  %266 = load i32, i32* @GRUB_FSHELP_REG, align 4
  store i32 %266, i32* %24, align 4
  br label %267

267:                                              ; preds = %265, %263
  br label %268

268:                                              ; preds = %267, %235
  br label %279

269:                                              ; preds = %188
  %270 = load i8*, i8** %25, align 8
  %271 = call i64 @grub_strcmp(i8* %270, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %269
  %274 = load i8*, i8** %25, align 8
  %275 = call i32 (i8*, i8*, ...) @grub_dprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8* %274)
  br label %276

276:                                              ; preds = %273, %269
  %277 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %22, align 8
  %278 = call i32 @grub_free(%struct.grub_reiserfs_block_header* %277)
  br label %295

279:                                              ; preds = %268
  br label %280

280:                                              ; preds = %279, %174
  %281 = load i32 (i8*, i32, %struct.grub_reiserfs_block_header*, i8*)*, i32 (i8*, i32, %struct.grub_reiserfs_block_header*, i8*)** %6, align 8
  %282 = load i8*, i8** %25, align 8
  %283 = load i32, i32* %24, align 4
  %284 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %22, align 8
  %285 = load i8*, i8** %7, align 8
  %286 = call i32 %281(i8* %282, i32 %283, %struct.grub_reiserfs_block_header* %284, i8* %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %280
  %289 = load i8*, i8** %25, align 8
  %290 = load i32, i32* %24, align 4
  %291 = call i32 (i8*, i8*, ...) @grub_dprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %289, i32 %290)
  store i32 1, i32* %14, align 4
  br label %332

292:                                              ; preds = %280
  %293 = load i8*, i8** %25, align 8
  store i8 0, i8* %293, align 1
  br label %294

294:                                              ; preds = %292, %119
  br label %295

295:                                              ; preds = %294, %276
  %296 = load i32, i32* %18, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %18, align 4
  br label %115

298:                                              ; preds = %115
  %299 = load i32, i32* %13, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %298
  br label %331

302:                                              ; preds = %298
  %303 = load %struct.grub_reiserfs_item_header*, %struct.grub_reiserfs_item_header** %19, align 8
  %304 = load i32, i32* %11, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.grub_reiserfs_item_header, %struct.grub_reiserfs_item_header* %303, i64 %305
  %307 = getelementptr inbounds %struct.grub_reiserfs_item_header, %struct.grub_reiserfs_item_header* %306, i32 0, i32 0
  %308 = load i32, i32* %13, align 4
  %309 = call i32 @grub_reiserfs_set_key_offset(%struct.grub_reiserfs_key* %307, i32 %308)
  %310 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %8, align 8
  %311 = load %struct.grub_reiserfs_item_header*, %struct.grub_reiserfs_item_header** %19, align 8
  %312 = load i32, i32* %11, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.grub_reiserfs_item_header, %struct.grub_reiserfs_item_header* %311, i64 %313
  %315 = getelementptr inbounds %struct.grub_reiserfs_item_header, %struct.grub_reiserfs_item_header* %314, i32 0, i32 0
  %316 = bitcast %struct.grub_fshelp_node* %16 to %struct.grub_reiserfs_block_header*
  %317 = call i32 @grub_reiserfs_get_item(%struct.grub_reiserfs_data* %310, %struct.grub_reiserfs_key* %315, %struct.grub_reiserfs_block_header* %316)
  %318 = load i32, i32* @GRUB_ERR_NONE, align 4
  %319 = icmp ne i32 %317, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %302
  br label %341

321:                                              ; preds = %302
  %322 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %16, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  store i32 %323, i32* %12, align 4
  %324 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %16, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  store i32 %325, i32* %11, align 4
  %326 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %16, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  store i32 %327, i32* %13, align 4
  br label %328

328:                                              ; preds = %321
  %329 = load i32, i32* %12, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %68, label %331

331:                                              ; preds = %328, %301
  br label %332

332:                                              ; preds = %331, %288
  %333 = load i32, i32* @grub_errno, align 4
  %334 = load i32, i32* @GRUB_ERR_NONE, align 4
  %335 = icmp eq i32 %333, %334
  %336 = zext i1 %335 to i32
  %337 = call i32 @assert(i32 %336)
  %338 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %9, align 8
  %339 = call i32 @grub_free(%struct.grub_reiserfs_block_header* %338)
  %340 = load i32, i32* %14, align 4
  store i32 %340, i32* %4, align 4
  br label %349

341:                                              ; preds = %320, %254, %222, %185, %165, %158, %90, %54, %41
  %342 = load i32, i32* @grub_errno, align 4
  %343 = load i32, i32* @GRUB_ERR_NONE, align 4
  %344 = icmp ne i32 %342, %343
  %345 = zext i1 %344 to i32
  %346 = call i32 @assert(i32 %345)
  %347 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %9, align 8
  %348 = call i32 @grub_free(%struct.grub_reiserfs_block_header* %347)
  store i32 0, i32* %4, align 4
  br label %349

349:                                              ; preds = %341, %332, %65
  %350 = load i32, i32* %4, align 4
  ret i32 %350
}

declare dso_local i32 @grub_error(i32, i8*, ...) #1

declare dso_local i32 @grub_le_to_cpu16(i32) #1

declare dso_local %struct.grub_reiserfs_block_header* @grub_malloc(i32) #1

declare dso_local i32 @grub_dprintf(i8*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @grub_disk_read(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @grub_reiserfs_set_key_type(%struct.grub_reiserfs_key*, i64, i32) #1

declare dso_local i32 @grub_reiserfs_set_key_offset(%struct.grub_reiserfs_key*, i32) #1

declare dso_local i32 @grub_reiserfs_get_item(%struct.grub_reiserfs_data*, %struct.grub_reiserfs_key*, %struct.grub_reiserfs_block_header*) #1

declare dso_local i32 @grub_free(%struct.grub_reiserfs_block_header*) #1

declare dso_local i64 @grub_strcmp(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
