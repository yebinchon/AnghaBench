; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__gif_load.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__gif_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32*, i32)* @stbi__gif_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stbi__gif_load(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %13 = call i32 @memset(%struct.TYPE_4__* %12, i32 0, i32 16)
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32* @stbi__gif_load_next(i32* %14, %struct.TYPE_4__* %12, i32* %15, i32 %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = icmp eq i32* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32* null, i32** %11, align 8
  br label %22

22:                                               ; preds = %21, %5
  %23 = load i32*, i32** %11, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %25
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 4
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %10, align 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32* @stbi__convert_format(i32* %38, i32 4, i32 %39, i32 %41, i32 %43)
  store i32* %44, i32** %11, align 8
  br label %45

45:                                               ; preds = %37, %34, %25
  br label %55

46:                                               ; preds = %22
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @STBI_FREE(i64 %52)
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %45
  %56 = load i32*, i32** %11, align 8
  ret i32* %56
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32* @stbi__gif_load_next(i32*, %struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32* @stbi__convert_format(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @STBI_FREE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
