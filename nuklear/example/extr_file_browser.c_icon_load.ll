; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_file_browser.c_icon_load.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_file_browser.c_icon_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_image = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"[SDL]: failed to load image: %s\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_LINEAR_MIPMAP_NEAREST = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_S = common dso_local global i32 0, align 4
@GL_CLAMP_TO_EDGE = common dso_local global i32 0, align 4
@GL_TEXTURE_WRAP_T = common dso_local global i32 0, align 4
@GL_RGBA8 = common dso_local global i32 0, align 4
@GL_RGBA = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @icon_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icon_load(i8* %0) #0 {
  %2 = alloca %struct.nk_image, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @stbi_load(i8* %9, i32* %4, i32* %5, i32* %6, i32 0)
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @die(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = call i32 @glGenTextures(i32 1, i64* %7)
  %18 = load i32, i32* @GL_TEXTURE_2D, align 4
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @glBindTexture(i32 %18, i64 %19)
  %21 = load i32, i32* @GL_TEXTURE_2D, align 4
  %22 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %23 = load i32, i32* @GL_LINEAR_MIPMAP_NEAREST, align 4
  %24 = call i32 @glTexParameterf(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* @GL_TEXTURE_2D, align 4
  %26 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %27 = load i32, i32* @GL_LINEAR_MIPMAP_NEAREST, align 4
  %28 = call i32 @glTexParameterf(i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* @GL_TEXTURE_2D, align 4
  %30 = load i32, i32* @GL_TEXTURE_WRAP_S, align 4
  %31 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %32 = call i32 @glTexParameterf(i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* @GL_TEXTURE_2D, align 4
  %34 = load i32, i32* @GL_TEXTURE_WRAP_T, align 4
  %35 = load i32, i32* @GL_CLAMP_TO_EDGE, align 4
  %36 = call i32 @glTexParameterf(i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* @GL_TEXTURE_2D, align 4
  %38 = load i32, i32* @GL_RGBA8, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @GL_RGBA, align 4
  %42 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @glTexImage2D(i32 %37, i32 0, i32 %38, i32 %39, i32 %40, i32 0, i32 %41, i32 %42, i8* %43)
  %45 = load i32, i32* @GL_TEXTURE_2D, align 4
  %46 = call i32 @glGenerateMipmap(i32 %45)
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @stbi_image_free(i8* %47)
  %49 = load i64, i64* %7, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @nk_image_id(i32 %50)
  %52 = getelementptr inbounds %struct.nk_image, %struct.nk_image* %2, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.nk_image, %struct.nk_image* %2, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  ret i32 %54
}

declare dso_local i8* @stbi_load(i8*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @glGenTextures(i32, i64*) #1

declare dso_local i32 @glBindTexture(i32, i64) #1

declare dso_local i32 @glTexParameterf(i32, i32, i32) #1

declare dso_local i32 @glTexImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @glGenerateMipmap(i32) #1

declare dso_local i32 @stbi_image_free(i8*) #1

declare dso_local i32 @nk_image_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
