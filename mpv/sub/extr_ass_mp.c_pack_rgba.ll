; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_ass_mp.c_pack_rgba.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_ass_mp.c_pack_rgba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_ass_packer = type { %struct.sub_bitmap* }
%struct.sub_bitmap = type { i64, i64, i64, i64, i32, i64, i32, i32, i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.sub_bitmaps = type { i32, %struct.sub_bitmap*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32*, i64* }
%struct.mp_rect = type { i64, i64, i64, i64 }

@MP_SUB_BB_LIST_MAX = common dso_local global i32 0, align 4
@SUBBITMAP_RGBA = common dso_local global i32 0, align 4
@IMGFMT_BGRA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_ass_packer*, %struct.sub_bitmaps*)* @pack_rgba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_rgba(%struct.mp_ass_packer* %0, %struct.sub_bitmaps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_ass_packer*, align 8
  %5 = alloca %struct.sub_bitmaps*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sub_bitmaps, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mp_rect, align 8
  %14 = alloca %struct.sub_bitmap*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sub_bitmap*, align 8
  store %struct.mp_ass_packer* %0, %struct.mp_ass_packer** %4, align 8
  store %struct.sub_bitmaps* %1, %struct.sub_bitmaps** %5, align 8
  %17 = load i32, i32* @MP_SUB_BB_LIST_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca %struct.mp_rect, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %5, align 8
  %22 = load i32, i32* @MP_SUB_BB_LIST_MAX, align 4
  %23 = call i32 @mp_get_sub_bb_list(%struct.sub_bitmaps* %21, %struct.mp_rect* %20, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %9, i32 0, i32 0
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %9, i32 0, i32 1
  %27 = load %struct.mp_ass_packer*, %struct.mp_ass_packer** %4, align 8
  %28 = getelementptr inbounds %struct.mp_ass_packer, %struct.mp_ass_packer* %27, i32 0, i32 0
  %29 = load %struct.sub_bitmap*, %struct.sub_bitmap** %28, align 8
  store %struct.sub_bitmap* %29, %struct.sub_bitmap** %26, align 8
  %30 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %9, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %30, align 8
  %31 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %9, i32 0, i32 3
  %32 = load i32, i32* @SUBBITMAP_RGBA, align 4
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %9, i32 0, i32 4
  %34 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %5, align 8
  %35 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %33, align 4
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %77, %2
  %38 = load i32, i32* %10, align 4
  %39 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %9, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %80

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %20, i64 %44
  %46 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 16
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %20, i64 %49
  %51 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %47, %52
  %54 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %9, i32 0, i32 1
  %55 = load %struct.sub_bitmap*, %struct.sub_bitmap** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %55, i64 %57
  %59 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %58, i32 0, i32 0
  store i64 %53, i64* %59, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %20, i64 %61
  %63 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 16
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %20, i64 %66
  %68 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %64, %69
  %71 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %9, i32 0, i32 1
  %72 = load %struct.sub_bitmap*, %struct.sub_bitmap** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %72, i64 %74
  %76 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %75, i32 0, i32 1
  store i64 %70, i64* %76, align 8
  br label %77

77:                                               ; preds = %42
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %37

80:                                               ; preds = %37
  %81 = load %struct.mp_ass_packer*, %struct.mp_ass_packer** %4, align 8
  %82 = load i32, i32* @IMGFMT_BGRA, align 4
  %83 = call i32 @pack(%struct.mp_ass_packer* %81, %struct.sub_bitmaps* %9, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %273

86:                                               ; preds = %80
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %266, %86
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %269

91:                                               ; preds = %87
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %20, i64 %93
  %95 = bitcast %struct.mp_rect* %13 to i8*
  %96 = bitcast %struct.mp_rect* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 16 %96, i64 32, i1 false)
  %97 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %9, i32 0, i32 1
  %98 = load %struct.sub_bitmap*, %struct.sub_bitmap** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %98, i64 %100
  store %struct.sub_bitmap* %101, %struct.sub_bitmap** %14, align 8
  %102 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %13, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.sub_bitmap*, %struct.sub_bitmap** %14, align 8
  %105 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %104, i32 0, i32 2
  store i64 %103, i64* %105, align 8
  %106 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %13, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.sub_bitmap*, %struct.sub_bitmap** %14, align 8
  %109 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %108, i32 0, i32 3
  store i64 %107, i64* %109, align 8
  %110 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %13, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %13, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %111, %113
  %115 = trunc i64 %114 to i32
  %116 = load %struct.sub_bitmap*, %struct.sub_bitmap** %14, align 8
  %117 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 8
  %118 = sext i32 %115 to i64
  %119 = load %struct.sub_bitmap*, %struct.sub_bitmap** %14, align 8
  %120 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %13, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %13, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %122, %124
  %126 = load %struct.sub_bitmap*, %struct.sub_bitmap** %14, align 8
  %127 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %126, i32 0, i32 5
  store i64 %125, i64* %127, align 8
  %128 = load %struct.sub_bitmap*, %struct.sub_bitmap** %14, align 8
  %129 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %128, i32 0, i32 1
  store i64 %125, i64* %129, align 8
  %130 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %9, i32 0, i32 2
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.sub_bitmap*, %struct.sub_bitmap** %14, align 8
  %137 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %136, i32 0, i32 6
  store i32 %135, i32* %137, align 8
  %138 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %9, i32 0, i32 2
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i64*, i64** %140, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 0
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to i32*
  %145 = load %struct.sub_bitmap*, %struct.sub_bitmap** %14, align 8
  %146 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.sub_bitmap*, %struct.sub_bitmap** %14, align 8
  %149 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %147, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %144, i64 %152
  %154 = load %struct.sub_bitmap*, %struct.sub_bitmap** %14, align 8
  %155 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 8
  %157 = mul nsw i32 %156, 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %153, i64 %158
  %160 = load %struct.sub_bitmap*, %struct.sub_bitmap** %14, align 8
  %161 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %160, i32 0, i32 10
  store i32* %159, i32** %161, align 8
  %162 = load %struct.sub_bitmap*, %struct.sub_bitmap** %14, align 8
  %163 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %162, i32 0, i32 10
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.sub_bitmap*, %struct.sub_bitmap** %14, align 8
  %166 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = mul nsw i64 %167, 4
  %169 = trunc i64 %168 to i32
  %170 = load %struct.sub_bitmap*, %struct.sub_bitmap** %14, align 8
  %171 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.sub_bitmap*, %struct.sub_bitmap** %14, align 8
  %174 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @memset_pic(i32* %164, i32 0, i32 %169, i64 %172, i32 %175)
  store i32 0, i32* %15, align 4
  br label %177

177:                                              ; preds = %262, %91
  %178 = load i32, i32* %15, align 4
  %179 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %5, align 8
  %180 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %265

183:                                              ; preds = %177
  %184 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %5, align 8
  %185 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %184, i32 0, i32 1
  %186 = load %struct.sub_bitmap*, %struct.sub_bitmap** %185, align 8
  %187 = load i32, i32* %15, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %186, i64 %188
  store %struct.sub_bitmap* %189, %struct.sub_bitmap** %16, align 8
  %190 = load %struct.sub_bitmap*, %struct.sub_bitmap** %16, align 8
  %191 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %13, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp sgt i64 %192, %194
  br i1 %195, label %225, label %196

196:                                              ; preds = %183
  %197 = load %struct.sub_bitmap*, %struct.sub_bitmap** %16, align 8
  %198 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.sub_bitmap*, %struct.sub_bitmap** %16, align 8
  %201 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %199, %202
  %204 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %13, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = icmp slt i64 %203, %205
  br i1 %206, label %225, label %207

207:                                              ; preds = %196
  %208 = load %struct.sub_bitmap*, %struct.sub_bitmap** %16, align 8
  %209 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %13, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = icmp sgt i64 %210, %212
  br i1 %213, label %225, label %214

214:                                              ; preds = %207
  %215 = load %struct.sub_bitmap*, %struct.sub_bitmap** %16, align 8
  %216 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.sub_bitmap*, %struct.sub_bitmap** %16, align 8
  %219 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %217, %220
  %222 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %13, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = icmp slt i64 %221, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %214, %207, %196, %183
  br label %262

226:                                              ; preds = %214
  %227 = load %struct.sub_bitmap*, %struct.sub_bitmap** %16, align 8
  %228 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %227, i32 0, i32 10
  %229 = load i32*, i32** %228, align 8
  %230 = load %struct.sub_bitmap*, %struct.sub_bitmap** %16, align 8
  %231 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.sub_bitmap*, %struct.sub_bitmap** %16, align 8
  %234 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.sub_bitmap*, %struct.sub_bitmap** %16, align 8
  %237 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.sub_bitmap*, %struct.sub_bitmap** %14, align 8
  %240 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %239, i32 0, i32 10
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.sub_bitmap*, %struct.sub_bitmap** %14, align 8
  %243 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %242, i32 0, i32 6
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.sub_bitmap*, %struct.sub_bitmap** %16, align 8
  %246 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %13, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = sub nsw i64 %247, %249
  %251 = load %struct.sub_bitmap*, %struct.sub_bitmap** %16, align 8
  %252 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %13, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = sub nsw i64 %253, %255
  %257 = load %struct.sub_bitmap*, %struct.sub_bitmap** %16, align 8
  %258 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %257, i32 0, i32 9
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @draw_ass_rgba(i32* %229, i64 %232, i64 %235, i32 %238, i32* %241, i32 %244, i64 %250, i64 %256, i32 %260)
  br label %262

262:                                              ; preds = %226, %225
  %263 = load i32, i32* %15, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %15, align 4
  br label %177

265:                                              ; preds = %177
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %12, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %12, align 4
  br label %87

269:                                              ; preds = %87
  %270 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %5, align 8
  %271 = bitcast %struct.sub_bitmaps* %270 to i8*
  %272 = bitcast %struct.sub_bitmaps* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %271, i8* align 8 %272, i64 32, i1 false)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %273

273:                                              ; preds = %269, %85
  %274 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %274)
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mp_get_sub_bb_list(%struct.sub_bitmaps*, %struct.mp_rect*, i32) #2

declare dso_local i32 @pack(%struct.mp_ass_packer*, %struct.sub_bitmaps*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @memset_pic(i32*, i32, i32, i64, i32) #2

declare dso_local i32 @draw_ass_rgba(i32*, i64, i64, i32, i32*, i32, i64, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
