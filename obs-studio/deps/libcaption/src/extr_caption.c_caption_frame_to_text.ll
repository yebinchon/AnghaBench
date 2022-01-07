; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_caption.c_caption_frame_to_text.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_caption.c_caption_frame_to_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCREEN_ROWS = common dso_local global i32 0, align 4
@SCREEN_COLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"\0D\0A\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @caption_frame_to_text(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %11, align 8
  %14 = load i8*, i8** %4, align 8
  store i8 0, i8* %14, align 1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %69, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SCREEN_ROWS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %72

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %65, %19
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @SCREEN_COLS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %68

27:                                               ; preds = %23
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i8* @caption_frame_read_char(i32* %28, i32 %29, i32 %30, i32* %12, i32* %7)
  store i8* %31, i8** %13, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = call i64 @utf8_char_length(i8* %32)
  %34 = icmp slt i64 0, %33
  br i1 %34, label %35, label %64

35:                                               ; preds = %27
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 0, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %13, align 8
  %40 = call i32 @utf8_char_whitespace(i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %64, label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 0, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @memcpy(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  store i8* %49, i8** %4, align 8
  %50 = load i64, i64* %11, align 8
  %51 = add i64 %50, 2
  store i64 %51, i64* %11, align 8
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %45, %42
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = call i64 @utf8_char_copy(i8* %53, i8* %54)
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 %56
  store i8* %58, i8** %4, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %11, align 8
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %52, %38, %27
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %23

68:                                               ; preds = %23
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %15

72:                                               ; preds = %15
  %73 = load i64, i64* %11, align 8
  ret i64 %73
}

declare dso_local i8* @caption_frame_read_char(i32*, i32, i32, i32*, i32*) #1

declare dso_local i64 @utf8_char_length(i8*) #1

declare dso_local i32 @utf8_char_whitespace(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @utf8_char_copy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
