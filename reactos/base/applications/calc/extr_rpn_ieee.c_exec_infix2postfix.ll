; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_rpn_ieee.c_exec_infix2postfix.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_rpn_ieee.c_exec_infix2postfix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@RPN_OPERATOR_EQUAL = common dso_local global i32 0, align 4
@calc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@RPN_OPERATOR_PERCENT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@percent_mode = common dso_local global i32 0, align 4
@RPN_OPERATOR_NONE = common dso_local global i32 0, align 4
@RPN_OPERATOR_PARENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exec_infix2postfix(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i64 (...) @is_stack_empty()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @RPN_OPERATOR_EQUAL, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 2), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %46

17:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %46

18:                                               ; preds = %9, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @RPN_OPERATOR_PERCENT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* @percent_mode, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 1), align 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = call i32 @push(%struct.TYPE_4__* %6)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @RPN_OPERATOR_NONE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %46

37:                                               ; preds = %24
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @RPN_OPERATOR_PARENT, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @calc, i32 0, i32 0), align 8
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @evalStack(i32* %43)
  br label %45

45:                                               ; preds = %41, %37
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %36, %17, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @is_stack_empty(...) #1

declare dso_local i32 @push(%struct.TYPE_4__*) #1

declare dso_local i32 @evalStack(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
