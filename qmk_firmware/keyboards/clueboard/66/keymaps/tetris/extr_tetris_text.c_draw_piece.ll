; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/tetris/extr_tetris_text.c_draw_piece.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/tetris/extr_tetris_text.c_draw_piece.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i32, i32, [7 x i8]*, [7 x i8]*)* @draw_piece to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_piece(i8 signext %0, i32 %1, i32 %2, [7 x i8]* %3, [7 x i8]* %4) #0 {
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [7 x i8]*, align 8
  %10 = alloca [7 x i8]*, align 8
  %11 = alloca i32, align 4
  store i8 %0, i8* %6, align 1
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store [7 x i8]* %3, [7 x i8]** %9, align 8
  store [7 x i8]* %4, [7 x i8]** %10, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %32, %5
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 7
  br i1 %14, label %15, label %35

15:                                               ; preds = %12
  %16 = load i8, i8* %6, align 1
  %17 = load [7 x i8]*, [7 x i8]** %9, align 8
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [7 x i8], [7 x i8]* %17, i64 %19
  %21 = getelementptr inbounds [7 x i8], [7 x i8]* %20, i64 0, i64 0
  %22 = load [7 x i8]*, [7 x i8]** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [7 x i8], [7 x i8]* %22, i64 %24
  %26 = getelementptr inbounds [7 x i8], [7 x i8]* %25, i64 0, i64 0
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %28, %29
  %31 = call i32 @draw_row(i8 signext %16, i8* %21, i8* %26, i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %15
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  br label %12

35:                                               ; preds = %12
  ret void
}

declare dso_local i32 @draw_row(i8 signext, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
