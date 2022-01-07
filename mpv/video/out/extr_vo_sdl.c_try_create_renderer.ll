; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_sdl.c_try_create_renderer.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_sdl.c_try_create_renderer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { i32, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"SDL_CreateRenderer failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"SDL_GetRendererInfo failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Renderer '%s' does not fulfill requirements on this system\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Using %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo*, i32, i8*)* @try_create_renderer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_create_renderer(%struct.vo* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.priv*, align 8
  %9 = alloca %struct.TYPE_5__, align 4
  store %struct.vo* %0, %struct.vo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.vo*, %struct.vo** %5, align 8
  %11 = getelementptr inbounds %struct.vo, %struct.vo* %10, i32 0, i32 0
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @SDL_GetRenderDriverInfo(i32 %13, %struct.TYPE_5__* %9)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %89

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.priv*, %struct.priv** %8, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @is_good_renderer(%struct.TYPE_5__* %9, i8* %18, i32 %21, i32* null)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %89

25:                                               ; preds = %17
  %26 = load %struct.priv*, %struct.priv** %8, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @SDL_CreateRenderer(i32 %28, i32 %29, i32 0)
  %31 = load %struct.priv*, %struct.priv** %8, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.priv*, %struct.priv** %8, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %25
  %38 = load %struct.vo*, %struct.vo** %5, align 8
  %39 = call i32 (%struct.vo*, i8*, ...) @MP_ERR(%struct.vo* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %89

40:                                               ; preds = %25
  %41 = load %struct.priv*, %struct.priv** %8, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.priv*, %struct.priv** %8, align 8
  %45 = getelementptr inbounds %struct.priv, %struct.priv* %44, i32 0, i32 1
  %46 = call i64 @SDL_GetRendererInfo(i32 %43, %struct.TYPE_5__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load %struct.vo*, %struct.vo** %5, align 8
  %50 = call i32 (%struct.vo*, i8*, ...) @MP_ERR(%struct.vo* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.vo*, %struct.vo** %5, align 8
  %52 = call i32 @destroy_renderer(%struct.vo* %51)
  store i32 0, i32* %4, align 4
  br label %89

53:                                               ; preds = %40
  %54 = load %struct.priv*, %struct.priv** %8, align 8
  %55 = getelementptr inbounds %struct.priv, %struct.priv* %54, i32 0, i32 1
  %56 = load %struct.priv*, %struct.priv** %8, align 8
  %57 = getelementptr inbounds %struct.priv, %struct.priv* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.priv*, %struct.priv** %8, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 2
  %61 = call i32 @is_good_renderer(%struct.TYPE_5__* %55, i8* null, i32 %58, i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %53
  %64 = load %struct.vo*, %struct.vo** %5, align 8
  %65 = load %struct.priv*, %struct.priv** %8, align 8
  %66 = getelementptr inbounds %struct.priv, %struct.priv* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (%struct.vo*, i8*, ...) @MP_ERR(%struct.vo* %64, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load %struct.vo*, %struct.vo** %5, align 8
  %71 = call i32 @destroy_renderer(%struct.vo* %70)
  store i32 0, i32* %4, align 4
  br label %89

72:                                               ; preds = %53
  %73 = load %struct.priv*, %struct.priv** %8, align 8
  %74 = getelementptr inbounds %struct.priv, %struct.priv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load %struct.vo*, %struct.vo** %5, align 8
  %80 = load %struct.priv*, %struct.priv** %8, align 8
  %81 = getelementptr inbounds %struct.priv, %struct.priv* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @MP_INFO(%struct.vo* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.priv*, %struct.priv** %8, align 8
  %87 = getelementptr inbounds %struct.priv, %struct.priv* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %78, %72
  store i32 1, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %63, %48, %37, %24, %16
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i64 @SDL_GetRenderDriverInfo(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @is_good_renderer(%struct.TYPE_5__*, i8*, i32, i32*) #1

declare dso_local i32 @SDL_CreateRenderer(i32, i32, i32) #1

declare dso_local i32 @MP_ERR(%struct.vo*, i8*, ...) #1

declare dso_local i64 @SDL_GetRendererInfo(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @destroy_renderer(%struct.vo*) #1

declare dso_local i32 @MP_INFO(%struct.vo*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
