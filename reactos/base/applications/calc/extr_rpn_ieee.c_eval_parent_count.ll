; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_rpn_ieee.c_eval_parent_count.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_rpn_ieee.c_eval_parent_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@stack = common dso_local global %struct.TYPE_5__* null, align 8
@RPN_OPERATOR_PARENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eval_parent_count() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stack, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %1, align 8
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %17, %0
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RPN_OPERATOR_PARENT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %14, %7
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %1, align 8
  br label %4

22:                                               ; preds = %4
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
