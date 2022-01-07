; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_caption.c_caption_frame_from_text.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_caption.c_caption_frame_from_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }

@SCREEN_ROWS = common dso_local global i64 0, align 8
@SCREEN_COLS = common dso_local global i32 0, align 4
@eia608_style_white = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @caption_frame_from_text(%struct.TYPE_6__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64* %1, i64** %4, align 8
  %11 = load i64*, i64** %4, align 8
  %12 = call i32 @strlen(i64* %11)
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %5, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = call i32 @caption_frame_init(%struct.TYPE_6__* %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %80, %2
  %21 = load i64*, i64** %4, align 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @SCREEN_ROWS, align 8
  %30 = icmp ult i64 %28, %29
  br label %31

31:                                               ; preds = %27, %24, %20
  %32 = phi i1 [ false, %24 ], [ false, %20 ], [ %30, %27 ]
  br i1 %32, label %33, label %88

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %43, %33
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i64*, i64** %4, align 8
  %39 = call i64 @utf8_char_whitespace(i64* %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  br i1 %42, label %43, label %52

43:                                               ; preds = %41
  %44 = load i64*, i64** %4, align 8
  %45 = call i64 @utf8_char_length(i64* %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64*, i64** %4, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 %46
  store i64* %48, i64** %4, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %5, align 8
  %51 = sub nsw i64 %50, %49
  store i64 %51, i64* %5, align 8
  br label %34

52:                                               ; preds = %41
  %53 = load i64*, i64** %4, align 8
  %54 = load i32, i32* @SCREEN_COLS, align 4
  %55 = call i64 @utf8_wrap_length(i64* %53, i32 %54)
  store i64 %55, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %56

56:                                               ; preds = %77, %52
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = load i64*, i64** %4, align 8
  %62 = call i64 @utf8_char_length(i64* %61)
  store i64 %62, i64* %10, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = load i64, i64* %6, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i64, i64* %9, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* @eia608_style_white, align 4
  %69 = load i64*, i64** %4, align 8
  %70 = call i32 @caption_frame_write_char(%struct.TYPE_6__* %63, i32 %65, i32 %67, i32 %68, i32 0, i64* %69)
  %71 = load i64, i64* %10, align 8
  %72 = load i64*, i64** %4, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 %71
  store i64* %73, i64** %4, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %5, align 8
  %76 = sub nsw i64 %75, %74
  store i64 %76, i64* %5, align 8
  br label %77

77:                                               ; preds = %60
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %9, align 8
  br label %56

80:                                               ; preds = %56
  %81 = load i64, i64* %8, align 8
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 1, i32 0
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %6, align 8
  %87 = add i64 %86, %85
  store i64 %87, i64* %6, align 8
  br label %20

88:                                               ; preds = %31
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = call i32 @caption_frame_end(%struct.TYPE_6__* %89)
  ret i32 0
}

declare dso_local i32 @strlen(i64*) #1

declare dso_local i32 @caption_frame_init(%struct.TYPE_6__*) #1

declare dso_local i64 @utf8_char_whitespace(i64*) #1

declare dso_local i64 @utf8_char_length(i64*) #1

declare dso_local i64 @utf8_wrap_length(i64*, i32) #1

declare dso_local i32 @caption_frame_write_char(%struct.TYPE_6__*, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @caption_frame_end(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
