; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_rpn_mpfr.c_exec_infix2postfix.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_rpn_mpfr.c_exec_infix2postfix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@RPN_OPERATOR_EQUAL = common dso_local global i32 0, align 4
@calc = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
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
  %6 = alloca %struct.TYPE_5__, align 4
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
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @calc, i32 0, i32 1), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %52

17:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %52

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
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mpfr_init(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @rpn_copy(%struct.TYPE_6__* %29, i32* %30)
  %32 = load i32, i32* %5, align 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = call i32 @push(%struct.TYPE_5__* %6)
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mpfr_clear(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @RPN_OPERATOR_NONE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %52

43:                                               ; preds = %24
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @RPN_OPERATOR_PARENT, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @calc, i32 0, i32 0), align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @evalStack(i32* %49)
  br label %51

51:                                               ; preds = %47, %43
  store i32 1, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %42, %17, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @is_stack_empty(...) #1

declare dso_local i32 @mpfr_init(i32) #1

declare dso_local i32 @rpn_copy(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @push(%struct.TYPE_5__*) #1

declare dso_local i32 @mpfr_clear(i32) #1

declare dso_local i32 @evalStack(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
