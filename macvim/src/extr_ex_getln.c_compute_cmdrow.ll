; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_ex_getln.c_compute_cmdrow.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_ex_getln.c_compute_cmdrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@exmode_active = common dso_local global i64 0, align 8
@msg_scrolled = common dso_local global i64 0, align 8
@Rows = common dso_local global i64 0, align 8
@cmdline_row = common dso_local global i64 0, align 8
@lastwin = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compute_cmdrow() #0 {
  %1 = load i64, i64* @exmode_active, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load i64, i64* @msg_scrolled, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3, %0
  %7 = load i64, i64* @Rows, align 8
  %8 = sub nsw i64 %7, 1
  store i64 %8, i64* @cmdline_row, align 8
  br label %19

9:                                                ; preds = %3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lastwin, align 8
  %11 = call i64 @W_WINROW(%struct.TYPE_4__* %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lastwin, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %11, %14
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lastwin, align 8
  %17 = call i64 @W_STATUS_HEIGHT(%struct.TYPE_4__* %16)
  %18 = add nsw i64 %15, %17
  store i64 %18, i64* @cmdline_row, align 8
  br label %19

19:                                               ; preds = %9, %6
  ret void
}

declare dso_local i64 @W_WINROW(%struct.TYPE_4__*) #1

declare dso_local i64 @W_STATUS_HEIGHT(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
