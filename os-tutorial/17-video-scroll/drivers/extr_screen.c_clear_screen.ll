; ModuleID = '/home/carl/AnghaBench/os-tutorial/17-video-scroll/drivers/extr_screen.c_clear_screen.c'
source_filename = "/home/carl/AnghaBench/os-tutorial/17-video-scroll/drivers/extr_screen.c_clear_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_COLS = common dso_local global i32 0, align 4
@MAX_ROWS = common dso_local global i32 0, align 4
@VIDEO_ADDRESS = common dso_local global i8* null, align 8
@WHITE_ON_BLACK = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_screen() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @MAX_COLS, align 4
  %5 = load i32, i32* @MAX_ROWS, align 4
  %6 = mul nsw i32 %4, %5
  store i32 %6, i32* %1, align 4
  %7 = load i8*, i8** @VIDEO_ADDRESS, align 8
  store i8* %7, i8** %3, align 8
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %25, %0
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* %2, align 4
  %15 = mul nsw i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %13, i64 %16
  store i8 32, i8* %17, align 1
  %18 = load i8, i8* @WHITE_ON_BLACK, align 1
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %2, align 4
  %21 = mul nsw i32 %20, 2
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %19, i64 %23
  store i8 %18, i8* %24, align 1
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %8

28:                                               ; preds = %8
  %29 = call i32 @get_offset(i32 0, i32 0)
  %30 = call i32 @set_cursor_offset(i32 %29)
  ret void
}

declare dso_local i32 @set_cursor_offset(i32) #1

declare dso_local i32 @get_offset(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
