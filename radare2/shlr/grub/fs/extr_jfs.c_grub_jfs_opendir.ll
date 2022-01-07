; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_jfs.c_grub_jfs_opendir.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_jfs.c_grub_jfs_opendir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_jfs_diropen = type { i8*, %struct.TYPE_14__, %struct.grub_jfs_diropen*, i32, %struct.grub_jfs_leaf_next_dirent*, %struct.grub_jfs_leaf_next_dirent*, i64, i64, %struct.grub_jfs_inode*, %struct.grub_jfs_data* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.grub_jfs_leaf_next_dirent = type { i32 }
%struct.grub_jfs_data = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.grub_jfs_inode = type { %struct.TYPE_11__, %struct.TYPE_9__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i64*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.grub_jfs_internal_dirent = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@GRUB_JFS_FILETYPE_MASK = common dso_local global i32 0, align 4
@GRUB_JFS_FILETYPE_DIR = common dso_local global i32 0, align 4
@GRUB_ERR_BAD_FILE_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"not a directory\00", align 1
@GRUB_JFS_TREE_LEAF = common dso_local global i32 0, align 4
@GRUB_DISK_SECTOR_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.grub_jfs_diropen* (%struct.grub_jfs_data*, %struct.grub_jfs_inode*)* @grub_jfs_opendir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.grub_jfs_diropen* @grub_jfs_opendir(%struct.grub_jfs_data* %0, %struct.grub_jfs_inode* %1) #0 {
  %3 = alloca %struct.grub_jfs_diropen*, align 8
  %4 = alloca %struct.grub_jfs_data*, align 8
  %5 = alloca %struct.grub_jfs_inode*, align 8
  %6 = alloca %struct.grub_jfs_internal_dirent*, align 8
  %7 = alloca %struct.grub_jfs_diropen*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.grub_jfs_data* %0, %struct.grub_jfs_data** %4, align 8
  store %struct.grub_jfs_inode* %1, %struct.grub_jfs_inode** %5, align 8
  %10 = load %struct.grub_jfs_inode*, %struct.grub_jfs_inode** %5, align 8
  %11 = getelementptr inbounds %struct.grub_jfs_inode, %struct.grub_jfs_inode* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.grub_jfs_internal_dirent*
  store %struct.grub_jfs_internal_dirent* %14, %struct.grub_jfs_internal_dirent** %6, align 8
  %15 = load %struct.grub_jfs_inode*, %struct.grub_jfs_inode** %5, align 8
  %16 = getelementptr inbounds %struct.grub_jfs_inode, %struct.grub_jfs_inode* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @grub_le_to_cpu32(i32 %17)
  %19 = load i32, i32* @GRUB_JFS_FILETYPE_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @GRUB_JFS_FILETYPE_DIR, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @GRUB_ERR_BAD_FILE_TYPE, align 4
  %25 = call i32 @grub_error(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.grub_jfs_diropen* null, %struct.grub_jfs_diropen** %3, align 8
  br label %227

26:                                               ; preds = %2
  %27 = call %struct.grub_jfs_diropen* @grub_zalloc(i32 88)
  store %struct.grub_jfs_diropen* %27, %struct.grub_jfs_diropen** %7, align 8
  %28 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %29 = icmp ne %struct.grub_jfs_diropen* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store %struct.grub_jfs_diropen* null, %struct.grub_jfs_diropen** %3, align 8
  br label %227

31:                                               ; preds = %26
  %32 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %33 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %34 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %33, i32 0, i32 9
  store %struct.grub_jfs_data* %32, %struct.grub_jfs_data** %34, align 8
  %35 = load %struct.grub_jfs_inode*, %struct.grub_jfs_inode** %5, align 8
  %36 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %37 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %36, i32 0, i32 8
  store %struct.grub_jfs_inode* %35, %struct.grub_jfs_inode** %37, align 8
  %38 = load %struct.grub_jfs_inode*, %struct.grub_jfs_inode** %5, align 8
  %39 = getelementptr inbounds %struct.grub_jfs_inode, %struct.grub_jfs_inode* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @GRUB_JFS_TREE_LEAF, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %31
  %47 = load %struct.grub_jfs_inode*, %struct.grub_jfs_inode** %5, align 8
  %48 = getelementptr inbounds %struct.grub_jfs_inode, %struct.grub_jfs_inode* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %52 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %51, i32 0, i32 7
  store i64 %50, i64* %52, align 8
  %53 = load %struct.grub_jfs_internal_dirent*, %struct.grub_jfs_internal_dirent** %6, align 8
  %54 = bitcast %struct.grub_jfs_internal_dirent* %53 to %struct.grub_jfs_leaf_next_dirent*
  %55 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %56 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %55, i32 0, i32 5
  store %struct.grub_jfs_leaf_next_dirent* %54, %struct.grub_jfs_leaf_next_dirent** %56, align 8
  %57 = load %struct.grub_jfs_inode*, %struct.grub_jfs_inode** %5, align 8
  %58 = getelementptr inbounds %struct.grub_jfs_inode, %struct.grub_jfs_inode* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = bitcast i64* %61 to i8*
  %63 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %64 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.grub_jfs_inode*, %struct.grub_jfs_inode** %5, align 8
  %66 = getelementptr inbounds %struct.grub_jfs_inode, %struct.grub_jfs_inode* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %71 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  store %struct.grub_jfs_diropen* %72, %struct.grub_jfs_diropen** %3, align 8
  br label %227

73:                                               ; preds = %31
  %74 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %75 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @grub_le_to_cpu32(i32 %77)
  %79 = call %struct.grub_jfs_diropen* @grub_malloc(i32 %78)
  %80 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %81 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %80, i32 0, i32 2
  store %struct.grub_jfs_diropen* %79, %struct.grub_jfs_diropen** %81, align 8
  %82 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %83 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %82, i32 0, i32 2
  %84 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %83, align 8
  %85 = icmp ne %struct.grub_jfs_diropen* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %73
  %87 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %88 = call i32 @grub_free(%struct.grub_jfs_diropen* %87)
  store %struct.grub_jfs_diropen* null, %struct.grub_jfs_diropen** %3, align 8
  br label %227

89:                                               ; preds = %73
  %90 = load %struct.grub_jfs_internal_dirent*, %struct.grub_jfs_internal_dirent** %6, align 8
  %91 = load %struct.grub_jfs_inode*, %struct.grub_jfs_inode** %5, align 8
  %92 = getelementptr inbounds %struct.grub_jfs_inode, %struct.grub_jfs_inode* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.grub_jfs_internal_dirent, %struct.grub_jfs_internal_dirent* %90, i64 %97
  %99 = getelementptr inbounds %struct.grub_jfs_internal_dirent, %struct.grub_jfs_internal_dirent* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @grub_le_to_cpu32(i32 %101)
  store i32 %102, i32* %8, align 4
  %103 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %104 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @grub_le_to_cpu16(i32 %106)
  %108 = load i32, i32* @GRUB_DISK_SECTOR_BITS, align 4
  %109 = sub nsw i32 %107, %108
  %110 = load i32, i32* %8, align 4
  %111 = shl i32 %110, %109
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %176, %89
  %113 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %114 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %118 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @grub_le_to_cpu32(i32 %120)
  %122 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %123 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %122, i32 0, i32 2
  %124 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %123, align 8
  %125 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = bitcast i8* %126 to i32*
  %128 = call i64 @grub_disk_read(i32 %115, i32 %116, i32 0, i32 %121, i32* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %112
  %131 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %132 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %131, i32 0, i32 2
  %133 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %132, align 8
  %134 = call i32 @grub_free(%struct.grub_jfs_diropen* %133)
  %135 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %136 = call i32 @grub_free(%struct.grub_jfs_diropen* %135)
  store %struct.grub_jfs_diropen* null, %struct.grub_jfs_diropen** %3, align 8
  br label %227

137:                                              ; preds = %112
  %138 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %139 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %138, i32 0, i32 2
  %140 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %139, align 8
  %141 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %140, i32 0, i32 6
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to %struct.grub_jfs_internal_dirent*
  store %struct.grub_jfs_internal_dirent* %143, %struct.grub_jfs_internal_dirent** %6, align 8
  %144 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %145 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %144, i32 0, i32 2
  %146 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %145, align 8
  %147 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %150 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %149, i32 0, i32 2
  %151 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %150, align 8
  %152 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = mul nsw i32 %154, 32
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %148, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  store i32 %159, i32* %9, align 4
  %160 = load %struct.grub_jfs_internal_dirent*, %struct.grub_jfs_internal_dirent** %6, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.grub_jfs_internal_dirent, %struct.grub_jfs_internal_dirent* %160, i64 %162
  %164 = getelementptr inbounds %struct.grub_jfs_internal_dirent, %struct.grub_jfs_internal_dirent* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @grub_le_to_cpu32(i32 %166)
  %168 = load %struct.grub_jfs_data*, %struct.grub_jfs_data** %4, align 8
  %169 = getelementptr inbounds %struct.grub_jfs_data, %struct.grub_jfs_data* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @grub_le_to_cpu16(i32 %171)
  %173 = load i32, i32* @GRUB_DISK_SECTOR_BITS, align 4
  %174 = sub nsw i32 %172, %173
  %175 = shl i32 %167, %174
  store i32 %175, i32* %8, align 4
  br label %176

176:                                              ; preds = %137
  %177 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %178 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %177, i32 0, i32 2
  %179 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %178, align 8
  %180 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @GRUB_JFS_TREE_LEAF, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  %186 = xor i1 %185, true
  br i1 %186, label %112, label %187

187:                                              ; preds = %176
  %188 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %189 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %188, i32 0, i32 2
  %190 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %189, align 8
  %191 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %190, i32 0, i32 6
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %194 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %193, i32 0, i32 7
  store i64 %192, i64* %194, align 8
  %195 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %196 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %195, i32 0, i32 2
  %197 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %196, align 8
  %198 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %197, i32 0, i32 4
  %199 = load %struct.grub_jfs_leaf_next_dirent*, %struct.grub_jfs_leaf_next_dirent** %198, align 8
  %200 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %201 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %200, i32 0, i32 5
  store %struct.grub_jfs_leaf_next_dirent* %199, %struct.grub_jfs_leaf_next_dirent** %201, align 8
  %202 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %203 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %202, i32 0, i32 2
  %204 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %203, align 8
  %205 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %208 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %207, i32 0, i32 2
  %209 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %208, align 8
  %210 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = mul nsw i32 %212, 32
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %206, i64 %214
  %216 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %217 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %216, i32 0, i32 0
  store i8* %215, i8** %217, align 8
  %218 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %219 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %218, i32 0, i32 2
  %220 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %219, align 8
  %221 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  %225 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %224, i32 0, i32 3
  store i32 %223, i32* %225, align 8
  %226 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %7, align 8
  store %struct.grub_jfs_diropen* %226, %struct.grub_jfs_diropen** %3, align 8
  br label %227

227:                                              ; preds = %187, %130, %86, %46, %30, %23
  %228 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  ret %struct.grub_jfs_diropen* %228
}

declare dso_local i32 @grub_le_to_cpu32(i32) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local %struct.grub_jfs_diropen* @grub_zalloc(i32) #1

declare dso_local %struct.grub_jfs_diropen* @grub_malloc(i32) #1

declare dso_local i32 @grub_free(%struct.grub_jfs_diropen*) #1

declare dso_local i32 @grub_le_to_cpu16(i32) #1

declare dso_local i64 @grub_disk_read(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
