; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_reiserfs.c_grub_reiserfs_get_item.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_reiserfs.c_grub_reiserfs_get_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_reiserfs_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.grub_reiserfs_key = type { i64, i64 }
%struct.grub_fshelp_node = type { i32, i32, i32, i32, %struct.grub_reiserfs_data*, i64 }
%struct.grub_reiserfs_block_header = type { i32, i32 }
%struct.grub_reiserfs_item_header = type { %struct.grub_reiserfs_key }
%struct.grub_reiserfs_disk_child = type { i32 }

@GRUB_ERR_TEST_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"data is NULL\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"key is NULL\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"item is NULL\00", align 1
@GRUB_DISK_SECTOR_BITS = common dso_local global i32 0, align 4
@GRUB_DISK_SECTOR_SIZE = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"reiserfs_tree\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" at level %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"level loop detected, aborting\0A\00", align 1
@GRUB_ERR_FILE_READ_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"level loop\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c" number of contained items : %d\0A\00", align 1
@GRUB_REISERFS_UNKNOWN = common dso_local global i32 0, align 4
@GRUB_ERR_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.grub_reiserfs_data*, %struct.grub_reiserfs_key*, %struct.grub_fshelp_node*)* @grub_reiserfs_get_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_reiserfs_get_item(%struct.grub_reiserfs_data* %0, %struct.grub_reiserfs_key* %1, %struct.grub_fshelp_node* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.grub_reiserfs_data*, align 8
  %6 = alloca %struct.grub_reiserfs_key*, align 8
  %7 = alloca %struct.grub_fshelp_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.grub_reiserfs_block_header*, align 8
  %10 = alloca %struct.grub_reiserfs_key*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.grub_reiserfs_item_header*, align 8
  %17 = alloca %struct.grub_reiserfs_key*, align 8
  %18 = alloca %struct.grub_reiserfs_disk_child*, align 8
  store %struct.grub_reiserfs_data* %0, %struct.grub_reiserfs_data** %5, align 8
  store %struct.grub_reiserfs_key* %1, %struct.grub_reiserfs_key** %6, align 8
  store %struct.grub_fshelp_node* %2, %struct.grub_fshelp_node** %7, align 8
  store %struct.grub_reiserfs_block_header* null, %struct.grub_reiserfs_block_header** %9, align 8
  store %struct.grub_reiserfs_key* null, %struct.grub_reiserfs_key** %10, align 8
  store i32 -1, i32* %15, align 4
  store %struct.grub_reiserfs_item_header* null, %struct.grub_reiserfs_item_header** %16, align 8
  %19 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %5, align 8
  %20 = icmp ne %struct.grub_reiserfs_data* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @GRUB_ERR_TEST_FAILURE, align 4
  %23 = call i32 @grub_error(i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %254

24:                                               ; preds = %3
  %25 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %6, align 8
  %26 = icmp ne %struct.grub_reiserfs_key* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @GRUB_ERR_TEST_FAILURE, align 4
  %29 = call i32 @grub_error(i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %254

30:                                               ; preds = %24
  %31 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %7, align 8
  %32 = icmp ne %struct.grub_fshelp_node* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @GRUB_ERR_TEST_FAILURE, align 4
  %35 = call i32 @grub_error(i32 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %254

36:                                               ; preds = %30
  %37 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %5, align 8
  %38 = getelementptr inbounds %struct.grub_reiserfs_data, %struct.grub_reiserfs_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @grub_le_to_cpu16(i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %5, align 8
  %43 = getelementptr inbounds %struct.grub_reiserfs_data, %struct.grub_reiserfs_data* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @grub_le_to_cpu32(i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call %struct.grub_reiserfs_block_header* @grub_malloc(i32 %47)
  store %struct.grub_reiserfs_block_header* %48, %struct.grub_reiserfs_block_header** %9, align 8
  %49 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %9, align 8
  %50 = icmp ne %struct.grub_reiserfs_block_header* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %36
  br label %254

52:                                               ; preds = %36
  %53 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %7, align 8
  %54 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %53, i32 0, i32 5
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %204, %52
  %56 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %5, align 8
  %57 = getelementptr inbounds %struct.grub_reiserfs_data, %struct.grub_reiserfs_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @GRUB_DISK_SECTOR_BITS, align 4
  %62 = ashr i32 %60, %61
  %63 = mul nsw i32 %59, %62
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %11, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* @GRUB_DISK_SECTOR_SIZE, align 4
  %68 = sub nsw i32 %67, 1
  %69 = and i32 %66, %68
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %9, align 8
  %72 = call i32 @grub_disk_read(i32 %58, i32 %63, i32 %69, i32 %70, %struct.grub_reiserfs_block_header* %71)
  %73 = load i64, i64* @grub_errno, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %55
  br label %254

76:                                               ; preds = %55
  %77 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %9, align 8
  %78 = getelementptr inbounds %struct.grub_reiserfs_block_header, %struct.grub_reiserfs_block_header* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @grub_le_to_cpu16(i32 %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 (i8*, i8*, ...) @grub_dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %76
  %87 = call i32 (i8*, i8*, ...) @grub_dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %88 = load i32, i32* @GRUB_ERR_FILE_READ_ERROR, align 4
  %89 = call i32 @grub_error(i32 %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %254

90:                                               ; preds = %76
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %15, align 4
  %92 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %9, align 8
  %93 = getelementptr inbounds %struct.grub_reiserfs_block_header, %struct.grub_reiserfs_block_header* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @grub_le_to_cpu16(i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 (i8*, i8*, ...) @grub_dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %13, align 4
  %99 = icmp sgt i32 %98, 1
  br i1 %99, label %100, label %169

100:                                              ; preds = %90
  %101 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %9, align 8
  %102 = getelementptr inbounds %struct.grub_reiserfs_block_header, %struct.grub_reiserfs_block_header* %101, i64 1
  %103 = bitcast %struct.grub_reiserfs_block_header* %102 to %struct.grub_reiserfs_key*
  store %struct.grub_reiserfs_key* %103, %struct.grub_reiserfs_key** %17, align 8
  %104 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %17, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %104, i64 %106
  %108 = bitcast %struct.grub_reiserfs_key* %107 to %struct.grub_reiserfs_disk_child*
  store %struct.grub_reiserfs_disk_child* %108, %struct.grub_reiserfs_disk_child** %18, align 8
  store i32 0, i32* %14, align 4
  br label %109

109:                                              ; preds = %124, %100
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %6, align 8
  %115 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %17, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %115, i64 %117
  %119 = call i64 @grub_reiserfs_compare_keys(%struct.grub_reiserfs_key* %114, %struct.grub_reiserfs_key* %118)
  %120 = icmp sge i64 %119, 0
  br label %121

121:                                              ; preds = %113, %109
  %122 = phi i1 [ false, %109 ], [ %120, %113 ]
  br i1 %122, label %123, label %127

123:                                              ; preds = %121
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %14, align 4
  br label %109

127:                                              ; preds = %121
  %128 = load %struct.grub_reiserfs_disk_child*, %struct.grub_reiserfs_disk_child** %18, align 8
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.grub_reiserfs_disk_child, %struct.grub_reiserfs_disk_child* %128, i64 %130
  %132 = getelementptr inbounds %struct.grub_reiserfs_disk_child, %struct.grub_reiserfs_disk_child* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @grub_le_to_cpu32(i32 %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %168

138:                                              ; preds = %127
  %139 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %6, align 8
  %140 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %17, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %142, i64 %144
  %146 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %141, %147
  br i1 %148, label %149, label %168

149:                                              ; preds = %138
  %150 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %6, align 8
  %151 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %17, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %153, i64 %155
  %157 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %152, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %149
  %161 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %17, align 8
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.grub_reiserfs_key, %struct.grub_reiserfs_key* %161, i64 %163
  %165 = call i64 @grub_reiserfs_get_key_offset(%struct.grub_reiserfs_key* %164)
  %166 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %7, align 8
  %167 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %166, i32 0, i32 5
  store i64 %165, i64* %167, align 8
  br label %168

168:                                              ; preds = %160, %149, %138, %127
  br label %203

169:                                              ; preds = %90
  %170 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %9, align 8
  %171 = getelementptr inbounds %struct.grub_reiserfs_block_header, %struct.grub_reiserfs_block_header* %170, i64 1
  %172 = bitcast %struct.grub_reiserfs_block_header* %171 to %struct.grub_reiserfs_item_header*
  store %struct.grub_reiserfs_item_header* %172, %struct.grub_reiserfs_item_header** %16, align 8
  store i32 0, i32* %14, align 4
  br label %173

173:                                              ; preds = %189, %169
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %12, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %173
  %178 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %6, align 8
  %179 = load %struct.grub_reiserfs_item_header*, %struct.grub_reiserfs_item_header** %16, align 8
  %180 = load i32, i32* %14, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.grub_reiserfs_item_header, %struct.grub_reiserfs_item_header* %179, i64 %181
  %183 = getelementptr inbounds %struct.grub_reiserfs_item_header, %struct.grub_reiserfs_item_header* %182, i32 0, i32 0
  %184 = call i64 @grub_reiserfs_compare_keys(%struct.grub_reiserfs_key* %178, %struct.grub_reiserfs_key* %183)
  %185 = icmp ne i64 %184, 0
  br label %186

186:                                              ; preds = %177, %173
  %187 = phi i1 [ false, %173 ], [ %185, %177 ]
  br i1 %187, label %188, label %192

188:                                              ; preds = %186
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %14, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %14, align 4
  br label %173

192:                                              ; preds = %186
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* %12, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %202

196:                                              ; preds = %192
  %197 = load %struct.grub_reiserfs_item_header*, %struct.grub_reiserfs_item_header** %16, align 8
  %198 = load i32, i32* %14, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.grub_reiserfs_item_header, %struct.grub_reiserfs_item_header* %197, i64 %199
  %201 = getelementptr inbounds %struct.grub_reiserfs_item_header, %struct.grub_reiserfs_item_header* %200, i32 0, i32 0
  store %struct.grub_reiserfs_key* %201, %struct.grub_reiserfs_key** %10, align 8
  br label %202

202:                                              ; preds = %196, %192
  br label %203

203:                                              ; preds = %202, %168
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %13, align 4
  %206 = icmp sgt i32 %205, 1
  br i1 %206, label %55, label %207

207:                                              ; preds = %204
  %208 = load %struct.grub_reiserfs_data*, %struct.grub_reiserfs_data** %5, align 8
  %209 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %7, align 8
  %210 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %209, i32 0, i32 4
  store %struct.grub_reiserfs_data* %208, %struct.grub_reiserfs_data** %210, align 8
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* %12, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %219, label %214

214:                                              ; preds = %207
  %215 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %6, align 8
  %216 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %10, align 8
  %217 = call i64 @grub_reiserfs_compare_keys(%struct.grub_reiserfs_key* %215, %struct.grub_reiserfs_key* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %214, %207
  %220 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %7, align 8
  %221 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %220, i32 0, i32 0
  store i32 0, i32* %221, align 8
  %222 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %7, align 8
  %223 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %222, i32 0, i32 1
  store i32 0, i32* %223, align 4
  %224 = load i32, i32* @GRUB_REISERFS_UNKNOWN, align 4
  %225 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %7, align 8
  %226 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %225, i32 0, i32 3
  store i32 %224, i32* %226, align 4
  br label %245

227:                                              ; preds = %214
  %228 = load i32, i32* %8, align 4
  %229 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %7, align 8
  %230 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 8
  %231 = load i32, i32* %14, align 4
  %232 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %7, align 8
  %233 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %232, i32 0, i32 1
  store i32 %231, i32* %233, align 4
  %234 = load %struct.grub_reiserfs_key*, %struct.grub_reiserfs_key** %10, align 8
  %235 = call i32 @grub_reiserfs_get_key_type(%struct.grub_reiserfs_key* %234)
  %236 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %7, align 8
  %237 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %236, i32 0, i32 3
  store i32 %235, i32* %237, align 4
  %238 = load %struct.grub_fshelp_node*, %struct.grub_fshelp_node** %7, align 8
  %239 = getelementptr inbounds %struct.grub_fshelp_node, %struct.grub_fshelp_node* %238, i32 0, i32 2
  %240 = load %struct.grub_reiserfs_item_header*, %struct.grub_reiserfs_item_header** %16, align 8
  %241 = load i32, i32* %14, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.grub_reiserfs_item_header, %struct.grub_reiserfs_item_header* %240, i64 %242
  %244 = call i32 @grub_memcpy(i32* %239, %struct.grub_reiserfs_item_header* %243, i32 16)
  br label %245

245:                                              ; preds = %227, %219
  %246 = load i64, i64* @grub_errno, align 8
  %247 = load i64, i64* @GRUB_ERR_NONE, align 8
  %248 = icmp eq i64 %246, %247
  %249 = zext i1 %248 to i32
  %250 = call i32 @assert(i32 %249)
  %251 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %9, align 8
  %252 = call i32 @grub_free(%struct.grub_reiserfs_block_header* %251)
  %253 = load i64, i64* @GRUB_ERR_NONE, align 8
  store i64 %253, i64* %4, align 8
  br label %268

254:                                              ; preds = %86, %75, %51, %33, %27, %21
  %255 = load i64, i64* @grub_errno, align 8
  %256 = load i64, i64* @GRUB_ERR_NONE, align 8
  %257 = icmp ne i64 %255, %256
  %258 = zext i1 %257 to i32
  %259 = call i32 @assert(i32 %258)
  %260 = load %struct.grub_reiserfs_block_header*, %struct.grub_reiserfs_block_header** %9, align 8
  %261 = call i32 @grub_free(%struct.grub_reiserfs_block_header* %260)
  %262 = load i64, i64* @grub_errno, align 8
  %263 = load i64, i64* @GRUB_ERR_NONE, align 8
  %264 = icmp ne i64 %262, %263
  %265 = zext i1 %264 to i32
  %266 = call i32 @assert(i32 %265)
  %267 = load i64, i64* @grub_errno, align 8
  store i64 %267, i64* %4, align 8
  br label %268

268:                                              ; preds = %254, %245
  %269 = load i64, i64* %4, align 8
  ret i64 %269
}

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i32 @grub_le_to_cpu16(i32) #1

declare dso_local i32 @grub_le_to_cpu32(i32) #1

declare dso_local %struct.grub_reiserfs_block_header* @grub_malloc(i32) #1

declare dso_local i32 @grub_disk_read(i32, i32, i32, i32, %struct.grub_reiserfs_block_header*) #1

declare dso_local i32 @grub_dprintf(i8*, i8*, ...) #1

declare dso_local i64 @grub_reiserfs_compare_keys(%struct.grub_reiserfs_key*, %struct.grub_reiserfs_key*) #1

declare dso_local i64 @grub_reiserfs_get_key_offset(%struct.grub_reiserfs_key*) #1

declare dso_local i32 @grub_reiserfs_get_key_type(%struct.grub_reiserfs_key*) #1

declare dso_local i32 @grub_memcpy(i32*, %struct.grub_reiserfs_item_header*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @grub_free(%struct.grub_reiserfs_block_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
