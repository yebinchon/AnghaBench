; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_undo.c_undo_allowed.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_undo.c_undo_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@curbuf = common dso_local global %struct.TYPE_2__* null, align 8
@e_modifiable = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@textlock = common dso_local global i64 0, align 8
@e_secure = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@e_sandbox = common dso_local global i32 0, align 4
@sandbox = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @undo_allowed() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curbuf, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @e_modifiable, align 4
  %8 = call i32 @_(i32 %7)
  %9 = call i32 @EMSG(i32 %8)
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %1, align 4
  br label %21

11:                                               ; preds = %0
  %12 = load i64, i64* @textlock, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* @e_secure, align 4
  %16 = call i32 @_(i32 %15)
  %17 = call i32 @EMSG(i32 %16)
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %1, align 4
  br label %21

19:                                               ; preds = %11
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %19, %14, %6
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @EMSG(i32) #1

declare dso_local i32 @_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
