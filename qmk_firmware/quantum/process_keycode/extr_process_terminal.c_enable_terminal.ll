; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_terminal.c_enable_terminal.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_terminal.c_enable_terminal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@terminal_enabled = common dso_local global i32 0, align 4
@buffer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@cmd_buffer = common dso_local global i32 0, align 4
@CMD_BUFF_SIZE = common dso_local global i32 0, align 4
@arguments = common dso_local global i32* null, align 8
@terminal_prompt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enable_terminal() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* @terminal_enabled, align 4
  %2 = load i32, i32* @buffer, align 4
  %3 = call i32 @strcpy(i32 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @cmd_buffer, align 4
  %5 = load i32, i32* @CMD_BUFF_SIZE, align 4
  %6 = mul nsw i32 %5, 80
  %7 = call i32 @memset(i32 %4, i32 0, i32 %6)
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %18, %0
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 6
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load i32*, i32** @arguments, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strcpy(i32 %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %1, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %1, align 4
  br label %8

21:                                               ; preds = %8
  %22 = load i32, i32* @terminal_prompt, align 4
  %23 = call i32 @send_string(i32 %22)
  ret void
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @send_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
