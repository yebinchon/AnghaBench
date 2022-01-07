; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/vim/extr_vim.h_VIM_LEADER.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_ez/keymaps/vim/extr_vim.h_VIM_LEADER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIM_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"\1B[32mc\1B[0m\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"\1B[32mi\1B[0m\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"\1B[32md\1B[0m\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"\1B[32mv\1B[0m\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\E2\9D\8E\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VIM_LEADER(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @VIM_QUEUE, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %19 [
    i32 133, label %5
    i32 132, label %7
    i32 131, label %9
    i32 130, label %11
    i32 129, label %13
    i32 128, label %15
    i32 134, label %17
  ]

5:                                                ; preds = %1
  %6 = call i32 @print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %19

7:                                                ; preds = %1
  %8 = call i32 @print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %19

9:                                                ; preds = %1
  %10 = call i32 @print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %19

11:                                               ; preds = %1
  %12 = call i32 @print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %19

13:                                               ; preds = %1
  %14 = call i32 @print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %19

15:                                               ; preds = %1
  %16 = call i32 @print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %19

17:                                               ; preds = %1
  %18 = call i32 @print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %19

19:                                               ; preds = %1, %17, %15, %13, %11, %9, %7, %5
  ret void
}

declare dso_local i32 @print(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
