; ModuleID = '/home/carl/AnghaBench/micropython/ports/esp8266/extr_ets_alt_task.c_ets_run.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/esp8266/extr_ets_alt_task.c_ets_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"ets_alt_task: ets_run\0A\00", align 1
@idle_arg = common dso_local global i32 0, align 4
@my_timer_isr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ets_run() #0 {
  store i8 0, i8* inttoptr (i64 1073727228 to i8*), align 1
  %1 = call i32 (...) @ets_intr_lock()
  %2 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 (...) @ets_intr_unlock()
  br label %4

4:                                                ; preds = %0, %14
  %5 = call i32 (...) @ets_loop_iter()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = call i32 (...) @ets_intr_lock()
  br i1 true, label %9, label %12

9:                                                ; preds = %7
  %10 = load i32, i32* @idle_arg, align 4
  %11 = call i32 @idle_cb(i32 %10)
  br label %12

12:                                               ; preds = %9, %7
  call void asm sideeffect "waiti 0", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %13 = call i32 (...) @ets_intr_unlock()
  br label %14

14:                                               ; preds = %12, %4
  br label %4
}

declare dso_local i32 @ets_intr_lock(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ets_intr_unlock(...) #1

declare dso_local i32 @ets_loop_iter(...) #1

declare dso_local i32 @idle_cb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 679}
