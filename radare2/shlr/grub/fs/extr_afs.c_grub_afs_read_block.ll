; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_afs.c_grub_afs_read_block.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_afs.c_grub_afs_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct.grub_afs_sblock }
%struct.grub_afs_sblock = type { i32 }
%struct.TYPE_5__ = type { %struct.grub_afs_datastream }
%struct.grub_afs_datastream = type { %struct.grub_afs_blockrun, i32, %struct.grub_afs_blockrun, i32, %struct.grub_afs_blockrun* }
%struct.grub_afs_blockrun = type { i32 }

@GRUB_AFS_DIRECT_BLOCK_COUNT = common dso_local global i32 0, align 4
@GRUB_DISK_SECTOR_BITS = common dso_local global i32 0, align 4
@GRUB_AFS_BLOCKS_PER_DI_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i64)* @grub_afs_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @grub_afs_read_block(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.grub_afs_sblock*, align 8
  %7 = alloca %struct.grub_afs_datastream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store %struct.grub_afs_sblock* %32, %struct.grub_afs_sblock** %6, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store %struct.grub_afs_datastream* %35, %struct.grub_afs_datastream** %7, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.grub_afs_datastream*, %struct.grub_afs_datastream** %7, align 8
  %38 = getelementptr inbounds %struct.grub_afs_datastream, %struct.grub_afs_datastream* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @grub_afs_to_cpu64(i32 %39)
  %41 = icmp slt i64 %36, %40
  br i1 %41, label %42, label %87

42:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %83, %42
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @GRUB_AFS_DIRECT_BLOCK_COUNT, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %86

47:                                               ; preds = %43
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.grub_afs_datastream*, %struct.grub_afs_datastream** %7, align 8
  %50 = getelementptr inbounds %struct.grub_afs_datastream, %struct.grub_afs_datastream* %49, i32 0, i32 4
  %51 = load %struct.grub_afs_blockrun*, %struct.grub_afs_blockrun** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.grub_afs_blockrun, %struct.grub_afs_blockrun* %51, i64 %53
  %55 = getelementptr inbounds %struct.grub_afs_blockrun, %struct.grub_afs_blockrun* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @grub_afs_to_cpu16(i32 %56)
  %58 = icmp slt i64 %48, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %47
  %60 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %6, align 8
  %61 = load %struct.grub_afs_datastream*, %struct.grub_afs_datastream** %7, align 8
  %62 = getelementptr inbounds %struct.grub_afs_datastream, %struct.grub_afs_datastream* %61, i32 0, i32 4
  %63 = load %struct.grub_afs_blockrun*, %struct.grub_afs_blockrun** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.grub_afs_blockrun, %struct.grub_afs_blockrun* %63, i64 %65
  %67 = call i32 @grub_afs_run_to_num(%struct.grub_afs_sblock* %60, %struct.grub_afs_blockrun* %66)
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %5, align 8
  %70 = add nsw i64 %68, %69
  store i64 %70, i64* %3, align 8
  br label %294

71:                                               ; preds = %47
  %72 = load %struct.grub_afs_datastream*, %struct.grub_afs_datastream** %7, align 8
  %73 = getelementptr inbounds %struct.grub_afs_datastream, %struct.grub_afs_datastream* %72, i32 0, i32 4
  %74 = load %struct.grub_afs_blockrun*, %struct.grub_afs_blockrun** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.grub_afs_blockrun, %struct.grub_afs_blockrun* %74, i64 %76
  %78 = getelementptr inbounds %struct.grub_afs_blockrun, %struct.grub_afs_blockrun* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @grub_afs_to_cpu16(i32 %79)
  %81 = load i64, i64* %5, align 8
  %82 = sub nsw i64 %81, %80
  store i64 %82, i64* %5, align 8
  br label %83

83:                                               ; preds = %71
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %43

86:                                               ; preds = %43
  br label %293

87:                                               ; preds = %2
  %88 = load i64, i64* %5, align 8
  %89 = load %struct.grub_afs_datastream*, %struct.grub_afs_datastream** %7, align 8
  %90 = getelementptr inbounds %struct.grub_afs_datastream, %struct.grub_afs_datastream* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @grub_afs_to_cpu64(i32 %91)
  %93 = icmp slt i64 %88, %92
  br i1 %93, label %94, label %186

94:                                               ; preds = %87
  %95 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %6, align 8
  %96 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = udiv i64 %98, 4
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = zext i32 %101 to i64
  %103 = call i8* @llvm.stacksave()
  store i8* %103, i8** %10, align 8
  %104 = alloca %struct.grub_afs_blockrun, i64 %102, align 16
  store i64 %102, i64* %11, align 8
  %105 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %6, align 8
  %106 = load %struct.grub_afs_datastream*, %struct.grub_afs_datastream** %7, align 8
  %107 = getelementptr inbounds %struct.grub_afs_datastream, %struct.grub_afs_datastream* %106, i32 0, i32 2
  %108 = call i32 @grub_afs_run_to_num(%struct.grub_afs_sblock* %105, %struct.grub_afs_blockrun* %107)
  store i32 %108, i32* %12, align 4
  %109 = load %struct.grub_afs_datastream*, %struct.grub_afs_datastream** %7, align 8
  %110 = getelementptr inbounds %struct.grub_afs_datastream, %struct.grub_afs_datastream* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @grub_afs_to_cpu64(i32 %111)
  %113 = load i64, i64* %5, align 8
  %114 = sub nsw i64 %113, %112
  store i64 %114, i64* %5, align 8
  store i32 0, i32* %13, align 4
  br label %115

115:                                              ; preds = %176, %94
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.grub_afs_datastream*, %struct.grub_afs_datastream** %7, align 8
  %118 = getelementptr inbounds %struct.grub_afs_datastream, %struct.grub_afs_datastream* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.grub_afs_blockrun, %struct.grub_afs_blockrun* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %116, %120
  br i1 %121, label %122, label %181

122:                                              ; preds = %115
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %6, align 8
  %130 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @GRUB_DISK_SECTOR_BITS, align 4
  %133 = ashr i32 %131, %132
  %134 = mul nsw i32 %128, %133
  %135 = mul nuw i64 4, %102
  %136 = trunc i64 %135 to i32
  %137 = call i64 @grub_disk_read(i32 %127, i32 %134, i32 0, i32 %136, %struct.grub_afs_blockrun* %104)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %122
  store i64 0, i64* %3, align 8
  store i32 1, i32* %15, align 4
  br label %182

140:                                              ; preds = %122
  store i32 0, i32* %14, align 4
  br label %141

141:                                              ; preds = %172, %140
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %175

145:                                              ; preds = %141
  %146 = load i64, i64* %5, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.grub_afs_blockrun, %struct.grub_afs_blockrun* %104, i64 %148
  %150 = getelementptr inbounds %struct.grub_afs_blockrun, %struct.grub_afs_blockrun* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @grub_afs_to_cpu16(i32 %151)
  %153 = icmp slt i64 %146, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %145
  %155 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %6, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.grub_afs_blockrun, %struct.grub_afs_blockrun* %104, i64 %157
  %159 = call i32 @grub_afs_run_to_num(%struct.grub_afs_sblock* %155, %struct.grub_afs_blockrun* %158)
  %160 = sext i32 %159 to i64
  %161 = load i64, i64* %5, align 8
  %162 = add nsw i64 %160, %161
  store i64 %162, i64* %3, align 8
  store i32 1, i32* %15, align 4
  br label %182

163:                                              ; preds = %145
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.grub_afs_blockrun, %struct.grub_afs_blockrun* %104, i64 %165
  %167 = getelementptr inbounds %struct.grub_afs_blockrun, %struct.grub_afs_blockrun* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @grub_afs_to_cpu16(i32 %168)
  %170 = load i64, i64* %5, align 8
  %171 = sub nsw i64 %170, %169
  store i64 %171, i64* %5, align 8
  br label %172

172:                                              ; preds = %163
  %173 = load i32, i32* %14, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %14, align 4
  br label %141

175:                                              ; preds = %141
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %13, align 4
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %12, align 4
  br label %115

181:                                              ; preds = %115
  store i32 0, i32* %15, align 4
  br label %182

182:                                              ; preds = %181, %154, %139
  %183 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %183)
  %184 = load i32, i32* %15, align 4
  switch i32 %184, label %296 [
    i32 0, label %185
    i32 1, label %294
  ]

185:                                              ; preds = %182
  br label %292

186:                                              ; preds = %87
  %187 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %6, align 8
  %188 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = udiv i64 %190, 4
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %16, align 4
  %193 = load i32, i32* %16, align 4
  %194 = zext i32 %193 to i64
  %195 = call i8* @llvm.stacksave()
  store i8* %195, i8** %17, align 8
  %196 = alloca %struct.grub_afs_blockrun, i64 %194, align 16
  store i64 %194, i64* %18, align 8
  %197 = load i64, i64* %5, align 8
  %198 = load %struct.grub_afs_datastream*, %struct.grub_afs_datastream** %7, align 8
  %199 = getelementptr inbounds %struct.grub_afs_datastream, %struct.grub_afs_datastream* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @grub_afs_to_cpu64(i32 %200)
  %202 = sub nsw i64 %197, %201
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %19, align 4
  %204 = load i32, i32* @GRUB_AFS_BLOCKS_PER_DI_RUN, align 4
  store i32 %204, i32* %20, align 4
  %205 = load i32, i32* %20, align 4
  %206 = load i32, i32* %16, align 4
  %207 = mul nsw i32 %205, %206
  store i32 %207, i32* %21, align 4
  %208 = load i32, i32* %21, align 4
  %209 = load i32, i32* @GRUB_AFS_BLOCKS_PER_DI_RUN, align 4
  %210 = mul nsw i32 %208, %209
  store i32 %210, i32* %22, align 4
  %211 = load i32, i32* %22, align 4
  %212 = load i32, i32* %16, align 4
  %213 = mul nsw i32 %211, %212
  store i32 %213, i32* %23, align 4
  %214 = load i32, i32* %19, align 4
  %215 = load i32, i32* @GRUB_AFS_BLOCKS_PER_DI_RUN, align 4
  %216 = srem i32 %214, %215
  store i32 %216, i32* %24, align 4
  %217 = load i32, i32* %19, align 4
  %218 = load i32, i32* %20, align 4
  %219 = sdiv i32 %217, %218
  %220 = load i32, i32* %16, align 4
  %221 = srem i32 %219, %220
  store i32 %221, i32* %25, align 4
  %222 = load i32, i32* %19, align 4
  %223 = load i32, i32* %21, align 4
  %224 = sdiv i32 %222, %223
  %225 = load i32, i32* @GRUB_AFS_BLOCKS_PER_DI_RUN, align 4
  %226 = srem i32 %224, %225
  store i32 %226, i32* %26, align 4
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* %22, align 4
  %229 = sdiv i32 %227, %228
  %230 = load i32, i32* %16, align 4
  %231 = srem i32 %229, %230
  store i32 %231, i32* %27, align 4
  %232 = load i32, i32* %19, align 4
  %233 = load i32, i32* %23, align 4
  %234 = sdiv i32 %232, %233
  store i32 %234, i32* %28, align 4
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %6, align 8
  %241 = load %struct.grub_afs_datastream*, %struct.grub_afs_datastream** %7, align 8
  %242 = getelementptr inbounds %struct.grub_afs_datastream, %struct.grub_afs_datastream* %241, i32 0, i32 0
  %243 = call i32 @grub_afs_run_to_num(%struct.grub_afs_sblock* %240, %struct.grub_afs_blockrun* %242)
  %244 = load i32, i32* %28, align 4
  %245 = add nsw i32 %243, %244
  %246 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %6, align 8
  %247 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @GRUB_DISK_SECTOR_BITS, align 4
  %250 = ashr i32 %248, %249
  %251 = mul nsw i32 %245, %250
  %252 = mul nuw i64 4, %194
  %253 = trunc i64 %252 to i32
  %254 = call i64 @grub_disk_read(i32 %239, i32 %251, i32 0, i32 %253, %struct.grub_afs_blockrun* %196)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %186
  store i64 0, i64* %3, align 8
  store i32 1, i32* %15, align 4
  br label %290

257:                                              ; preds = %186
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %6, align 8
  %264 = load i32, i32* %27, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.grub_afs_blockrun, %struct.grub_afs_blockrun* %196, i64 %265
  %267 = call i32 @grub_afs_run_to_num(%struct.grub_afs_sblock* %263, %struct.grub_afs_blockrun* %266)
  %268 = load i32, i32* %26, align 4
  %269 = add nsw i32 %267, %268
  %270 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %6, align 8
  %271 = getelementptr inbounds %struct.grub_afs_sblock, %struct.grub_afs_sblock* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @GRUB_DISK_SECTOR_BITS, align 4
  %274 = ashr i32 %272, %273
  %275 = mul nsw i32 %269, %274
  %276 = mul nuw i64 4, %194
  %277 = trunc i64 %276 to i32
  %278 = call i64 @grub_disk_read(i32 %262, i32 %275, i32 0, i32 %277, %struct.grub_afs_blockrun* %196)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %257
  store i64 0, i64* %3, align 8
  store i32 1, i32* %15, align 4
  br label %290

281:                                              ; preds = %257
  %282 = load %struct.grub_afs_sblock*, %struct.grub_afs_sblock** %6, align 8
  %283 = load i32, i32* %25, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.grub_afs_blockrun, %struct.grub_afs_blockrun* %196, i64 %284
  %286 = call i32 @grub_afs_run_to_num(%struct.grub_afs_sblock* %282, %struct.grub_afs_blockrun* %285)
  %287 = load i32, i32* %24, align 4
  %288 = add nsw i32 %286, %287
  %289 = sext i32 %288 to i64
  store i64 %289, i64* %3, align 8
  store i32 1, i32* %15, align 4
  br label %290

290:                                              ; preds = %281, %280, %256
  %291 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %291)
  br label %294

292:                                              ; preds = %185
  br label %293

293:                                              ; preds = %292, %86
  store i64 0, i64* %3, align 8
  br label %294

294:                                              ; preds = %293, %290, %182, %59
  %295 = load i64, i64* %3, align 8
  ret i64 %295

296:                                              ; preds = %182
  unreachable
}

declare dso_local i64 @grub_afs_to_cpu64(i32) #1

declare dso_local i64 @grub_afs_to_cpu16(i32) #1

declare dso_local i32 @grub_afs_run_to_num(%struct.grub_afs_sblock*, %struct.grub_afs_blockrun*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @grub_disk_read(i32, i32, i32, i32, %struct.grub_afs_blockrun*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
