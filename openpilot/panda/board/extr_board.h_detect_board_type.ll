; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_board.h_detect_board_type.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_board.h_detect_board_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HW_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@hw_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Hardware type is UNKNOWN!\0A\00", align 1
@GPIOA = common dso_local global i32 0, align 4
@GPIOB = common dso_local global i32 0, align 4
@HW_TYPE_BLACK_PANDA = common dso_local global i32 0, align 4
@HW_TYPE_GREY_PANDA = common dso_local global i32 0, align 4
@HW_TYPE_PEDAL = common dso_local global i32 0, align 4
@HW_TYPE_UNO = common dso_local global i32 0, align 4
@HW_TYPE_WHITE_PANDA = common dso_local global i32 0, align 4
@PULL_DOWN = common dso_local global i32 0, align 4
@PULL_UP = common dso_local global i32 0, align 4
@board_black = common dso_local global i32 0, align 4
@board_grey = common dso_local global i32 0, align 4
@board_pedal = common dso_local global i32 0, align 4
@board_uno = common dso_local global i32 0, align 4
@board_white = common dso_local global i32 0, align 4
@current_board = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @detect_board_type() #0 {
  %1 = load i32, i32* @HW_TYPE_UNKNOWN, align 4
  store i32 %1, i32* @hw_type, align 4
  %2 = call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
