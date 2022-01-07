; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_message.c_msg_end_prompt.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_message.c_msg_end_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i8* null, align 8
@need_wait_return = common dso_local global i8* null, align 8
@emsg_on_display = common dso_local global i8* null, align 8
@msg_row = common dso_local global i32 0, align 4
@cmdline_row = common dso_local global i32 0, align 4
@msg_col = common dso_local global i64 0, align 8
@lines_left = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msg_end_prompt() #0 {
  %1 = load i8*, i8** @FALSE, align 8
  store i8* %1, i8** @need_wait_return, align 8
  %2 = load i8*, i8** @FALSE, align 8
  store i8* %2, i8** @emsg_on_display, align 8
  %3 = load i32, i32* @msg_row, align 4
  store i32 %3, i32* @cmdline_row, align 4
  store i64 0, i64* @msg_col, align 8
  %4 = call i32 (...) @msg_clr_eos()
  store i32 -1, i32* @lines_left, align 4
  ret void
}

declare dso_local i32 @msg_clr_eos(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
