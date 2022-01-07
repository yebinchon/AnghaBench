; ModuleID = '/home/carl/AnghaBench/postgres/contrib/auto_explain/extr_auto_explain.c__PG_fini.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/auto_explain/extr_auto_explain.c__PG_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prev_ExecutorStart = common dso_local global i32 0, align 4
@ExecutorStart_hook = common dso_local global i32 0, align 4
@prev_ExecutorRun = common dso_local global i32 0, align 4
@ExecutorRun_hook = common dso_local global i32 0, align 4
@prev_ExecutorFinish = common dso_local global i32 0, align 4
@ExecutorFinish_hook = common dso_local global i32 0, align 4
@prev_ExecutorEnd = common dso_local global i32 0, align 4
@ExecutorEnd_hook = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_PG_fini() #0 {
  %1 = load i32, i32* @prev_ExecutorStart, align 4
  store i32 %1, i32* @ExecutorStart_hook, align 4
  %2 = load i32, i32* @prev_ExecutorRun, align 4
  store i32 %2, i32* @ExecutorRun_hook, align 4
  %3 = load i32, i32* @prev_ExecutorFinish, align 4
  store i32 %3, i32* @ExecutorFinish_hook, align 4
  %4 = load i32, i32* @prev_ExecutorEnd, align 4
  store i32 %4, i32* @ExecutorEnd_hook, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
