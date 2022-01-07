; ModuleID = '/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi.c_try_format_pixfmt.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_vaapi.c_try_format_pixfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec = type { %struct.priv_owner* }
%struct.priv_owner = type { i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.mp_image = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@AV_PIX_FMT_VAAPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_hwdec*, i32)* @try_format_pixfmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_format_pixfmt(%struct.ra_hwdec* %0, i32 %1) #0 {
  %3 = alloca %struct.ra_hwdec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.priv_owner*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.mp_image*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store %struct.ra_hwdec* %0, %struct.ra_hwdec** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %14 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %13, i32 0, i32 0
  %15 = load %struct.priv_owner*, %struct.priv_owner** %14, align 8
  store %struct.priv_owner* %15, %struct.priv_owner** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @pixfmt2imgfmt(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %132

21:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %52, %21
  %23 = load %struct.priv_owner*, %struct.priv_owner** %5, align 8
  %24 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.priv_owner*, %struct.priv_owner** %5, align 8
  %29 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %27, %22
  %37 = phi i1 [ false, %22 ], [ %35, %27 ]
  br i1 %37, label %38, label %55

38:                                               ; preds = %36
  %39 = load %struct.priv_owner*, %struct.priv_owner** %5, align 8
  %40 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %132

49:                                               ; preds = %38
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %22

55:                                               ; preds = %36
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %9, align 8
  store %struct.mp_image* null, %struct.mp_image** %10, align 8
  store i32* null, i32** %11, align 8
  %56 = load %struct.priv_owner*, %struct.priv_owner** %5, align 8
  %57 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.TYPE_10__* @av_hwframe_ctx_alloc(i32 %60)
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %9, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %63 = icmp ne %struct.TYPE_10__* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %55
  br label %127

65:                                               ; preds = %55
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = bitcast i8* %69 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** %12, align 8
  %71 = load i32, i32* @AV_PIX_FMT_VAAPI, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store i32 128, i32* %78, align 4
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  store i32 128, i32* %80, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %82 = call i64 @av_hwframe_ctx_init(%struct.TYPE_10__* %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %65
  br label %127

85:                                               ; preds = %65
  %86 = call i32* (...) @av_frame_alloc()
  store i32* %86, i32** %11, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  br label %127

90:                                               ; preds = %85
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = call i64 @av_hwframe_get_buffer(%struct.TYPE_10__* %91, i32* %92, i32 0)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %127

96:                                               ; preds = %90
  %97 = load i32*, i32** %11, align 8
  %98 = call %struct.mp_image* @mp_image_from_av_frame(i32* %97)
  store %struct.mp_image* %98, %struct.mp_image** %10, align 8
  %99 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %100 = icmp ne %struct.mp_image* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %103 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %102, i32 0, i32 0
  %104 = call i32 @mp_image_params_valid(i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %101, %96
  br label %127

107:                                              ; preds = %101
  %108 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %109 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %110 = call i64 @try_format_map(%struct.ra_hwdec* %108, %struct.mp_image* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %107
  %113 = load %struct.priv_owner*, %struct.priv_owner** %5, align 8
  %114 = load %struct.priv_owner*, %struct.priv_owner** %5, align 8
  %115 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @MP_TARRAY_APPEND(%struct.priv_owner* %113, i32* %116, i32 %117, i32 %118)
  %120 = load %struct.priv_owner*, %struct.priv_owner** %5, align 8
  %121 = load %struct.priv_owner*, %struct.priv_owner** %5, align 8
  %122 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @MP_TARRAY_APPEND(%struct.priv_owner* %120, i32* %123, i32 %124, i32 0)
  br label %126

126:                                              ; preds = %112, %107
  br label %127

127:                                              ; preds = %126, %106, %95, %89, %84, %64
  %128 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %129 = call i32 @talloc_free(%struct.mp_image* %128)
  %130 = call i32 @av_frame_free(i32** %11)
  %131 = call i32 @av_buffer_unref(%struct.TYPE_10__** %9)
  br label %132

132:                                              ; preds = %127, %48, %20
  ret void
}

declare dso_local i32 @pixfmt2imgfmt(i32) #1

declare dso_local %struct.TYPE_10__* @av_hwframe_ctx_alloc(i32) #1

declare dso_local i64 @av_hwframe_ctx_init(%struct.TYPE_10__*) #1

declare dso_local i32* @av_frame_alloc(...) #1

declare dso_local i64 @av_hwframe_get_buffer(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local %struct.mp_image* @mp_image_from_av_frame(i32*) #1

declare dso_local i32 @mp_image_params_valid(i32*) #1

declare dso_local i64 @try_format_map(%struct.ra_hwdec*, %struct.mp_image*) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.priv_owner*, i32*, i32, i32) #1

declare dso_local i32 @talloc_free(%struct.mp_image*) #1

declare dso_local i32 @av_frame_free(i32**) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_10__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
