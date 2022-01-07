; ModuleID = '/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_get_format_hwdec.c'
source_filename = "/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_get_format_hwdec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVCodecContext = type { i32, i32, %struct.mp_filter* }
%struct.mp_filter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Pixel formats supported by decoder:\00", align 1
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Codec profile: %s (0x%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Requesting pixfmt '%s' from decoder.\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AVCodecContext*, i32*)* @get_format_hwdec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_format_hwdec(%struct.AVCodecContext* %0, i32* %1) #0 {
  %3 = alloca %struct.AVCodecContext*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mp_filter*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.AVCodecContext* %0, %struct.AVCodecContext** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.AVCodecContext*, %struct.AVCodecContext** %3, align 8
  %13 = getelementptr inbounds %struct.AVCodecContext, %struct.AVCodecContext* %12, i32 0, i32 2
  %14 = load %struct.mp_filter*, %struct.mp_filter** %13, align 8
  store %struct.mp_filter* %14, %struct.mp_filter** %5, align 8
  %15 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %16 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %6, align 8
  %18 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %19 = call i32 (%struct.mp_filter*, i8*, ...) @MP_VERBOSE(%struct.mp_filter* %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %37, %2
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %20
  %29 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @av_get_pix_fmt_name(i32 %34)
  %36 = call i32 (%struct.mp_filter*, i8*, ...) @MP_VERBOSE(%struct.mp_filter* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %20

40:                                               ; preds = %20
  %41 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %42 = call i32 (%struct.mp_filter*, i8*, ...) @MP_VERBOSE(%struct.mp_filter* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.AVCodecContext*, %struct.AVCodecContext** %3, align 8
  %44 = getelementptr inbounds %struct.AVCodecContext, %struct.AVCodecContext* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.AVCodecContext*, %struct.AVCodecContext** %3, align 8
  %47 = getelementptr inbounds %struct.AVCodecContext, %struct.AVCodecContext* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @avcodec_profile_name(i32 %45, i32 %48)
  store i8* %49, i8** %8, align 8
  %50 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load i8*, i8** %8, align 8
  br label %56

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i8* [ %54, %53 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %55 ]
  %58 = load %struct.AVCodecContext*, %struct.AVCodecContext** %3, align 8
  %59 = getelementptr inbounds %struct.AVCodecContext, %struct.AVCodecContext* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (%struct.mp_filter*, i8*, ...) @MP_VERBOSE(%struct.mp_filter* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %57, i32 %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  %75 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  store i32 %75, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %112, %56
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %115

84:                                               ; preds = %76
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %88, %93
  br i1 %94, label %95, label %111

95:                                               ; preds = %84
  %96 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @init_generic_hwaccel(%struct.mp_filter* %96, i32 %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %115

105:                                              ; preds = %95
  %106 = load i32*, i32** %4, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %9, align 4
  br label %115

111:                                              ; preds = %84
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %76

115:                                              ; preds = %105, %104, %76
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  store i32 1, i32* %121, align 4
  %122 = load %struct.AVCodecContext*, %struct.AVCodecContext** %3, align 8
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @avcodec_default_get_format(%struct.AVCodecContext* %122, i32* %123)
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %119, %115
  %126 = load i32, i32* %9, align 4
  %127 = call i8* @av_get_pix_fmt_name(i32 %126)
  store i8* %127, i8** %11, align 8
  %128 = load %struct.mp_filter*, %struct.mp_filter** %5, align 8
  %129 = load i8*, i8** %11, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = load i8*, i8** %11, align 8
  br label %134

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %133, %131
  %135 = phi i8* [ %132, %131 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %133 ]
  %136 = call i32 (%struct.mp_filter*, i8*, ...) @MP_VERBOSE(%struct.mp_filter* %128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %135)
  %137 = load i32, i32* %9, align 4
  ret i32 %137
}

declare dso_local i32 @MP_VERBOSE(%struct.mp_filter*, i8*, ...) #1

declare dso_local i8* @av_get_pix_fmt_name(i32) #1

declare dso_local i8* @avcodec_profile_name(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @init_generic_hwaccel(%struct.mp_filter*, i32) #1

declare dso_local i32 @avcodec_default_get_format(%struct.AVCodecContext*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
