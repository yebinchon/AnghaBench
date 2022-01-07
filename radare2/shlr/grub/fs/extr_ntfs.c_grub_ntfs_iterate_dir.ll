; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ntfs.c_grub_ntfs_iterate_dir.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ntfs.c_grub_ntfs_iterate_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_ntfs_attr = type { i32 }
%struct.grub_ntfs_file = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@AT_INDEX_ROOT = common dso_local global i32 0, align 4
@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"no $INDEX_ROOT\00", align 1
@AT_BITMAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"fails to read non-resident $BITMAP\00", align 1
@AT_INDEX_ALLOCATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"$BITMAP without $INDEX_ALLOCATION\00", align 1
@BLK_SHR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"INDX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, {}*, i8*)* @grub_ntfs_iterate_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_ntfs_iterate_dir(i64 %0, {}* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca {}*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.grub_ntfs_attr, align 4
  %10 = alloca %struct.grub_ntfs_attr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.grub_ntfs_file*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store {}* %1, {}** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %14, align 4
  %21 = load i64, i64* %5, align 8
  %22 = inttoptr i64 %21 to %struct.grub_ntfs_file*
  store %struct.grub_ntfs_file* %22, %struct.grub_ntfs_file** %16, align 8
  %23 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %16, align 8
  %24 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %3
  %28 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %16, align 8
  %29 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %16, align 8
  %30 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @init_file(%struct.grub_ntfs_file* %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %307

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %3
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store %struct.grub_ntfs_attr* %9, %struct.grub_ntfs_attr** %10, align 8
  %37 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %10, align 8
  %38 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %16, align 8
  %39 = call i32 @init_attr(%struct.grub_ntfs_attr* %37, %struct.grub_ntfs_file* %38)
  br label %40

40:                                               ; preds = %36, %60, %71
  %41 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %10, align 8
  %42 = load i32, i32* @AT_INDEX_ROOT, align 4
  %43 = call i8* @find_attr(%struct.grub_ntfs_attr* %41, i32 %42)
  store i8* %43, i8** %11, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %47 = call i32 @grub_error(i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %299

48:                                               ; preds = %40
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @u32at(i8* %49, i32 8)
  %51 = icmp ne i32 %50, 1573888
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @u32at(i8* %53, i32 24)
  %55 = icmp ne i32 %54, 4784164
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @u32at(i8* %57, i32 28)
  %59 = icmp ne i32 %58, 3145779
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %52, %48
  br label %40

61:                                               ; preds = %56
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @u16at(i8* %62, i32 20)
  %64 = load i8*, i8** %11, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %11, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 48
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %40

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72
  %74 = load i8*, i8** %11, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 16
  store i8* %75, i8** %11, align 8
  %76 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %16, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @u16at(i8* %78, i32 0)
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = load {}*, {}** %6, align 8
  %83 = bitcast {}* %82 to i32 (i8*, i32, i64, i8*)*
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @list_file(%struct.grub_ntfs_file* %76, i8* %81, i32 (i8*, i32, i64, i8*)* %83, i8* %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %73
  br label %299

89:                                               ; preds = %73
  store i8* null, i8** %8, align 8
  store i32 0, i32* %15, align 4
  %90 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %10, align 8
  %91 = call i32 @free_attr(%struct.grub_ntfs_attr* %90)
  %92 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %10, align 8
  %93 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %16, align 8
  %94 = call i32 @init_attr(%struct.grub_ntfs_attr* %92, %struct.grub_ntfs_file* %93)
  br label %95

95:                                               ; preds = %170, %89
  %96 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %10, align 8
  %97 = load i32, i32* @AT_BITMAP, align 4
  %98 = call i8* @find_attr(%struct.grub_ntfs_attr* %96, i32 %97)
  store i8* %98, i8** %11, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %171

100:                                              ; preds = %95
  %101 = load i8*, i8** %11, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 10
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  store i32 %104, i32* %17, align 4
  %105 = load i8*, i8** %11, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 9
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 4
  br i1 %109, label %110, label %170

110:                                              ; preds = %100
  %111 = load i8*, i8** %11, align 8
  %112 = load i32, i32* %17, align 4
  %113 = call i32 @u32at(i8* %111, i32 %112)
  %114 = icmp eq i32 %113, 4784164
  br i1 %114, label %115, label %170

115:                                              ; preds = %110
  %116 = load i8*, i8** %11, align 8
  %117 = load i32, i32* %17, align 4
  %118 = add nsw i32 %117, 4
  %119 = call i32 @u32at(i8* %116, i32 %118)
  %120 = icmp eq i32 %119, 3145779
  br i1 %120, label %121, label %170

121:                                              ; preds = %115
  %122 = load i8*, i8** %11, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 0
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %18, align 4
  %128 = load i32, i32* %18, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %121
  %131 = load i8*, i8** %11, align 8
  %132 = call i32 @u32at(i8* %131, i32 16)
  br label %136

133:                                              ; preds = %121
  %134 = load i8*, i8** %11, align 8
  %135 = call i32 @u32at(i8* %134, i32 40)
  br label %136

136:                                              ; preds = %133, %130
  %137 = phi i32 [ %132, %130 ], [ %135, %133 ]
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %15, align 4
  %139 = call i8* @grub_malloc(i32 %138)
  store i8* %139, i8** %13, align 8
  %140 = load i8*, i8** %13, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %299

143:                                              ; preds = %136
  %144 = load i32, i32* %18, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %143
  %147 = load i8*, i8** %13, align 8
  %148 = load i8*, i8** %11, align 8
  %149 = load i8*, i8** %11, align 8
  %150 = call i32 @u16at(i8* %149, i32 20)
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  %153 = load i32, i32* %15, align 4
  %154 = call i32 @grub_memcpy(i8* %147, i8* %152, i32 %153)
  br label %168

155:                                              ; preds = %143
  %156 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %10, align 8
  %157 = load i8*, i8** %11, align 8
  %158 = load i8*, i8** %13, align 8
  %159 = load i32, i32* %15, align 4
  %160 = call i64 @read_data(%struct.grub_ntfs_attr* %156, i8* %157, i8* %158, i32 0, i32 %159, i32 0, i32 0, i32 0, i32 0)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %164 = call i32 @grub_error(i32 %163, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %299

165:                                              ; preds = %155
  %166 = load i8*, i8** %11, align 8
  %167 = call i32 @u32at(i8* %166, i32 48)
  store i32 %167, i32* %15, align 4
  br label %168

168:                                              ; preds = %165, %146
  %169 = load i8*, i8** %13, align 8
  store i8* %169, i8** %8, align 8
  br label %171

170:                                              ; preds = %115, %110, %100
  br label %95

171:                                              ; preds = %168, %95
  %172 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %10, align 8
  %173 = call i32 @free_attr(%struct.grub_ntfs_attr* %172)
  %174 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %10, align 8
  %175 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %16, align 8
  %176 = load i32, i32* @AT_INDEX_ALLOCATION, align 4
  %177 = call i8* @locate_attr(%struct.grub_ntfs_attr* %174, %struct.grub_ntfs_file* %175, i32 %176)
  store i8* %177, i8** %11, align 8
  br label %178

178:                                              ; preds = %194, %171
  %179 = load i8*, i8** %11, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %198

181:                                              ; preds = %178
  %182 = load i8*, i8** %11, align 8
  %183 = call i32 @u32at(i8* %182, i32 8)
  %184 = icmp eq i32 %183, 4195329
  br i1 %184, label %185, label %194

185:                                              ; preds = %181
  %186 = load i8*, i8** %11, align 8
  %187 = call i32 @u32at(i8* %186, i32 64)
  %188 = icmp eq i32 %187, 4784164
  br i1 %188, label %189, label %194

189:                                              ; preds = %185
  %190 = load i8*, i8** %11, align 8
  %191 = call i32 @u32at(i8* %190, i32 68)
  %192 = icmp eq i32 %191, 3145779
  br i1 %192, label %193, label %194

193:                                              ; preds = %189
  br label %198

194:                                              ; preds = %189, %185, %181
  %195 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %10, align 8
  %196 = load i32, i32* @AT_INDEX_ALLOCATION, align 4
  %197 = call i8* @find_attr(%struct.grub_ntfs_attr* %195, i32 %196)
  store i8* %197, i8** %11, align 8
  br label %178

198:                                              ; preds = %193, %178
  %199 = load i8*, i8** %11, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %207, label %201

201:                                              ; preds = %198
  %202 = load i8*, i8** %8, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %206 = call i32 @grub_error(i32 %205, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %299

207:                                              ; preds = %201, %198
  %208 = load i8*, i8** %8, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %298

210:                                              ; preds = %207
  %211 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %16, align 8
  %212 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %211, i32 0, i32 0
  %213 = load %struct.TYPE_2__*, %struct.TYPE_2__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @BLK_SHR, align 4
  %217 = shl i32 %215, %216
  %218 = call i8* @grub_malloc(i32 %217)
  store i8* %218, i8** %12, align 8
  %219 = load i8*, i8** %12, align 8
  %220 = icmp eq i8* %219, null
  br i1 %220, label %221, label %222

221:                                              ; preds = %210
  br label %299

222:                                              ; preds = %210
  store i32 1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %223

223:                                              ; preds = %294, %222
  %224 = load i32, i32* %20, align 4
  %225 = load i32, i32* %15, align 4
  %226 = mul nsw i32 %225, 8
  %227 = icmp slt i32 %224, %226
  br i1 %227, label %228, label %297

228:                                              ; preds = %223
  %229 = load i8*, i8** %8, align 8
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = load i32, i32* %19, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %285

235:                                              ; preds = %228
  %236 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %10, align 8
  %237 = load i8*, i8** %12, align 8
  %238 = load i32, i32* %20, align 4
  %239 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %16, align 8
  %240 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %239, i32 0, i32 0
  %241 = load %struct.TYPE_2__*, %struct.TYPE_2__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @BLK_SHR, align 4
  %245 = shl i32 %243, %244
  %246 = mul nsw i32 %238, %245
  %247 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %16, align 8
  %248 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %247, i32 0, i32 0
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @BLK_SHR, align 4
  %253 = shl i32 %251, %252
  %254 = call i64 @read_attr(%struct.grub_ntfs_attr* %236, i8* %237, i32 %246, i32 %253, i32 0, i32 0, i32 0, i32 0)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %268, label %256

256:                                              ; preds = %235
  %257 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %16, align 8
  %258 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %257, i32 0, i32 0
  %259 = load %struct.TYPE_2__*, %struct.TYPE_2__** %258, align 8
  %260 = load i8*, i8** %12, align 8
  %261 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %16, align 8
  %262 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %261, i32 0, i32 0
  %263 = load %struct.TYPE_2__*, %struct.TYPE_2__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = call i64 @fixup(%struct.TYPE_2__* %259, i8* %260, i32 %265, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %256, %235
  br label %299

269:                                              ; preds = %256
  %270 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %16, align 8
  %271 = load i8*, i8** %12, align 8
  %272 = load i8*, i8** %12, align 8
  %273 = call i32 @u16at(i8* %272, i32 24)
  %274 = add nsw i32 24, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %271, i64 %275
  %277 = load {}*, {}** %6, align 8
  %278 = bitcast {}* %277 to i32 (i8*, i32, i64, i8*)*
  %279 = load i8*, i8** %7, align 8
  %280 = call i32 @list_file(%struct.grub_ntfs_file* %270, i8* %276, i32 (i8*, i32, i64, i8*)* %278, i8* %279)
  store i32 %280, i32* %14, align 4
  %281 = load i32, i32* %14, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %269
  br label %299

284:                                              ; preds = %269
  br label %285

285:                                              ; preds = %284, %228
  %286 = load i32, i32* %19, align 4
  %287 = shl i32 %286, 1
  store i32 %287, i32* %19, align 4
  %288 = load i32, i32* %19, align 4
  %289 = icmp sge i32 %288, 256
  br i1 %289, label %290, label %293

290:                                              ; preds = %285
  store i32 1, i32* %19, align 4
  %291 = load i8*, i8** %8, align 8
  %292 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %292, i8** %8, align 8
  br label %293

293:                                              ; preds = %290, %285
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %20, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %20, align 4
  br label %223

297:                                              ; preds = %223
  br label %298

298:                                              ; preds = %297, %207
  br label %299

299:                                              ; preds = %298, %283, %268, %221, %204, %162, %142, %88, %45
  %300 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %10, align 8
  %301 = call i32 @free_attr(%struct.grub_ntfs_attr* %300)
  %302 = load i8*, i8** %12, align 8
  %303 = call i32 @grub_free(i8* %302)
  %304 = load i8*, i8** %13, align 8
  %305 = call i32 @grub_free(i8* %304)
  %306 = load i32, i32* %14, align 4
  store i32 %306, i32* %4, align 4
  br label %307

307:                                              ; preds = %299, %34
  %308 = load i32, i32* %4, align 4
  ret i32 %308
}

declare dso_local i64 @init_file(%struct.grub_ntfs_file*, i32) #1

declare dso_local i32 @init_attr(%struct.grub_ntfs_attr*, %struct.grub_ntfs_file*) #1

declare dso_local i8* @find_attr(%struct.grub_ntfs_attr*, i32) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local i32 @u32at(i8*, i32) #1

declare dso_local i32 @u16at(i8*, i32) #1

declare dso_local i32 @list_file(%struct.grub_ntfs_file*, i8*, i32 (i8*, i32, i64, i8*)*, i8*) #1

declare dso_local i32 @free_attr(%struct.grub_ntfs_attr*) #1

declare dso_local i8* @grub_malloc(i32) #1

declare dso_local i32 @grub_memcpy(i8*, i8*, i32) #1

declare dso_local i64 @read_data(%struct.grub_ntfs_attr*, i8*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @locate_attr(%struct.grub_ntfs_attr*, %struct.grub_ntfs_file*, i32) #1

declare dso_local i64 @read_attr(%struct.grub_ntfs_attr*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @fixup(%struct.TYPE_2__*, i8*, i32, i8*) #1

declare dso_local i32 @grub_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
