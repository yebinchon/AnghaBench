; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_draw_bmp.c_draw_rgba.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_draw_bmp.c_draw_rgba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_draw_sub_cache = type { i32 }
%struct.mp_image = type { i32*, i32, i32, i32, i32** }
%struct.sub_bitmaps = type { i32, %struct.sub_bitmap* }
%struct.sub_bitmap = type { i32, i32 }
%struct.mp_rect = type { i32 }
%struct.part = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mp_image*, %struct.mp_image* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_draw_sub_cache*, i32, %struct.mp_image*, i32, %struct.sub_bitmaps*)* @draw_rgba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_rgba(%struct.mp_draw_sub_cache* %0, i32 %1, %struct.mp_image* %2, i32 %3, %struct.sub_bitmaps* %4) #0 {
  %6 = alloca %struct.mp_rect, align 4
  %7 = alloca %struct.mp_draw_sub_cache*, align 8
  %8 = alloca %struct.mp_image*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sub_bitmaps*, align 8
  %11 = alloca %struct.part*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sub_bitmap*, align 8
  %14 = alloca %struct.mp_image, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.mp_image*, align 8
  %18 = alloca %struct.mp_image*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %6, i32 0, i32 0
  store i32 %1, i32* %23, align 4
  store %struct.mp_draw_sub_cache* %0, %struct.mp_draw_sub_cache** %7, align 8
  store %struct.mp_image* %2, %struct.mp_image** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.sub_bitmaps* %4, %struct.sub_bitmaps** %10, align 8
  %24 = load %struct.mp_draw_sub_cache*, %struct.mp_draw_sub_cache** %7, align 8
  %25 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %10, align 8
  %26 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %27 = call %struct.part* @get_cache(%struct.mp_draw_sub_cache* %24, %struct.sub_bitmaps* %25, %struct.mp_image* %26)
  store %struct.part* %27, %struct.part** %11, align 8
  %28 = load %struct.part*, %struct.part** %11, align 8
  %29 = call i32 @assert(%struct.part* %28)
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %233, %5
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %10, align 8
  %33 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %236

36:                                               ; preds = %30
  %37 = load %struct.sub_bitmaps*, %struct.sub_bitmaps** %10, align 8
  %38 = getelementptr inbounds %struct.sub_bitmaps, %struct.sub_bitmaps* %37, i32 0, i32 1
  %39 = load %struct.sub_bitmap*, %struct.sub_bitmap** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %39, i64 %41
  store %struct.sub_bitmap* %42, %struct.sub_bitmap** %13, align 8
  %43 = load %struct.sub_bitmap*, %struct.sub_bitmap** %13, align 8
  %44 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %52, label %47

47:                                               ; preds = %36
  %48 = load %struct.sub_bitmap*, %struct.sub_bitmap** %13, align 8
  %49 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %36
  br label %233

53:                                               ; preds = %47
  %54 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %55 = load %struct.sub_bitmap*, %struct.sub_bitmap** %13, align 8
  %56 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %6, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @get_sub_area(i32 %57, %struct.mp_image* %54, %struct.sub_bitmap* %55, %struct.mp_image* %14, i32* %15, i32* %16)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  br label %233

61:                                               ; preds = %53
  %62 = load %struct.part*, %struct.part** %11, align 8
  %63 = getelementptr inbounds %struct.part, %struct.part* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load %struct.mp_image*, %struct.mp_image** %68, align 8
  store %struct.mp_image* %69, %struct.mp_image** %17, align 8
  %70 = load %struct.part*, %struct.part** %11, align 8
  %71 = getelementptr inbounds %struct.part, %struct.part* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load %struct.mp_image*, %struct.mp_image** %76, align 8
  store %struct.mp_image* %77, %struct.mp_image** %18, align 8
  %78 = load %struct.mp_image*, %struct.mp_image** %17, align 8
  %79 = icmp ne %struct.mp_image* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %61
  %81 = load %struct.mp_image*, %struct.mp_image** %18, align 8
  %82 = icmp ne %struct.mp_image* %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %80, %61
  %84 = load %struct.sub_bitmap*, %struct.sub_bitmap** %13, align 8
  %85 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %86 = call i32 @scale_sb_rgba(%struct.sub_bitmap* %84, %struct.mp_image* %85, %struct.mp_image** %17, %struct.mp_image** %18)
  br label %87

87:                                               ; preds = %83, %80
  %88 = load %struct.mp_image*, %struct.mp_image** %17, align 8
  %89 = icmp ne %struct.mp_image* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct.mp_image*, %struct.mp_image** %18, align 8
  %92 = icmp ne %struct.mp_image* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %90, %87
  br label %233

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 7
  %97 = sdiv i32 %96, 8
  store i32 %97, i32* %19, align 4
  %98 = load %struct.mp_image*, %struct.mp_image** %18, align 8
  %99 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %98, i32 0, i32 4
  %100 = load i32**, i32*** %99, align 8
  %101 = getelementptr inbounds i32*, i32** %100, i64 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %16, align 4
  %104 = load %struct.mp_image*, %struct.mp_image** %18, align 8
  %105 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %103, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %102, i64 %110
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32* %114, i32** %20, align 8
  store i32 0, i32* %21, align 4
  br label %115

115:                                              ; preds = %181, %94
  %116 = load i32, i32* %21, align 4
  %117 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %118 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = icmp sgt i32 %119, 2
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 3, i32 1
  %123 = icmp slt i32 %116, %122
  br i1 %123, label %124, label %184

124:                                              ; preds = %115
  %125 = load %struct.mp_image*, %struct.mp_image** %17, align 8
  %126 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %125, i32 0, i32 4
  %127 = load i32**, i32*** %126, align 8
  %128 = load i32, i32* %21, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %16, align 4
  %133 = load %struct.mp_image*, %struct.mp_image** %17, align 8
  %134 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %21, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %132, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %131, i64 %141
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %19, align 4
  %145 = mul nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %142, i64 %146
  %148 = bitcast i32* %147 to i8*
  store i8* %148, i8** %22, align 8
  %149 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %14, i32 0, i32 4
  %150 = load i32**, i32*** %149, align 8
  %151 = load i32, i32* %21, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %150, i64 %152
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %14, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %21, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i8*, i8** %22, align 8
  %162 = load %struct.mp_image*, %struct.mp_image** %17, align 8
  %163 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %21, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %20, align 8
  %170 = load %struct.mp_image*, %struct.mp_image** %18, align 8
  %171 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %14, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %14, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %19, align 4
  %180 = call i32 @blend_src_alpha(i32* %154, i32 %160, i8* %161, i32 %168, i32* %169, i32 %174, i32 %176, i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %124
  %182 = load i32, i32* %21, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %21, align 4
  br label %115

184:                                              ; preds = %115
  %185 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %186 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = icmp sge i32 %187, 4
  br i1 %188, label %189, label %210

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %14, i32 0, i32 4
  %191 = load i32**, i32*** %190, align 8
  %192 = getelementptr inbounds i32*, i32** %191, i64 3
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %14, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 3
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %20, align 8
  %199 = load %struct.mp_image*, %struct.mp_image** %18, align 8
  %200 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %14, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %14, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %19, align 4
  %209 = call i32 @blend_src_dst_mul(i32* %193, i32 %197, i32* %198, i32 %203, i32 255, i32 %205, i32 %207, i32 %208)
  br label %210

210:                                              ; preds = %189, %184
  %211 = load %struct.part*, %struct.part** %11, align 8
  %212 = load %struct.mp_image*, %struct.mp_image** %17, align 8
  %213 = call i8* @talloc_steal(%struct.part* %211, %struct.mp_image* %212)
  %214 = bitcast i8* %213 to %struct.mp_image*
  %215 = load %struct.part*, %struct.part** %11, align 8
  %216 = getelementptr inbounds %struct.part, %struct.part* %215, i32 0, i32 0
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** %216, align 8
  %218 = load i32, i32* %12, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 1
  store %struct.mp_image* %214, %struct.mp_image** %221, align 8
  %222 = load %struct.part*, %struct.part** %11, align 8
  %223 = load %struct.mp_image*, %struct.mp_image** %18, align 8
  %224 = call i8* @talloc_steal(%struct.part* %222, %struct.mp_image* %223)
  %225 = bitcast i8* %224 to %struct.mp_image*
  %226 = load %struct.part*, %struct.part** %11, align 8
  %227 = getelementptr inbounds %struct.part, %struct.part* %226, i32 0, i32 0
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** %227, align 8
  %229 = load i32, i32* %12, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 0
  store %struct.mp_image* %225, %struct.mp_image** %232, align 8
  br label %233

233:                                              ; preds = %210, %93, %60, %52
  %234 = load i32, i32* %12, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %12, align 4
  br label %30

236:                                              ; preds = %30
  ret void
}

declare dso_local %struct.part* @get_cache(%struct.mp_draw_sub_cache*, %struct.sub_bitmaps*, %struct.mp_image*) #1

declare dso_local i32 @assert(%struct.part*) #1

declare dso_local i32 @get_sub_area(i32, %struct.mp_image*, %struct.sub_bitmap*, %struct.mp_image*, i32*, i32*) #1

declare dso_local i32 @scale_sb_rgba(%struct.sub_bitmap*, %struct.mp_image*, %struct.mp_image**, %struct.mp_image**) #1

declare dso_local i32 @blend_src_alpha(i32*, i32, i8*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @blend_src_dst_mul(i32*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @talloc_steal(%struct.part*, %struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
