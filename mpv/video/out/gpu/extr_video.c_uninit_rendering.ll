; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_uninit_rendering.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_uninit_rendering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { i32, i32, i32*, i32, %struct.TYPE_2__*, i32*, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@SCALER_COUNT = common dso_local global i32 0, align 4
@SURFACES_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_video*)* @uninit_rendering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninit_rendering(%struct.gl_video* %0) #0 {
  %2 = alloca %struct.gl_video*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gl_video* %0, %struct.gl_video** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %21, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SCALER_COUNT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %14 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %15 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %14, i32 0, i32 14
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call i32 @uninit_scaler(%struct.gl_video* %13, i32* %19)
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %8

24:                                               ; preds = %8
  %25 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %26 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %29 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %28, i32 0, i32 13
  %30 = call i32 @ra_tex_free(i32 %27, i32* %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %65, %24
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %68

34:                                               ; preds = %31
  %35 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %36 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %39 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %38, i32 0, i32 12
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i32 @ra_tex_free(i32 %37, i32* %43)
  %45 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %46 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %49 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %48, i32 0, i32 11
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i32 @ra_tex_free(i32 %47, i32* %53)
  %55 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %56 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %59 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %58, i32 0, i32 10
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i32 @ra_tex_free(i32 %57, i32* %63)
  br label %65

65:                                               ; preds = %34
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %31

68:                                               ; preds = %31
  %69 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %70 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %73 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %72, i32 0, i32 9
  %74 = call i32 @ra_tex_free(i32 %71, i32* %73)
  %75 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %76 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %79 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %78, i32 0, i32 8
  %80 = call i32 @ra_tex_free(i32 %77, i32* %79)
  %81 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %82 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %85 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %84, i32 0, i32 7
  %86 = call i32 @ra_tex_free(i32 %83, i32* %85)
  %87 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %88 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %91 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %90, i32 0, i32 6
  %92 = call i32 @ra_tex_free(i32 %89, i32* %91)
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %107, %68
  %94 = load i32, i32* %5, align 4
  %95 = icmp slt i32 %94, 2
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %98 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %101 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = call i32 @ra_tex_free(i32 %99, i32* %105)
  br label %107

107:                                              ; preds = %96
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %93

110:                                              ; preds = %93
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %127, %110
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @SURFACES_MAX, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %111
  %116 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %117 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %120 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %119, i32 0, i32 4
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = call i32 @ra_tex_free(i32 %118, i32* %125)
  br label %127

127:                                              ; preds = %115
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %111

130:                                              ; preds = %111
  store i32 0, i32* %7, align 4
  br label %131

131:                                              ; preds = %148, %130
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %134 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %151

137:                                              ; preds = %131
  %138 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %139 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %142 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = call i32 @ra_tex_free(i32 %140, i32* %146)
  br label %148

148:                                              ; preds = %137
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %131

151:                                              ; preds = %131
  %152 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %153 = call i32 @gl_video_reset_surfaces(%struct.gl_video* %152)
  %154 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %155 = call i32 @gl_video_reset_hooks(%struct.gl_video* %154)
  %156 = load %struct.gl_video*, %struct.gl_video** %2, align 8
  %157 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @gl_sc_reset_error(i32 %158)
  ret void
}

declare dso_local i32 @uninit_scaler(%struct.gl_video*, i32*) #1

declare dso_local i32 @ra_tex_free(i32, i32*) #1

declare dso_local i32 @gl_video_reset_surfaces(%struct.gl_video*) #1

declare dso_local i32 @gl_video_reset_hooks(%struct.gl_video*) #1

declare dso_local i32 @gl_sc_reset_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
