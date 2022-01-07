; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/tetris/extr_tetris_text.c_add_piece_to_board.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/tetris/extr_tetris_text.c_add_piece_to_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([7 x i8]*, [10 x i8]*, i32, i32)* @add_piece_to_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_piece_to_board([7 x i8]* %0, [10 x i8]* %1, i32 %2, i32 %3) #0 {
  %5 = alloca [7 x i8]*, align 8
  %6 = alloca [10 x i8]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store [7 x i8]* %0, [7 x i8]** %5, align 8
  store [10 x i8]* %1, [10 x i8]** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %53, %4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 7
  br i1 %13, label %14, label %56

14:                                               ; preds = %11
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %49, %14
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 7
  br i1 %17, label %18, label %52

18:                                               ; preds = %15
  %19 = load [7 x i8]*, [7 x i8]** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [7 x i8], [7 x i8]* %19, i64 %21
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [7 x i8], [7 x i8]* %22, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %18
  %29 = load [7 x i8]*, [7 x i8]** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [7 x i8], [7 x i8]* %29, i64 %31
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [7 x i8], [7 x i8]* %32, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = load [10 x i8]*, [10 x i8]** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [10 x i8], [10 x i8]* %37, i64 %41
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [10 x i8], [10 x i8]* %42, i64 0, i64 %46
  store i8 %36, i8* %47, align 1
  br label %48

48:                                               ; preds = %28, %18
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %15

52:                                               ; preds = %15
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %11

56:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
