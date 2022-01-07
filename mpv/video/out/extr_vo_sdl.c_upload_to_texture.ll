; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_sdl.c_upload_to_texture.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_sdl.c_upload_to_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SDL_PIXELFORMAT_ARGB8888 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Could not lock texture\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, i32*, i32, i32, i8*, i32)* @upload_to_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upload_to_texture(%struct.vo* %0, i32* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.vo*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.priv*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.vo*, %struct.vo** %7, align 8
  %17 = getelementptr inbounds %struct.vo, %struct.vo* %16, i32 0, i32 0
  %18 = load %struct.priv*, %struct.priv** %17, align 8
  store %struct.priv* %18, %struct.priv** %13, align 8
  %19 = load %struct.priv*, %struct.priv** %13, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SDL_PIXELFORMAT_ARGB8888, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %6
  %26 = load i32*, i32** %8, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @SDL_UpdateTexture(i32* %26, i32* null, i8* %27, i32 %28)
  br label %52

30:                                               ; preds = %6
  %31 = load i32*, i32** %8, align 8
  %32 = call i64 @SDL_LockTexture(i32* %31, i32* null, i8** %14, i32* %15)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.vo*, %struct.vo** %7, align 8
  %36 = call i32 @MP_ERR(%struct.vo* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %52

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i64, i64* @SDL_PIXELFORMAT_ARGB8888, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.priv*, %struct.priv** %13, align 8
  %44 = getelementptr inbounds %struct.priv, %struct.priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @SDL_ConvertPixels(i32 %38, i32 %39, i64 %40, i8* %41, i32 %42, i64 %46, i8* %47, i32 %48)
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @SDL_UnlockTexture(i32* %50)
  br label %52

52:                                               ; preds = %25, %37, %34
  ret void
}

declare dso_local i32 @SDL_UpdateTexture(i32*, i32*, i8*, i32) #1

declare dso_local i64 @SDL_LockTexture(i32*, i32*, i8**, i32*) #1

declare dso_local i32 @MP_ERR(%struct.vo*, i8*) #1

declare dso_local i32 @SDL_ConvertPixels(i32, i32, i64, i8*, i32, i64, i8*, i32) #1

declare dso_local i32 @SDL_UnlockTexture(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
