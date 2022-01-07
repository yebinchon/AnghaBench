; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_ui.c_read_error_exit.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_ui.c_read_error_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@silent_mode = common dso_local global i64 0, align 8
@IObuff = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Vim: Error reading input, exiting...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_error_exit() #0 {
  %1 = load i64, i64* @silent_mode, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 @getout(i32 0)
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i32, i32* @IObuff, align 4
  %7 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @STRCPY(i32 %6, i32 %7)
  %9 = call i32 (...) @preserve_exit()
  ret void
}

declare dso_local i32 @getout(i32) #1

declare dso_local i32 @STRCPY(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @preserve_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
