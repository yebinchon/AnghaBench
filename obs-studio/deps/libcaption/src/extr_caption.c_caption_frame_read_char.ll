; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_caption.c_caption_frame_read_char.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_caption.c_caption_frame_read_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32*, i32 }

@eia608_style_white = common dso_local global i32 0, align 4
@EIA608_CHAR_NULL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @caption_frame_read_char(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call %struct.TYPE_6__* @frame_buffer_cell(i32* %14, i32 %15, i32 %16)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %12, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %5
  %21 = load i32*, i32** %10, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @eia608_style_white, align 4
  %25 = load i32*, i32** %10, align 8
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32*, i32** %11, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32*, i32** %11, align 8
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32*, i32** @EIA608_CHAR_NULL, align 8
  store i32* %32, i32** %6, align 8
  br label %54

33:                                               ; preds = %5
  %34 = load i32*, i32** %10, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %10, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %36, %33
  %42 = load i32*, i32** %11, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %11, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %41
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32* %53, i32** %6, align 8
  br label %54

54:                                               ; preds = %49, %31
  %55 = load i32*, i32** %6, align 8
  ret i32* %55
}

declare dso_local %struct.TYPE_6__* @frame_buffer_cell(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
