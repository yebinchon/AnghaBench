; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_misc1.c_changed.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_misc1.c_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }

@curbuf = common dso_local global %struct.TYPE_4__* null, align 8
@msg_scroll = common dso_local global i32 0, align 4
@need_wait_return = common dso_local global i64 0, align 8
@emsg_silent = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@xim_changed_while_preediting = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @changed() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curbuf, align 8
  %3 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %4 = load i32, i32* %3, align 8
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @msg_scroll, align 4
  store i32 %7, i32* %1, align 4
  %8 = call i32 @change_warning(i32 0)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curbuf, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %6
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curbuf, align 8
  %15 = call i32 @ml_open_file(%struct.TYPE_4__* %14)
  %16 = load i64, i64* @need_wait_return, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load i64, i64* @emsg_silent, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = call i32 (...) @out_flush()
  %23 = load i32, i32* @TRUE, align 4
  %24 = call i32 @ui_delay(i64 2000, i32 %23)
  %25 = load i32, i32* @TRUE, align 4
  %26 = call i32 @wait_return(i32 %25)
  %27 = load i32, i32* %1, align 4
  store i32 %27, i32* @msg_scroll, align 4
  br label %28

28:                                               ; preds = %21, %18, %13
  br label %29

29:                                               ; preds = %28, %6
  %30 = call i32 (...) @changed_int()
  br label %31

31:                                               ; preds = %29, %0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curbuf, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  ret void
}

declare dso_local i32 @change_warning(i32) #1

declare dso_local i32 @ml_open_file(%struct.TYPE_4__*) #1

declare dso_local i32 @out_flush(...) #1

declare dso_local i32 @ui_delay(i64, i32) #1

declare dso_local i32 @wait_return(i32) #1

declare dso_local i32 @changed_int(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
