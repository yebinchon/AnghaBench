; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__bmp_info.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__bmp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32*, i32*)* @stbi__bmp_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__bmp_info(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 255, i32* %12, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = call i8* @stbi__bmp_parse_header(%struct.TYPE_7__* %13, %struct.TYPE_8__* %11)
  store i8* %14, i8** %10, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = call i32 @stbi__rewind(%struct.TYPE_7__* %15)
  %17 = load i8*, i8** %10, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %35

20:                                               ; preds = %4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 4, i32 3
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  store i32 1, i32* %5, align 4
  br label %35

35:                                               ; preds = %20, %19
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i8* @stbi__bmp_parse_header(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @stbi__rewind(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
