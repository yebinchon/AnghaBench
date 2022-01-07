; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_draw_bmp.c_draw_ass.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_draw_bmp.c_draw_ass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_csp_params = type { i32, i32, i32 }
%struct.mp_draw_sub_cache = type { i32 }
%struct.mp_image = type { i32, i32, i32, i32*, i32*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sub_bitmaps = type { i32, %struct.sub_bitmap* }
%struct.sub_bitmap = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mp_rect = type { i32 }
%struct.mp_cmat = type { i32 }

@MP_CSP_PARAMS_DEFAULTS = common dso_local global %struct.mp_csp_params zeroinitializer, align 4
@MP_CSP_LEVELS_PC = common dso_local global i32 0, align 4
@MP_IMGFLAG_YUV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_draw_sub_cache*, i32, %struct.mp_image*, i32, %struct.sub_bitmaps*)* @draw_ass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_ass(%struct.mp_draw_sub_cache* %0, i32 %1, %struct.mp_image* %2, i32 %3, %struct.sub_bitmaps* %4) #0 {
  %6 = alloca %struct.mp_rect, align 4
  %7 = alloca %struct.mp_draw_sub_cache*, align 8
  %8 = alloca %struct.mp_image*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sub_bitmaps*, align 8
  %11 = alloca %struct.mp_csp_params, align 4
  %12 = alloca %struct.mp_cmat, align 4
  %13 = alloca %struct.mp_cmat, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sub_bitmap*, align 8
  %17 = alloca %struct.mp_image, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [3 x i32], align 4
  %25 = alloca [3 x i32], align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %6, i32 0, i32 0
  store i32 %1, i32* %30, align 4
  store %struct.mp_draw_sub_cache* %0, %struct.mp_draw_sub_cache** %7, align 8
  store %struct.mp_image* %2, %struct.mp_image** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.sub_bitmaps* %4, %struct.sub_bitmaps** %10, align 8
  %31 = bitcast %struct.mp_csp_params* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 bitcast (%struct.mp_csp_params* @MP_CSP_PARAMS_DEFAULTS to i8*), i64 12, i1 false)
  %32 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %33 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %32, i32 0, i32 6
  %34 = call i32 @mp_csp_set_image_params(%struct.mp_csp_params* %11, i32* %33)
  %35 = load i32, i32* @MP_CSP_LEVELS_PC, align 4
  %36 = getelementptr inbounds %struct.mp_csp_params, %struct.mp_csp_params* %11, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  %38 = getelementptr inbounds %struct.mp_csp_params, %struct.mp_csp_params* %11, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 7
  %41 = sdiv i32 %40, 8
  %42 = mul nsw i32 %41, 8
  %43 = getelementptr inbounds %struct.mp_csp_params, %struct.mp_csp_params* %11, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %45 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MP_IMGFLAG_YUV, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %5
  %53 = call i32 @mp_get_csp_matrix(%struct.mp_csp_params* %11, %struct.mp_cmat* %12)
  %54 = call i32 @mp_invert_cmat(%struct.mp_cmat* %13, %struct.mp_cmat* %12)
  br label %55

55:                                               ; preds = %52, %5
  store i32 0, i32* %15, align 4
  br label %56

56:                                               ; preds = %220, %55
  %57 = load i32, i32* %15, align 4
  %58 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %10, align 8
  %59 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %223

62:                                               ; preds = %56
  %63 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %10, align 8
  %64 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %63, i32 0, i32 1
  %65 = load %struct.sub_bitmap*, %struct.sub_bitmap** %64, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %65, i64 %67
  store %struct.sub_bitmap* %68, %struct.sub_bitmap** %16, align 8
  %69 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %70 = load %struct.sub_bitmap*, %struct.sub_bitmap** %16, align 8
  %71 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %6, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @get_sub_area(i32 %72, %struct.mp_image* %69, %struct.sub_bitmap* %70, %struct.mp_image* %17, i32* %18, i32* %19)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %62
  br label %220

76:                                               ; preds = %62
  %77 = load %struct.sub_bitmap*, %struct.sub_bitmap** %16, align 8
  %78 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = ashr i32 %80, 24
  %82 = and i32 %81, 255
  store i32 %82, i32* %20, align 4
  %83 = load %struct.sub_bitmap*, %struct.sub_bitmap** %16, align 8
  %84 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = ashr i32 %86, 16
  %88 = and i32 %87, 255
  store i32 %88, i32* %21, align 4
  %89 = load %struct.sub_bitmap*, %struct.sub_bitmap** %16, align 8
  %90 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = ashr i32 %92, 8
  %94 = and i32 %93, 255
  store i32 %94, i32* %22, align 4
  %95 = load %struct.sub_bitmap*, %struct.sub_bitmap** %16, align 8
  %96 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, 255
  %100 = sub nsw i32 255, %99
  store i32 %100, i32* %23, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %76
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 0
  %105 = load i32, i32* %20, align 4
  store i32 %105, i32* %104, align 4
  %106 = getelementptr inbounds i32, i32* %104, i64 1
  %107 = load i32, i32* %21, align 4
  store i32 %107, i32* %106, align 4
  %108 = getelementptr inbounds i32, i32* %106, i64 1
  %109 = load i32, i32* %22, align 4
  store i32 %109, i32* %108, align 4
  %110 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 0
  %111 = getelementptr inbounds %struct.mp_csp_params, %struct.mp_csp_params* %11, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 0
  %114 = call i32 @mp_map_fixp_color(%struct.mp_cmat* %13, i32 8, i32* %110, i32 %112, i32* %113)
  br label %136

115:                                              ; preds = %76
  %116 = load i32, i32* %9, align 4
  %117 = icmp sgt i32 %116, 8
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* %9, align 4
  %120 = sub nsw i32 %119, 8
  br label %122

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121, %118
  %123 = phi i32 [ %120, %118 ], [ 0, %121 ]
  store i32 %123, i32* %26, align 4
  %124 = load i32, i32* %21, align 4
  %125 = load i32, i32* %26, align 4
  %126 = shl i32 %124, %125
  %127 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 0
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* %22, align 4
  %129 = load i32, i32* %26, align 4
  %130 = shl i32 %128, %129
  %131 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 1
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* %20, align 4
  %133 = load i32, i32* %26, align 4
  %134 = shl i32 %132, %133
  %135 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 2
  store i32 %134, i32* %135, align 4
  br label %136

136:                                              ; preds = %122, %103
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 7
  %139 = sdiv i32 %138, 8
  store i32 %139, i32* %27, align 4
  %140 = load %struct.sub_bitmap*, %struct.sub_bitmap** %16, align 8
  %141 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to i32*
  %144 = load i32, i32* %19, align 4
  %145 = load %struct.sub_bitmap*, %struct.sub_bitmap** %16, align 8
  %146 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = mul nsw i32 %144, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %143, i64 %149
  %151 = load i32, i32* %18, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32* %153, i32** %28, align 8
  store i32 0, i32* %29, align 4
  br label %154

154:                                              ; preds = %191, %136
  %155 = load i32, i32* %29, align 4
  %156 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %157 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp sgt i32 %158, 2
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i32 3, i32 1
  %162 = icmp slt i32 %155, %161
  br i1 %162, label %163, label %194

163:                                              ; preds = %154
  %164 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %17, i32 0, i32 4
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %29, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %17, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %29, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %29, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %28, align 8
  %181 = load %struct.sub_bitmap*, %struct.sub_bitmap** %16, align 8
  %182 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %23, align 4
  %185 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %17, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %17, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %27, align 4
  %190 = call i32 @blend_const_alpha(i32 %169, i32 %175, i32 %179, i32* %180, i32 %183, i32 %184, i32 %186, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %163
  %192 = load i32, i32* %29, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %29, align 4
  br label %154

194:                                              ; preds = %154
  %195 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %196 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp sge i32 %197, 4
  br i1 %198, label %199, label %219

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %17, i32 0, i32 4
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 3
  %203 = load i32, i32* %202, align 4
  %204 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %17, i32 0, i32 3
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 3
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** %28, align 8
  %209 = load %struct.sub_bitmap*, %struct.sub_bitmap** %16, align 8
  %210 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %23, align 4
  %213 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %17, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %17, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %27, align 4
  %218 = call i32 @blend_src_dst_mul(i32 %203, i32 %207, i32* %208, i32 %211, i32 %212, i32 %214, i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %199, %194
  br label %220

220:                                              ; preds = %219, %75
  %221 = load i32, i32* %15, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %15, align 4
  br label %56

223:                                              ; preds = %56
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mp_csp_set_image_params(%struct.mp_csp_params*, i32*) #2

declare dso_local i32 @mp_get_csp_matrix(%struct.mp_csp_params*, %struct.mp_cmat*) #2

declare dso_local i32 @mp_invert_cmat(%struct.mp_cmat*, %struct.mp_cmat*) #2

declare dso_local i32 @get_sub_area(i32, %struct.mp_image*, %struct.sub_bitmap*, %struct.mp_image*, i32*, i32*) #2

declare dso_local i32 @mp_map_fixp_color(%struct.mp_cmat*, i32, i32*, i32, i32*) #2

declare dso_local i32 @blend_const_alpha(i32, i32, i32, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @blend_src_dst_mul(i32, i32, i32*, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
