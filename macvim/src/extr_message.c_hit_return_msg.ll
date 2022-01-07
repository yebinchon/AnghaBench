; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_message.c_hit_return_msg.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_message.c_hit_return_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_more = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@msg_didout = common dso_local global i64 0, align 8
@got_int = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Interrupt: \00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Press ENTER or type command to continue\00", align 1
@HLF_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @hit_return_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hit_return_msg() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @p_more, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @FALSE, align 4
  store i32 %3, i32* @p_more, align 4
  %4 = load i64, i64* @msg_didout, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @msg_putchar(i8 signext 10)
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i64, i64* @got_int, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = call i32 @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @MSG_PUTS(i32 %12)
  br label %14

14:                                               ; preds = %11, %8
  %15 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @HLF_R, align 4
  %17 = call i32 @hl_attr(i32 %16)
  %18 = call i32 @MSG_PUTS_ATTR(i32 %15, i32 %17)
  %19 = call i32 (...) @msg_use_printf()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = call i32 (...) @msg_clr_eos()
  br label %23

23:                                               ; preds = %21, %14
  %24 = load i32, i32* %1, align 4
  store i32 %24, i32* @p_more, align 4
  ret void
}

declare dso_local i32 @msg_putchar(i8 signext) #1

declare dso_local i32 @MSG_PUTS(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @MSG_PUTS_ATTR(i32, i32) #1

declare dso_local i32 @hl_attr(i32) #1

declare dso_local i32 @msg_use_printf(...) #1

declare dso_local i32 @msg_clr_eos(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
