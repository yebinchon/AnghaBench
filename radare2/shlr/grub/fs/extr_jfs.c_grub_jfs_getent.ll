; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_jfs.c_grub_jfs_getent.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_jfs.c_grub_jfs_getent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_jfs_diropen = type { i64, i64, i64, %struct.grub_jfs_leaf_next_dirent*, i32, i64*, %struct.grub_jfs_leaf_dirent*, %struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.grub_jfs_leaf_next_dirent = type { i32, i32 }
%struct.grub_jfs_leaf_dirent = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i64*, %struct.grub_jfs_leaf_next_dirent*, %struct.grub_jfs_leaf_dirent* }
%struct.TYPE_13__ = type { i32, i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@GRUB_JFS_TREE_LEAF = common dso_local global i32 0, align 4
@GRUB_ERR_OUT_OF_RANGE = common dso_local global i32 0, align 4
@GRUB_DISK_SECTOR_BITS = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_jfs_diropen*)* @grub_jfs_getent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_jfs_getent(%struct.grub_jfs_diropen* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.grub_jfs_diropen*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.grub_jfs_leaf_dirent*, align 8
  %6 = alloca %struct.grub_jfs_leaf_next_dirent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [255 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.grub_jfs_diropen* %0, %struct.grub_jfs_diropen** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %12 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %15 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %122

18:                                               ; preds = %1
  %19 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %20 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %19, i32 0, i32 9
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GRUB_JFS_TREE_LEAF, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %18
  %30 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %31 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %30, i32 0, i32 7
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @grub_le_to_cpu64(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %29, %18
  %39 = load i32, i32* @GRUB_ERR_OUT_OF_RANGE, align 4
  store i32 %39, i32* %2, align 4
  br label %225

40:                                               ; preds = %29
  %41 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %42 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %41, i32 0, i32 7
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @grub_le_to_cpu64(i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %49 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %48, i32 0, i32 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @grub_le_to_cpu16(i32 %53)
  %55 = load i32, i32* @GRUB_DISK_SECTOR_BITS, align 4
  %56 = sub i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = shl i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %60 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %59, i32 0, i32 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %66 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %65, i32 0, i32 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @grub_le_to_cpu32(i32 %70)
  %72 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %73 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %72, i32 0, i32 7
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = call i64 @grub_disk_read(i32 %63, i32 %64, i32 0, i32 %71, i64* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %40
  %80 = load i32, i32* @grub_errno, align 4
  store i32 %80, i32* %2, align 4
  br label %225

81:                                               ; preds = %40
  %82 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %83 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %82, i32 0, i32 7
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 3
  %86 = load %struct.grub_jfs_leaf_dirent*, %struct.grub_jfs_leaf_dirent** %85, align 8
  %87 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %88 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %87, i32 0, i32 6
  store %struct.grub_jfs_leaf_dirent* %86, %struct.grub_jfs_leaf_dirent** %88, align 8
  %89 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %90 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %89, i32 0, i32 7
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 2
  %93 = load %struct.grub_jfs_leaf_next_dirent*, %struct.grub_jfs_leaf_next_dirent** %92, align 8
  %94 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %95 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %94, i32 0, i32 3
  store %struct.grub_jfs_leaf_next_dirent* %93, %struct.grub_jfs_leaf_next_dirent** %95, align 8
  %96 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %97 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %96, i32 0, i32 7
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load i64*, i64** %99, align 8
  %101 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %102 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %101, i32 0, i32 7
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 %106, 32
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %100, i64 %108
  %110 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %111 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %110, i32 0, i32 5
  store i64* %109, i64** %111, align 8
  %112 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %113 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %112, i32 0, i32 7
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %119 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  %120 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %121 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %120, i32 0, i32 0
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %81, %1
  %123 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %124 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %123, i32 0, i32 6
  %125 = load %struct.grub_jfs_leaf_dirent*, %struct.grub_jfs_leaf_dirent** %124, align 8
  %126 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %127 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %126, i32 0, i32 5
  %128 = load i64*, i64** %127, align 8
  %129 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %130 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i64, i64* %128, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.grub_jfs_leaf_dirent, %struct.grub_jfs_leaf_dirent* %125, i64 %135
  store %struct.grub_jfs_leaf_dirent* %136, %struct.grub_jfs_leaf_dirent** %5, align 8
  %137 = load %struct.grub_jfs_leaf_dirent*, %struct.grub_jfs_leaf_dirent** %5, align 8
  %138 = getelementptr inbounds %struct.grub_jfs_leaf_dirent, %struct.grub_jfs_leaf_dirent* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %122
  %143 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %144 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %144, align 8
  %147 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %148 = call i32 @grub_jfs_getent(%struct.grub_jfs_diropen* %147)
  store i32 %148, i32* %2, align 4
  br label %225

149:                                              ; preds = %122
  %150 = load %struct.grub_jfs_leaf_dirent*, %struct.grub_jfs_leaf_dirent** %5, align 8
  %151 = getelementptr inbounds %struct.grub_jfs_leaf_dirent, %struct.grub_jfs_leaf_dirent* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp slt i32 %153, 11
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = load i32, i32* %7, align 4
  br label %158

157:                                              ; preds = %149
  br label %158

158:                                              ; preds = %157, %155
  %159 = phi i32 [ %156, %155 ], [ 11, %157 ]
  %160 = getelementptr inbounds [255 x i32], [255 x i32]* %9, i64 0, i64 0
  %161 = call i32 @addstr(i32 %152, i32 %159, i32* %160, i32* %4)
  %162 = load %struct.grub_jfs_leaf_dirent*, %struct.grub_jfs_leaf_dirent** %5, align 8
  %163 = getelementptr inbounds %struct.grub_jfs_leaf_dirent, %struct.grub_jfs_leaf_dirent* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @grub_le_to_cpu32(i32 %164)
  %166 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %167 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sub nsw i32 %168, 11
  store i32 %169, i32* %7, align 4
  %170 = load %struct.grub_jfs_leaf_dirent*, %struct.grub_jfs_leaf_dirent** %5, align 8
  %171 = getelementptr inbounds %struct.grub_jfs_leaf_dirent, %struct.grub_jfs_leaf_dirent* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %8, align 4
  %173 = load %struct.grub_jfs_leaf_dirent*, %struct.grub_jfs_leaf_dirent** %5, align 8
  %174 = getelementptr inbounds %struct.grub_jfs_leaf_dirent, %struct.grub_jfs_leaf_dirent* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 255
  br i1 %176, label %177, label %213

177:                                              ; preds = %158
  br label %178

178:                                              ; preds = %210, %177
  %179 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %180 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %179, i32 0, i32 3
  %181 = load %struct.grub_jfs_leaf_next_dirent*, %struct.grub_jfs_leaf_next_dirent** %180, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.grub_jfs_leaf_next_dirent, %struct.grub_jfs_leaf_next_dirent* %181, i64 %183
  store %struct.grub_jfs_leaf_next_dirent* %184, %struct.grub_jfs_leaf_next_dirent** %6, align 8
  %185 = load %struct.grub_jfs_leaf_next_dirent*, %struct.grub_jfs_leaf_next_dirent** %6, align 8
  %186 = getelementptr inbounds %struct.grub_jfs_leaf_next_dirent, %struct.grub_jfs_leaf_next_dirent* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %7, align 4
  %189 = icmp slt i32 %188, 15
  br i1 %189, label %190, label %192

190:                                              ; preds = %178
  %191 = load i32, i32* %7, align 4
  br label %193

192:                                              ; preds = %178
  br label %193

193:                                              ; preds = %192, %190
  %194 = phi i32 [ %191, %190 ], [ 15, %192 ]
  %195 = getelementptr inbounds [255 x i32], [255 x i32]* %9, i64 0, i64 0
  %196 = call i32 @addstr(i32 %187, i32 %194, i32* %195, i32* %4)
  %197 = load i32, i32* %7, align 4
  %198 = sub nsw i32 %197, 15
  store i32 %198, i32* %7, align 4
  %199 = load %struct.grub_jfs_leaf_next_dirent*, %struct.grub_jfs_leaf_next_dirent** %6, align 8
  %200 = getelementptr inbounds %struct.grub_jfs_leaf_next_dirent, %struct.grub_jfs_leaf_next_dirent* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %8, align 4
  br label %202

202:                                              ; preds = %193
  %203 = load %struct.grub_jfs_leaf_next_dirent*, %struct.grub_jfs_leaf_next_dirent** %6, align 8
  %204 = getelementptr inbounds %struct.grub_jfs_leaf_next_dirent, %struct.grub_jfs_leaf_next_dirent* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 255
  br i1 %206, label %207, label %210

207:                                              ; preds = %202
  %208 = load i32, i32* %7, align 4
  %209 = icmp sgt i32 %208, 0
  br label %210

210:                                              ; preds = %207, %202
  %211 = phi i1 [ false, %202 ], [ %209, %207 ]
  br i1 %211, label %178, label %212

212:                                              ; preds = %210
  br label %213

213:                                              ; preds = %212, %158
  %214 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %215 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = add i64 %216, 1
  store i64 %217, i64* %215, align 8
  %218 = load %struct.grub_jfs_diropen*, %struct.grub_jfs_diropen** %3, align 8
  %219 = getelementptr inbounds %struct.grub_jfs_diropen, %struct.grub_jfs_diropen* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = inttoptr i64 %220 to i32*
  %222 = getelementptr inbounds [255 x i32], [255 x i32]* %9, i64 0, i64 0
  %223 = load i32, i32* %4, align 4
  %224 = call i8* @grub_utf16_to_utf8(i32* %221, i32* %222, i32 %223)
  store i8 0, i8* %224, align 1
  store i32 0, i32* %2, align 4
  br label %225

225:                                              ; preds = %213, %142, %79, %38
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local i32 @grub_le_to_cpu64(i32) #1

declare dso_local i32 @grub_le_to_cpu16(i32) #1

declare dso_local i64 @grub_disk_read(i32, i32, i32, i32, i64*) #1

declare dso_local i32 @grub_le_to_cpu32(i32) #1

declare dso_local i32 @addstr(i32, i32, i32*, i32*) #1

declare dso_local i8* @grub_utf16_to_utf8(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
