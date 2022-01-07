; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xshm-input.c_xshm_video_tick.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-capture/extr_xshm-input.c_xshm_video_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@data = common dso_local global %struct.TYPE_6__* null, align 8
@XCB_IMAGE_FORMAT_Z_PIXMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, float)* @xshm_video_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xshm_video_tick(i8* %0, float %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store float %1, float* %4, align 4
  %9 = load float, float* %4, align 4
  %10 = call i32 @UNUSED_PARAMETER(float %9)
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @XSHM_DATA(i8* %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %97

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @obs_source_showing(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %97

25:                                               ; preds = %18
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @XCB_IMAGE_FORMAT_Z_PIXMAP, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @xcb_shm_get_image_unchecked(i32 %28, i32 %33, i32 %36, i32 %39, i32 %42, i32 %45, i32 -1, i32 %46, i32 %51, i32 0)
  store i32 %52, i32* %5, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @xcb_xfixes_get_cursor_image_unchecked(i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32* @xcb_shm_get_image_reply(i32 %59, i32 %60, i32* null)
  store i32* %61, i32** %6, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32* @xcb_xfixes_get_cursor_image_reply(i32 %64, i32 %65, i32* null)
  store i32* %66, i32** %8, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %25
  br label %92

70:                                               ; preds = %25
  %71 = call i32 (...) @obs_enter_graphics()
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %83, 4
  %85 = call i32 @gs_texture_set_image(i32 %74, i8* %80, i32 %84, i32 0)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @data, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @xcb_xcursor_update(i32 %88, i32* %89)
  %91 = call i32 (...) @obs_leave_graphics()
  br label %92

92:                                               ; preds = %70, %69
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @free(i32* %93)
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @free(i32* %95)
  br label %97

97:                                               ; preds = %92, %24, %17
  ret void
}

declare dso_local i32 @UNUSED_PARAMETER(float) #1

declare dso_local i32 @XSHM_DATA(i8*) #1

declare dso_local i32 @obs_source_showing(i32) #1

declare dso_local i32 @xcb_shm_get_image_unchecked(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xcb_xfixes_get_cursor_image_unchecked(i32) #1

declare dso_local i32* @xcb_shm_get_image_reply(i32, i32, i32*) #1

declare dso_local i32* @xcb_xfixes_get_cursor_image_reply(i32, i32, i32*) #1

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @gs_texture_set_image(i32, i8*, i32, i32) #1

declare dso_local i32 @xcb_xcursor_update(i32, i32*) #1

declare dso_local i32 @obs_leave_graphics(...) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
