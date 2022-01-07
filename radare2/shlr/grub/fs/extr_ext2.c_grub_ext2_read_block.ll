; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ext2.c_grub_ext2_read_block.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ext2.c_grub_ext2_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.grub_ext2_inode, %struct.grub_ext2_data* }
%struct.grub_ext2_inode = type { i8, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8, i8 }
%struct.grub_ext2_data = type { i32 }
%struct.grub_ext4_extent_header = type { i32 }
%struct.grub_ext4_extent = type { i8, i8, i32, i32 }

@EXT4_EXTENTS_FLAG = common dso_local global i32 0, align 4
@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"invalid extent\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"something wrong with extent\00", align 1
@INDIRECT_BLOCKS = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i32 0, align 4
@GRUB_ERR_NOT_IMPLEMENTED_YET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"ext2fs doesn't support triple indirect blocks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @grub_ext2_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_ext2_read_block(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.grub_ext2_data*, align 8
  %7 = alloca %struct.grub_ext2_inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.grub_ext4_extent_header*, align 8
  %13 = alloca %struct.grub_ext4_extent*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %21, align 8
  store %struct.grub_ext2_data* %22, %struct.grub_ext2_data** %6, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store %struct.grub_ext2_inode* %24, %struct.grub_ext2_inode** %7, align 8
  store i32 -1, i32* %8, align 4
  %25 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %6, align 8
  %26 = call i32 @EXT2_BLOCK_SIZE(%struct.grub_ext2_data* %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %6, align 8
  %28 = call i32 @LOG2_EXT2_BLOCK_SIZE(%struct.grub_ext2_data* %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.grub_ext2_inode*, %struct.grub_ext2_inode** %7, align 8
  %30 = getelementptr inbounds %struct.grub_ext2_inode, %struct.grub_ext2_inode* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 8
  %32 = call i32 @grub_le_to_cpu32(i8 signext %31)
  %33 = load i32, i32* @EXT4_EXTENTS_FLAG, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %140

36:                                               ; preds = %2
  %37 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %6, align 8
  %38 = call i32 @EXT2_BLOCK_SIZE(%struct.grub_ext2_data* %37)
  %39 = call i8* @grub_malloc(i32 %38)
  store i8* %39, i8** %11, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %277

43:                                               ; preds = %36
  %44 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %6, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load %struct.grub_ext2_inode*, %struct.grub_ext2_inode** %7, align 8
  %47 = getelementptr inbounds %struct.grub_ext2_inode, %struct.grub_ext2_inode* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = bitcast i8* %49 to %struct.grub_ext4_extent_header*
  %51 = load i32, i32* %5, align 4
  %52 = call %struct.grub_ext4_extent_header* @grub_ext4_find_leaf(%struct.grub_ext2_data* %44, i8* %45, %struct.grub_ext4_extent_header* %50, i32 %51)
  store %struct.grub_ext4_extent_header* %52, %struct.grub_ext4_extent_header** %12, align 8
  %53 = load %struct.grub_ext4_extent_header*, %struct.grub_ext4_extent_header** %12, align 8
  %54 = icmp ne %struct.grub_ext4_extent_header* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %43
  %56 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %57 = call i32 @grub_error(i32 %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @grub_free(i8* %58)
  store i32 -1, i32* %3, align 4
  br label %277

60:                                               ; preds = %43
  %61 = load %struct.grub_ext4_extent_header*, %struct.grub_ext4_extent_header** %12, align 8
  %62 = getelementptr inbounds %struct.grub_ext4_extent_header, %struct.grub_ext4_extent_header* %61, i64 1
  %63 = bitcast %struct.grub_ext4_extent_header* %62 to %struct.grub_ext4_extent*
  store %struct.grub_ext4_extent* %63, %struct.grub_ext4_extent** %13, align 8
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %83, %60
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.grub_ext4_extent_header*, %struct.grub_ext4_extent_header** %12, align 8
  %67 = getelementptr inbounds %struct.grub_ext4_extent_header, %struct.grub_ext4_extent_header* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @grub_le_to_cpu16(i32 %68)
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %64
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.grub_ext4_extent*, %struct.grub_ext4_extent** %13, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.grub_ext4_extent, %struct.grub_ext4_extent* %73, i64 %75
  %77 = getelementptr inbounds %struct.grub_ext4_extent, %struct.grub_ext4_extent* %76, i32 0, i32 0
  %78 = load i8, i8* %77, align 4
  %79 = call i32 @grub_le_to_cpu32(i8 signext %78)
  %80 = icmp slt i32 %72, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %86

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %64

86:                                               ; preds = %81, %64
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %14, align 4
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %135

90:                                               ; preds = %86
  %91 = load %struct.grub_ext4_extent*, %struct.grub_ext4_extent** %13, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.grub_ext4_extent, %struct.grub_ext4_extent* %91, i64 %93
  %95 = getelementptr inbounds %struct.grub_ext4_extent, %struct.grub_ext4_extent* %94, i32 0, i32 0
  %96 = load i8, i8* %95, align 4
  %97 = call i32 @grub_le_to_cpu32(i8 signext %96)
  %98 = load i32, i32* %5, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.grub_ext4_extent*, %struct.grub_ext4_extent** %13, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.grub_ext4_extent, %struct.grub_ext4_extent* %101, i64 %103
  %105 = getelementptr inbounds %struct.grub_ext4_extent, %struct.grub_ext4_extent* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @grub_le_to_cpu16(i32 %106)
  %108 = icmp sge i32 %100, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %90
  %110 = load i8*, i8** %11, align 8
  %111 = call i32 @grub_free(i8* %110)
  store i32 0, i32* %3, align 4
  br label %277

112:                                              ; preds = %90
  %113 = load %struct.grub_ext4_extent*, %struct.grub_ext4_extent** %13, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.grub_ext4_extent, %struct.grub_ext4_extent* %113, i64 %115
  %117 = getelementptr inbounds %struct.grub_ext4_extent, %struct.grub_ext4_extent* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @grub_le_to_cpu16(i32 %118)
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %15, align 4
  %121 = shl i32 %120, 32
  %122 = load %struct.grub_ext4_extent*, %struct.grub_ext4_extent** %13, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.grub_ext4_extent, %struct.grub_ext4_extent* %122, i64 %124
  %126 = getelementptr inbounds %struct.grub_ext4_extent, %struct.grub_ext4_extent* %125, i32 0, i32 1
  %127 = load i8, i8* %126, align 1
  %128 = call i32 @grub_le_to_cpu32(i8 signext %127)
  %129 = add nsw i32 %121, %128
  store i32 %129, i32* %15, align 4
  %130 = load i8*, i8** %11, align 8
  %131 = call i32 @grub_free(i8* %130)
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %132, %133
  store i32 %134, i32* %3, align 4
  br label %277

135:                                              ; preds = %86
  %136 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %137 = call i32 @grub_error(i32 %136, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %138 = load i8*, i8** %11, align 8
  %139 = call i32 @grub_free(i8* %138)
  store i32 -1, i32* %3, align 4
  br label %277

140:                                              ; preds = %2
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @INDIRECT_BLOCKS, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %140
  %145 = load %struct.grub_ext2_inode*, %struct.grub_ext2_inode** %7, align 8
  %146 = getelementptr inbounds %struct.grub_ext2_inode, %struct.grub_ext2_inode* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = call i32 @grub_le_to_cpu32(i8 signext %152)
  store i32 %153, i32* %8, align 4
  br label %275

154:                                              ; preds = %140
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* @INDIRECT_BLOCKS, align 4
  %157 = load i32, i32* %9, align 4
  %158 = udiv i32 %157, 4
  %159 = add i32 %156, %158
  %160 = icmp ult i32 %155, %159
  br i1 %160, label %161, label %196

161:                                              ; preds = %154
  %162 = load i32, i32* %9, align 4
  %163 = call i8* @grub_malloc(i32 %162)
  store i8* %163, i8** %16, align 8
  %164 = load i8*, i8** %16, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %161
  %167 = load i32, i32* @grub_errno, align 4
  store i32 %167, i32* %3, align 4
  br label %277

168:                                              ; preds = %161
  %169 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %6, align 8
  %170 = getelementptr inbounds %struct.grub_ext2_data, %struct.grub_ext2_data* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.grub_ext2_inode*, %struct.grub_ext2_inode** %7, align 8
  %173 = getelementptr inbounds %struct.grub_ext2_inode, %struct.grub_ext2_inode* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i8, i8* %174, align 8
  %176 = call i32 @grub_le_to_cpu32(i8 signext %175)
  %177 = load i32, i32* %10, align 4
  %178 = shl i32 %176, %177
  %179 = load i32, i32* %9, align 4
  %180 = load i8*, i8** %16, align 8
  %181 = call i64 @grub_disk_read(i32 %171, i32 %178, i32 0, i32 %179, i8* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %168
  %184 = load i32, i32* @grub_errno, align 4
  store i32 %184, i32* %3, align 4
  br label %277

185:                                              ; preds = %168
  %186 = load i8*, i8** %16, align 8
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* @INDIRECT_BLOCKS, align 4
  %189 = sub nsw i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %186, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = call i32 @grub_le_to_cpu32(i8 signext %192)
  store i32 %193, i32* %8, align 4
  %194 = load i8*, i8** %16, align 8
  %195 = call i32 @grub_free(i8* %194)
  br label %274

196:                                              ; preds = %154
  %197 = load i32, i32* %5, align 4
  %198 = load i32, i32* @INDIRECT_BLOCKS, align 4
  %199 = load i32, i32* %9, align 4
  %200 = udiv i32 %199, 4
  %201 = add i32 %198, %200
  %202 = load i32, i32* %9, align 4
  %203 = udiv i32 %202, 4
  %204 = add i32 %203, 1
  %205 = mul nsw i32 %201, %204
  %206 = icmp slt i32 %197, %205
  br i1 %206, label %207, label %270

207:                                              ; preds = %196
  %208 = load i32, i32* %9, align 4
  %209 = udiv i32 %208, 4
  store i32 %209, i32* %17, align 4
  %210 = load i32, i32* %5, align 4
  %211 = load i32, i32* @INDIRECT_BLOCKS, align 4
  %212 = load i32, i32* %9, align 4
  %213 = udiv i32 %212, 4
  %214 = add i32 %211, %213
  %215 = sub i32 %210, %214
  store i32 %215, i32* %18, align 4
  %216 = load i32, i32* %9, align 4
  %217 = call i8* @grub_malloc(i32 %216)
  store i8* %217, i8** %19, align 8
  %218 = load i8*, i8** %19, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %222, label %220

220:                                              ; preds = %207
  %221 = load i32, i32* @grub_errno, align 4
  store i32 %221, i32* %3, align 4
  br label %277

222:                                              ; preds = %207
  %223 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %6, align 8
  %224 = getelementptr inbounds %struct.grub_ext2_data, %struct.grub_ext2_data* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.grub_ext2_inode*, %struct.grub_ext2_inode** %7, align 8
  %227 = getelementptr inbounds %struct.grub_ext2_inode, %struct.grub_ext2_inode* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 2
  %229 = load i8, i8* %228, align 1
  %230 = call i32 @grub_le_to_cpu32(i8 signext %229)
  %231 = load i32, i32* %10, align 4
  %232 = shl i32 %230, %231
  %233 = load i32, i32* %9, align 4
  %234 = load i8*, i8** %19, align 8
  %235 = call i64 @grub_disk_read(i32 %225, i32 %232, i32 0, i32 %233, i8* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %222
  %238 = load i32, i32* @grub_errno, align 4
  store i32 %238, i32* %3, align 4
  br label %277

239:                                              ; preds = %222
  %240 = load %struct.grub_ext2_data*, %struct.grub_ext2_data** %6, align 8
  %241 = getelementptr inbounds %struct.grub_ext2_data, %struct.grub_ext2_data* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i8*, i8** %19, align 8
  %244 = load i32, i32* %18, align 4
  %245 = load i32, i32* %17, align 4
  %246 = udiv i32 %244, %245
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %243, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = call i32 @grub_le_to_cpu32(i8 signext %249)
  %251 = load i32, i32* %10, align 4
  %252 = shl i32 %250, %251
  %253 = load i32, i32* %9, align 4
  %254 = load i8*, i8** %19, align 8
  %255 = call i64 @grub_disk_read(i32 %242, i32 %252, i32 0, i32 %253, i8* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %239
  %258 = load i32, i32* @grub_errno, align 4
  store i32 %258, i32* %3, align 4
  br label %277

259:                                              ; preds = %239
  %260 = load i8*, i8** %19, align 8
  %261 = load i32, i32* %18, align 4
  %262 = load i32, i32* %17, align 4
  %263 = urem i32 %261, %262
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds i8, i8* %260, i64 %264
  %266 = load i8, i8* %265, align 1
  %267 = call i32 @grub_le_to_cpu32(i8 signext %266)
  store i32 %267, i32* %8, align 4
  %268 = load i8*, i8** %19, align 8
  %269 = call i32 @grub_free(i8* %268)
  br label %273

270:                                              ; preds = %196
  %271 = load i32, i32* @GRUB_ERR_NOT_IMPLEMENTED_YET, align 4
  %272 = call i32 @grub_error(i32 %271, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %273

273:                                              ; preds = %270, %259
  br label %274

274:                                              ; preds = %273, %185
  br label %275

275:                                              ; preds = %274, %144
  %276 = load i32, i32* %8, align 4
  store i32 %276, i32* %3, align 4
  br label %277

277:                                              ; preds = %275, %257, %237, %220, %183, %166, %135, %112, %109, %55, %42
  %278 = load i32, i32* %3, align 4
  ret i32 %278
}

declare dso_local i32 @EXT2_BLOCK_SIZE(%struct.grub_ext2_data*) #1

declare dso_local i32 @LOG2_EXT2_BLOCK_SIZE(%struct.grub_ext2_data*) #1

declare dso_local i32 @grub_le_to_cpu32(i8 signext) #1

declare dso_local i8* @grub_malloc(i32) #1

declare dso_local %struct.grub_ext4_extent_header* @grub_ext4_find_leaf(%struct.grub_ext2_data*, i8*, %struct.grub_ext4_extent_header*, i32) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i32 @grub_free(i8*) #1

declare dso_local i32 @grub_le_to_cpu16(i32) #1

declare dso_local i64 @grub_disk_read(i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
