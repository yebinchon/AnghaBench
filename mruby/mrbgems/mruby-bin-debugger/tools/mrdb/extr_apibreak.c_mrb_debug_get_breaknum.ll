; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apibreak.c_mrb_debug_get_breaknum.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-bin-debugger/tools/mrdb/extr_apibreak.c_mrb_debug_get_breaknum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MRB_DEBUG_INVALID_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrb_debug_get_breaknum(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @MRB_DEBUG_INVALID_ARGUMENT, align 4
  store i32 %12, i32* %3, align 4
  br label %17

13:                                               ; preds = %8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %11
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
