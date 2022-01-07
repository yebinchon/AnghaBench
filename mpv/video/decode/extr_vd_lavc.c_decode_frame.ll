; ModuleID = '/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__*, i32, i64, i64, i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32* }
%struct.mp_image = type { i8*, i8*, i8*, i64* }

@AVERROR_EOF = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_filter*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.mp_filter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mp_filter*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mp_image*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %3, align 8
  %8 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %9 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %4, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 6
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %17, i32* %2, align 4
  br label %137

18:                                               ; preds = %1
  %19 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %20 = call i32 @prepare_decoding(%struct.mp_filter* %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %27 = call i32 @send_queued_packet(%struct.mp_filter* %26)
  br label %28

28:                                               ; preds = %25, %18
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = call i32 @avcodec_receive_frame(i32* %29, %struct.TYPE_7__* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @AVERROR_EOF, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %28
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %44 = call i32 @reset_avctx(%struct.mp_filter* %43)
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %137

47:                                               ; preds = %28
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @EAGAIN, align 4
  %53 = call i32 @AVERROR(i32 %52)
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.mp_filter*, %struct.mp_filter** %3, align 8
  %57 = call i32 @handle_err(%struct.mp_filter* %56)
  br label %58

58:                                               ; preds = %55, %50, %47
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %137

70:                                               ; preds = %59
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = call %struct.mp_image* @mp_image_from_av_frame(%struct.TYPE_7__* %75)
  store %struct.mp_image* %76, %struct.mp_image** %7, align 8
  %77 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %78 = icmp ne %struct.mp_image* %77, null
  br i1 %78, label %85, label %79

79:                                               ; preds = %70
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = call i32 @av_frame_unref(%struct.TYPE_7__* %82)
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %137

85:                                               ; preds = %70
  %86 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %87 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %86, i32 0, i32 3
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %85
  %93 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %94 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %93, i32 0, i32 3
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br label %99

99:                                               ; preds = %92, %85
  %100 = phi i1 [ true, %85 ], [ %98, %92 ]
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  %110 = call i8* @mp_pts_from_av(i32 %107, i32* %109)
  %111 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %112 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = call i8* @mp_pts_from_av(i32 %117, i32* %119)
  %121 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %122 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = call i32 @av_frame_unref(%struct.TYPE_7__* %125)
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %135 = call i32 @MP_TARRAY_APPEND(%struct.TYPE_6__* %127, i32 %130, i32 %133, %struct.mp_image* %134)
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %99, %79, %68, %45, %16
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @prepare_decoding(%struct.mp_filter*) #1

declare dso_local i32 @send_queued_packet(%struct.mp_filter*) #1

declare dso_local i32 @avcodec_receive_frame(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @reset_avctx(%struct.mp_filter*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @handle_err(%struct.mp_filter*) #1

declare dso_local %struct.mp_image* @mp_image_from_av_frame(%struct.TYPE_7__*) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_7__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @mp_pts_from_av(i32, i32*) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.TYPE_6__*, i32, i32, %struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
