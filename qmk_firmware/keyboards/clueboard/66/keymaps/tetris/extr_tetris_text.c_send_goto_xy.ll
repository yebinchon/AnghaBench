; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/tetris/extr_tetris_text.c_send_goto_xy.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/keymaps/tetris/extr_tetris_text.c_send_goto_xy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curx = common dso_local global i32 0, align 4
@cury = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @send_goto_xy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_goto_xy(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %9, %2
  %6 = load i32, i32* @curx, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = call i32 (...) @tetris_send_right()
  %11 = load i32, i32* @curx, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @curx, align 4
  br label %5

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %18, %13
  %15 = load i32, i32* @curx, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = call i32 (...) @tetris_send_left()
  %20 = load i32, i32* @curx, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* @curx, align 4
  br label %14

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %27, %22
  %24 = load i32, i32* @cury, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = call i32 (...) @tetris_send_down()
  %29 = load i32, i32* @cury, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @cury, align 4
  br label %23

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %36, %31
  %33 = load i32, i32* @cury, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = call i32 (...) @tetris_send_up()
  %38 = load i32, i32* @cury, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* @cury, align 4
  br label %32

40:                                               ; preds = %32
  ret void
}

declare dso_local i32 @tetris_send_right(...) #1

declare dso_local i32 @tetris_send_left(...) #1

declare dso_local i32 @tetris_send_down(...) #1

declare dso_local i32 @tetris_send_up(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
