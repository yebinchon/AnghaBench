; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_texture_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_texture_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* (i32, i32, i32, i32, i32, i32**, i32)* }

@thread_graphics = common dso_local global %struct.TYPE_5__* null, align 8
@GS_BUILD_MIPMAPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"gs_texture_create\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [89 x i8] c"Cannot use mipmaps with a non-power-of-two texture.  Disabling mipmaps for this texture.\00", align 1
@GS_RENDER_TARGET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [77 x i8] c"Cannot use mipmaps with render targets.  Disabling mipmaps for this texture.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @gs_texture_create(i32 %0, i32 %1, i32 %2, i32 %3, i32** %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32** %4, i32*** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @thread_graphics, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %14, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @is_pow2(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @is_pow2(i32 %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %21, %6
  %26 = phi i1 [ false, %6 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @GS_BUILD_MIPMAPS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 1
  br label %35

35:                                               ; preds = %32, %25
  %36 = phi i1 [ true, %25 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %16, align 4
  %38 = call i32 @gs_valid(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i32* null, i32** %7, align 8
  br label %84

41:                                               ; preds = %35
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @LOG_WARNING, align 4
  %49 = call i32 @blog(i32 %48, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  %50 = load i32, i32* @GS_BUILD_MIPMAPS, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %13, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %13, align 4
  store i32 1, i32* %11, align 4
  br label %54

54:                                               ; preds = %47, %44, %41
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @GS_RENDER_TARGET, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load i32, i32* @LOG_WARNING, align 4
  %64 = call i32 @blog(i32 %63, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @GS_BUILD_MIPMAPS, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %13, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %13, align 4
  store i32 1, i32* %11, align 4
  br label %69

69:                                               ; preds = %62, %57, %54
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32* (i32, i32, i32, i32, i32, i32**, i32)*, i32* (i32, i32, i32, i32, i32, i32**, i32)** %72, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32**, i32*** %12, align 8
  %82 = load i32, i32* %13, align 4
  %83 = call i32* %73(i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32** %81, i32 %82)
  store i32* %83, i32** %7, align 8
  br label %84

84:                                               ; preds = %69, %40
  %85 = load i32*, i32** %7, align 8
  ret i32* %85
}

declare dso_local i64 @is_pow2(i32) #1

declare dso_local i32 @gs_valid(i8*) #1

declare dso_local i32 @blog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
