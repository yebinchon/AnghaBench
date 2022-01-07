; ModuleID = '/home/carl/AnghaBench/no-more-secrets/src/extr_nmstermio.c_nmstermio_init_terminal.c'
source_filename = "/home/carl/AnghaBench/no-more-secrets/src/extr_nmstermio.c_nmstermio_init_terminal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clearScr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nmstermio_init_terminal() #0 {
  %1 = call i32 @nmstermio_set_terminal(i32 0)
  %2 = load i64, i64* @clearScr, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = call i32 (...) @CURSOR_SAVE()
  %6 = call i32 (...) @SCREEN_SAVE()
  %7 = call i32 (...) @CLEAR_SCR()
  %8 = call i32 (...) @CURSOR_HOME()
  %9 = call i32 (...) @CURSOR_HIDE()
  br label %10

10:                                               ; preds = %4, %0
  ret void
}

declare dso_local i32 @nmstermio_set_terminal(i32) #1

declare dso_local i32 @CURSOR_SAVE(...) #1

declare dso_local i32 @SCREEN_SAVE(...) #1

declare dso_local i32 @CLEAR_SCR(...) #1

declare dso_local i32 @CURSOR_HOME(...) #1

declare dso_local i32 @CURSOR_HIDE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
