; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_draw_bmp.c_chroma_down.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_draw_bmp.c_chroma_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i64, i64, i64, i64*, i32* }

@IMGFMT_420P = common dso_local global i64 0, align 8
@IMGFMT_444P = common dso_local global i64 0, align 8
@IMGFMT_Y8 = common dso_local global i32 0, align 4
@SWS_AREA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_image*, %struct.mp_image*)* @chroma_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chroma_down(%struct.mp_image* %0, %struct.mp_image* %1) #0 {
  %3 = alloca %struct.mp_image*, align 8
  %4 = alloca %struct.mp_image*, align 8
  %5 = alloca %struct.mp_image, align 8
  %6 = alloca %struct.mp_image, align 8
  %7 = alloca i32, align 4
  store %struct.mp_image* %0, %struct.mp_image** %3, align 8
  store %struct.mp_image* %1, %struct.mp_image** %4, align 8
  %8 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %9 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %12 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %17 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %20 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br label %23

23:                                               ; preds = %15, %2
  %24 = phi i1 [ false, %2 ], [ %22, %15 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %28 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %29 = icmp ne %struct.mp_image* %27, %28
  br i1 %29, label %30, label %144

30:                                               ; preds = %23
  %31 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %32 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IMGFMT_420P, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %138

36:                                               ; preds = %30
  %37 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %38 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IMGFMT_444P, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %45 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %44, i32 0, i32 3
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %50 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %49, i32 0, i32 3
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %48, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %58 = bitcast %struct.mp_image* %5 to i8*
  %59 = bitcast %struct.mp_image* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 40, i1 false)
  %60 = load i32, i32* @IMGFMT_Y8, align 4
  %61 = call i32 @mp_image_setfmt(%struct.mp_image* %5, i32 %60)
  %62 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %63 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = ashr i64 %64, 1
  %66 = trunc i64 %65 to i32
  %67 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %68 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = ashr i64 %69, 1
  %71 = trunc i64 %70 to i32
  %72 = call i32 @mp_image_set_size(%struct.mp_image* %5, i32 %66, i32 %71)
  %73 = bitcast %struct.mp_image* %6 to i8*
  %74 = bitcast %struct.mp_image* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 40, i1 false)
  %75 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %76 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %80 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @mp_image_set_size(%struct.mp_image* %6, i32 %78, i32 %82)
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %134, %36
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 2
  br i1 %86, label %87, label %137

87:                                               ; preds = %84
  %88 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %89 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %88, i32 0, i32 3
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 1, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %90, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %5, i32 0, i32 3
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  store i64 %95, i64* %98, align 8
  %99 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %100 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 1, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %5, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 %106, i32* %109, align 4
  %110 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %111 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %110, i32 0, i32 3
  %112 = load i64*, i64** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 1, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %112, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %6, i32 0, i32 3
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 0
  store i64 %117, i64* %120, align 8
  %121 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %122 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 1, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %6, i32 0, i32 4
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  store i32 %128, i32* %131, align 4
  %132 = load i32, i32* @SWS_AREA, align 4
  %133 = call i32 @mp_image_swscale(%struct.mp_image* %5, %struct.mp_image* %6, i32 %132)
  br label %134

134:                                              ; preds = %87
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %84

137:                                              ; preds = %84
  br label %143

138:                                              ; preds = %30
  %139 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %140 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %141 = load i32, i32* @SWS_AREA, align 4
  %142 = call i32 @mp_image_swscale(%struct.mp_image* %139, %struct.mp_image* %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %137
  br label %144

144:                                              ; preds = %143, %23
  ret void
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mp_image_setfmt(%struct.mp_image*, i32) #1

declare dso_local i32 @mp_image_set_size(%struct.mp_image*, i32, i32) #1

declare dso_local i32 @mp_image_swscale(%struct.mp_image*, %struct.mp_image*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
