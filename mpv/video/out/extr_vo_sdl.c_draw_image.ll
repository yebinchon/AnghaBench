; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_sdl.c_draw_image.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_sdl.c_draw_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { i32, i32, %struct.TYPE_13__, %struct.TYPE_12__, i32 }
%struct.TYPE_13__ = type { i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i64, i64, i64, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, i64, i64, i64 }

@SDL_BLENDMODE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, %struct.TYPE_14__*)* @draw_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_image(%struct.vo* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.priv*, align 8
  %6 = alloca %struct.TYPE_14__, align 4
  %7 = alloca %struct.TYPE_15__, align 8
  %8 = alloca %struct.TYPE_15__, align 8
  store %struct.vo* %0, %struct.vo** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %9 = load %struct.vo*, %struct.vo** %3, align 8
  %10 = getelementptr inbounds %struct.vo, %struct.vo* %9, i32 0, i32 0
  %11 = load %struct.priv*, %struct.priv** %10, align 8
  store %struct.priv* %11, %struct.priv** %5, align 8
  %12 = load %struct.priv*, %struct.priv** %5, align 8
  %13 = getelementptr inbounds %struct.priv, %struct.priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @SDL_SetRenderDrawColor(i32 %14, i32 0, i32 0, i32 0, i32 255)
  %16 = load %struct.priv*, %struct.priv** %5, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @SDL_RenderClear(i32 %18)
  %20 = load %struct.priv*, %struct.priv** %5, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @SDL_BLENDMODE_NONE, align 4
  %24 = call i32 @SDL_SetTextureBlendMode(i32 %22, i32 %23)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = icmp ne %struct.TYPE_14__* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %2
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.priv*, %struct.priv** %5, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.vo*, %struct.vo** %3, align 8
  %34 = call i32 @lock_texture(%struct.vo* %33, %struct.TYPE_14__* %6)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = call i32 @talloc_free(%struct.TYPE_14__* %37)
  br label %118

39:                                               ; preds = %27
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = call i32 @mp_image_copy(%struct.TYPE_14__* %6, %struct.TYPE_14__* %40)
  %42 = load %struct.priv*, %struct.priv** %5, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @SDL_UnlockTexture(i32 %44)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = call i32 @talloc_free(%struct.TYPE_14__* %46)
  br label %48

48:                                               ; preds = %39, %2
  %49 = load %struct.priv*, %struct.priv** %5, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 3
  store i64 %52, i64* %53, align 8
  %54 = load %struct.priv*, %struct.priv** %5, align 8
  %55 = getelementptr inbounds %struct.priv, %struct.priv* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  store i64 %57, i64* %58, align 8
  %59 = load %struct.priv*, %struct.priv** %5, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.priv*, %struct.priv** %5, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %62, %66
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  store i64 %67, i64* %68, align 8
  %69 = load %struct.priv*, %struct.priv** %5, align 8
  %70 = getelementptr inbounds %struct.priv, %struct.priv* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.priv*, %struct.priv** %5, align 8
  %74 = getelementptr inbounds %struct.priv, %struct.priv* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %72, %76
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  store i64 %77, i64* %78, align 8
  %79 = load %struct.priv*, %struct.priv** %5, align 8
  %80 = getelementptr inbounds %struct.priv, %struct.priv* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 3
  store i64 %82, i64* %83, align 8
  %84 = load %struct.priv*, %struct.priv** %5, align 8
  %85 = getelementptr inbounds %struct.priv, %struct.priv* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  store i64 %87, i64* %88, align 8
  %89 = load %struct.priv*, %struct.priv** %5, align 8
  %90 = getelementptr inbounds %struct.priv, %struct.priv* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.priv*, %struct.priv** %5, align 8
  %94 = getelementptr inbounds %struct.priv, %struct.priv* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %92, %96
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  store i64 %97, i64* %98, align 8
  %99 = load %struct.priv*, %struct.priv** %5, align 8
  %100 = getelementptr inbounds %struct.priv, %struct.priv* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.priv*, %struct.priv** %5, align 8
  %104 = getelementptr inbounds %struct.priv, %struct.priv* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %102, %106
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  store i64 %107, i64* %108, align 8
  %109 = load %struct.priv*, %struct.priv** %5, align 8
  %110 = getelementptr inbounds %struct.priv, %struct.priv* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.priv*, %struct.priv** %5, align 8
  %113 = getelementptr inbounds %struct.priv, %struct.priv* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @SDL_RenderCopy(i32 %111, i32 %114, %struct.TYPE_15__* %7, %struct.TYPE_15__* %8)
  %116 = load %struct.vo*, %struct.vo** %3, align 8
  %117 = call i32 @draw_osd(%struct.vo* %116)
  br label %118

118:                                              ; preds = %48, %36
  ret void
}

declare dso_local i32 @SDL_SetRenderDrawColor(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SDL_RenderClear(i32) #1

declare dso_local i32 @SDL_SetTextureBlendMode(i32, i32) #1

declare dso_local i32 @lock_texture(%struct.vo*, %struct.TYPE_14__*) #1

declare dso_local i32 @talloc_free(%struct.TYPE_14__*) #1

declare dso_local i32 @mp_image_copy(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @SDL_UnlockTexture(i32) #1

declare dso_local i32 @SDL_RenderCopy(i32, i32, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @draw_osd(%struct.vo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
