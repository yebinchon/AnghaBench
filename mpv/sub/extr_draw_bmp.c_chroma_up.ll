; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_draw_bmp.c_chroma_up.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_draw_bmp.c_chroma_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_draw_sub_cache = type { %struct.mp_image, %struct.mp_image* }
%struct.mp_image = type { i32, i32, i32, i32*, i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MP_IMGFLAG_YUV = common dso_local global i32 0, align 4
@IMGFMT_420P = common dso_local global i32 0, align 4
@IMGFMT_444P = common dso_local global i32 0, align 4
@IMGFMT_Y8 = common dso_local global i32 0, align 4
@SWS_POINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_image* (%struct.mp_draw_sub_cache*, i32, %struct.mp_image*)* @chroma_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_image* @chroma_up(%struct.mp_draw_sub_cache* %0, i32 %1, %struct.mp_image* %2) #0 {
  %4 = alloca %struct.mp_image*, align 8
  %5 = alloca %struct.mp_draw_sub_cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mp_image*, align 8
  %8 = alloca %struct.mp_image*, align 8
  %9 = alloca %struct.mp_image, align 8
  %10 = alloca %struct.mp_image, align 8
  %11 = alloca i32, align 4
  store %struct.mp_draw_sub_cache* %0, %struct.mp_draw_sub_cache** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mp_image* %2, %struct.mp_image** %7, align 8
  %12 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %13 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  store %struct.mp_image* %18, %struct.mp_image** %4, align 8
  br label %225

19:                                               ; preds = %3
  %20 = load %struct.mp_draw_sub_cache*, %struct.mp_draw_sub_cache** %5, align 8
  %21 = getelementptr inbounds %struct.mp_draw_sub_cache, %struct.mp_draw_sub_cache* %20, i32 0, i32 1
  %22 = load %struct.mp_image*, %struct.mp_image** %21, align 8
  %23 = icmp ne %struct.mp_image* %22, null
  br i1 %23, label %24, label %52

24:                                               ; preds = %19
  %25 = load %struct.mp_draw_sub_cache*, %struct.mp_draw_sub_cache** %5, align 8
  %26 = getelementptr inbounds %struct.mp_draw_sub_cache, %struct.mp_draw_sub_cache* %25, i32 0, i32 1
  %27 = load %struct.mp_image*, %struct.mp_image** %26, align 8
  %28 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %52, label %32

32:                                               ; preds = %24
  %33 = load %struct.mp_draw_sub_cache*, %struct.mp_draw_sub_cache** %5, align 8
  %34 = getelementptr inbounds %struct.mp_draw_sub_cache, %struct.mp_draw_sub_cache* %33, i32 0, i32 1
  %35 = load %struct.mp_image*, %struct.mp_image** %34, align 8
  %36 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %39 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %32
  %43 = load %struct.mp_draw_sub_cache*, %struct.mp_draw_sub_cache** %5, align 8
  %44 = getelementptr inbounds %struct.mp_draw_sub_cache, %struct.mp_draw_sub_cache* %43, i32 0, i32 1
  %45 = load %struct.mp_image*, %struct.mp_image** %44, align 8
  %46 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %49 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %42, %32, %24, %19
  %53 = load %struct.mp_draw_sub_cache*, %struct.mp_draw_sub_cache** %5, align 8
  %54 = getelementptr inbounds %struct.mp_draw_sub_cache, %struct.mp_draw_sub_cache* %53, i32 0, i32 1
  %55 = load %struct.mp_image*, %struct.mp_image** %54, align 8
  %56 = call i32 @talloc_free(%struct.mp_image* %55)
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %59 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %62 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.mp_image* @mp_image_alloc(i32 %57, i32 %60, i32 %63)
  %65 = load %struct.mp_draw_sub_cache*, %struct.mp_draw_sub_cache** %5, align 8
  %66 = getelementptr inbounds %struct.mp_draw_sub_cache, %struct.mp_draw_sub_cache* %65, i32 0, i32 1
  store %struct.mp_image* %64, %struct.mp_image** %66, align 8
  %67 = load %struct.mp_draw_sub_cache*, %struct.mp_draw_sub_cache** %5, align 8
  %68 = load %struct.mp_draw_sub_cache*, %struct.mp_draw_sub_cache** %5, align 8
  %69 = getelementptr inbounds %struct.mp_draw_sub_cache, %struct.mp_draw_sub_cache* %68, i32 0, i32 1
  %70 = load %struct.mp_image*, %struct.mp_image** %69, align 8
  %71 = call i32 @talloc_steal(%struct.mp_draw_sub_cache* %67, %struct.mp_image* %70)
  %72 = load %struct.mp_draw_sub_cache*, %struct.mp_draw_sub_cache** %5, align 8
  %73 = getelementptr inbounds %struct.mp_draw_sub_cache, %struct.mp_draw_sub_cache* %72, i32 0, i32 1
  %74 = load %struct.mp_image*, %struct.mp_image** %73, align 8
  %75 = icmp ne %struct.mp_image* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %52
  store %struct.mp_image* null, %struct.mp_image** %4, align 8
  br label %225

77:                                               ; preds = %52
  br label %78

78:                                               ; preds = %77, %42
  %79 = load %struct.mp_draw_sub_cache*, %struct.mp_draw_sub_cache** %5, align 8
  %80 = getelementptr inbounds %struct.mp_draw_sub_cache, %struct.mp_draw_sub_cache* %79, i32 0, i32 0
  %81 = load %struct.mp_draw_sub_cache*, %struct.mp_draw_sub_cache** %5, align 8
  %82 = getelementptr inbounds %struct.mp_draw_sub_cache, %struct.mp_draw_sub_cache* %81, i32 0, i32 1
  %83 = load %struct.mp_image*, %struct.mp_image** %82, align 8
  %84 = bitcast %struct.mp_image* %80 to i8*
  %85 = bitcast %struct.mp_image* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 40, i1 false)
  %86 = load %struct.mp_draw_sub_cache*, %struct.mp_draw_sub_cache** %5, align 8
  %87 = getelementptr inbounds %struct.mp_draw_sub_cache, %struct.mp_draw_sub_cache* %86, i32 0, i32 0
  store %struct.mp_image* %87, %struct.mp_image** %8, align 8
  %88 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %89 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %90 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %93 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @mp_image_set_size(%struct.mp_image* %88, i32 %91, i32 %94)
  %96 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %97 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MP_IMGFLAG_YUV, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %78
  %104 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %105 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %109 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  br label %111

111:                                              ; preds = %103, %78
  %112 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %113 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @IMGFMT_420P, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %218

117:                                              ; preds = %111
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @IMGFMT_444P, align 4
  %120 = icmp eq i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %124 = bitcast %struct.mp_image* %9 to i8*
  %125 = bitcast %struct.mp_image* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 %125, i64 40, i1 false)
  %126 = load i32, i32* @IMGFMT_Y8, align 4
  %127 = call i32 @mp_image_setfmt(%struct.mp_image* %9, i32 %126)
  %128 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %129 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %132 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @mp_image_set_size(%struct.mp_image* %9, i32 %130, i32 %133)
  %135 = bitcast %struct.mp_image* %10 to i8*
  %136 = bitcast %struct.mp_image* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %135, i8* align 8 %136, i64 40, i1 false)
  %137 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %138 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = ashr i32 %139, 1
  %141 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %142 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = ashr i32 %143, 1
  %145 = call i32 @mp_image_set_size(%struct.mp_image* %10, i32 %140, i32 %144)
  store i32 0, i32* %11, align 4
  br label %146

146:                                              ; preds = %196, %117
  %147 = load i32, i32* %11, align 4
  %148 = icmp slt i32 %147, 2
  br i1 %148, label %149, label %199

149:                                              ; preds = %146
  %150 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %151 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 1, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %9, i32 0, i32 4
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  store i32 %157, i32* %160, align 4
  %161 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %162 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 1, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %9, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  store i32 %168, i32* %171, align 4
  %172 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %173 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %172, i32 0, i32 4
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %11, align 4
  %176 = add nsw i32 1, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %10, i32 0, i32 4
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  store i32 %179, i32* %182, align 4
  %183 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %184 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %183, i32 0, i32 3
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 1, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %10, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  store i32 %190, i32* %193, align 4
  %194 = load i32, i32* @SWS_POINT, align 4
  %195 = call i32 @mp_image_swscale(%struct.mp_image* %9, %struct.mp_image* %10, i32 %194)
  br label %196

196:                                              ; preds = %149
  %197 = load i32, i32* %11, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %11, align 4
  br label %146

199:                                              ; preds = %146
  %200 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %201 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %200, i32 0, i32 4
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %206 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %205, i32 0, i32 4
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  store i32 %204, i32* %208, align 4
  %209 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %210 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %209, i32 0, i32 3
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %215 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %214, i32 0, i32 3
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  store i32 %213, i32* %217, align 4
  br label %223

218:                                              ; preds = %111
  %219 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  %220 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %221 = load i32, i32* @SWS_POINT, align 4
  %222 = call i32 @mp_image_swscale(%struct.mp_image* %219, %struct.mp_image* %220, i32 %221)
  br label %223

223:                                              ; preds = %218, %199
  %224 = load %struct.mp_image*, %struct.mp_image** %8, align 8
  store %struct.mp_image* %224, %struct.mp_image** %4, align 8
  br label %225

225:                                              ; preds = %223, %76, %17
  %226 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  ret %struct.mp_image* %226
}

declare dso_local i32 @talloc_free(%struct.mp_image*) #1

declare dso_local %struct.mp_image* @mp_image_alloc(i32, i32, i32) #1

declare dso_local i32 @talloc_steal(%struct.mp_draw_sub_cache*, %struct.mp_image*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mp_image_set_size(%struct.mp_image*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_image_setfmt(%struct.mp_image*, i32) #1

declare dso_local i32 @mp_image_swscale(%struct.mp_image*, %struct.mp_image*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
