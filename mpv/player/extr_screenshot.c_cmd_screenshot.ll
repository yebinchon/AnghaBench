; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_screenshot.c_cmd_screenshot.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_screenshot.c_cmd_screenshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, i32, %struct.TYPE_11__*, %struct.MPContext* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.MPContext = type { %struct.TYPE_14__*, i32, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { %struct.image_writer_opts* }
%struct.image_writer_opts = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.mp_image = type opaque

@MODE_SUBTITLES = common dso_local global i32 0, align 4
@MSGL_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Taking screenshot failed.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmd_screenshot(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.image_writer_opts*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mp_image*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %14, %struct.mp_cmd_ctx** %3, align 8
  %15 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %15, i32 0, i32 3
  %17 = load %struct.MPContext*, %struct.MPContext** %16, align 8
  store %struct.MPContext* %17, %struct.MPContext** %4, align 8
  %18 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %18, i32 0, i32 2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 3
  store i32 %25, i32* %5, align 4
  %26 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %26, i32 0, i32 2
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %33, i32 0, i32 2
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %32, %39
  %41 = and i32 %40, 8
  store i32 %41, i32* %6, align 4
  %42 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %42, i32 0, i32 2
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 16
  store i32 %49, i32* %7, align 4
  %50 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %51 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %50, i32 0, i32 2
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  store %struct.TYPE_15__* %52, %struct.TYPE_15__** %8, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @MODE_SUBTITLES, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %1
  %57 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %58 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @osd_get_render_subs_in_filter(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %56, %1
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %102, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %97

69:                                               ; preds = %66
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = icmp ne %struct.TYPE_16__* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = call i32 @TA_FREEP(%struct.TYPE_16__** %76)
  br label %145

78:                                               ; preds = %69
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %80 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %81 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @mp_cmd_clone(i32 %82)
  %84 = call %struct.TYPE_16__* @talloc_steal(%struct.TYPE_15__* %79, i32 %83)
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  store %struct.TYPE_16__* %84, %struct.TYPE_16__** %86, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, 16
  store i32 %96, i32* %94, align 4
  br label %101

97:                                               ; preds = %66
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = call i32 @TA_FREEP(%struct.TYPE_16__** %99)
  br label %101

101:                                              ; preds = %97, %78
  br label %102

102:                                              ; preds = %101, %63
  %103 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %104 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  %105 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %106 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %105, i32 0, i32 0
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load %struct.image_writer_opts*, %struct.image_writer_opts** %108, align 8
  store %struct.image_writer_opts* %109, %struct.image_writer_opts** %9, align 8
  %110 = load %struct.image_writer_opts*, %struct.image_writer_opts** %9, align 8
  %111 = call i32 @image_writer_high_depth(%struct.image_writer_opts* %110)
  store i32 %111, i32* %10, align 4
  %112 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i8* @screenshot_get(%struct.MPContext* %112, i32 %113, i32 %114)
  %116 = bitcast i8* %115 to %struct.mp_image*
  store %struct.mp_image* %116, %struct.mp_image** %11, align 8
  %117 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  %118 = icmp ne %struct.mp_image* %117, null
  br i1 %118, label %119, label %137

119:                                              ; preds = %102
  %120 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %121 = load %struct.image_writer_opts*, %struct.image_writer_opts** %9, align 8
  %122 = call i32 @image_writer_file_ext(%struct.image_writer_opts* %121)
  %123 = call i8* @gen_fname(%struct.mp_cmd_ctx* %120, i32 %122)
  store i8* %123, i8** %12, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %134

126:                                              ; preds = %119
  %127 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %128 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  %129 = bitcast %struct.mp_image* %128 to i8*
  %130 = load i8*, i8** %12, align 8
  %131 = call i32 @write_screenshot(%struct.mp_cmd_ctx* %127, i8* %129, i8* %130, i32* null)
  %132 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %133 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %126, %119
  %135 = load i8*, i8** %12, align 8
  %136 = call i32 @talloc_free(i8* %135)
  br label %141

137:                                              ; preds = %102
  %138 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %139 = load i32, i32* @MSGL_ERR, align 4
  %140 = call i32 @mp_cmd_msg(%struct.mp_cmd_ctx* %138, i32 %139, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %141

141:                                              ; preds = %137, %134
  %142 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  %143 = bitcast %struct.mp_image* %142 to i8*
  %144 = call i32 @talloc_free(i8* %143)
  br label %145

145:                                              ; preds = %141, %74
  ret void
}

declare dso_local i64 @osd_get_render_subs_in_filter(i32) #1

declare dso_local i32 @TA_FREEP(%struct.TYPE_16__**) #1

declare dso_local %struct.TYPE_16__* @talloc_steal(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @mp_cmd_clone(i32) #1

declare dso_local i32 @image_writer_high_depth(%struct.image_writer_opts*) #1

declare dso_local i8* @screenshot_get(%struct.MPContext*, i32, i32) #1

declare dso_local i8* @gen_fname(%struct.mp_cmd_ctx*, i32) #1

declare dso_local i32 @image_writer_file_ext(%struct.image_writer_opts*) #1

declare dso_local i32 @write_screenshot(%struct.mp_cmd_ctx*, i8*, i8*, i32*) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i32 @mp_cmd_msg(%struct.mp_cmd_ctx*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
