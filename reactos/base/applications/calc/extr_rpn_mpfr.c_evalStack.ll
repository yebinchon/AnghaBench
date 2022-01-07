; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_rpn_mpfr.c_evalStack.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_rpn_mpfr.c_evalStack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@operator_list = common dso_local global %struct.TYPE_15__* null, align 8
@RPN_OPERATOR_PARENT = common dso_local global i64 0, align 8
@calc = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@RPN_OPERATOR_EQUAL = common dso_local global i64 0, align 8
@RPN_OPERATOR_PERCENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @evalStack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evalStack(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @mpfr_init(i32 %8)
  %10 = call %struct.TYPE_13__* (...) @pop()
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %3, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = call i32 @node_copy(%struct.TYPE_13__* %4, %struct.TYPE_13__* %11)
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** @operator_list, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %61, %40, %1
  %20 = call i32 (...) @is_stack_empty()
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %62

23:                                               ; preds = %19
  %24 = call %struct.TYPE_13__* (...) @pop()
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** @operator_list, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ule i32 %25, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %23
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RPN_OPERATOR_PARENT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %19

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %43 = call i32 @rpn_copy(i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @calc, i32 0, i32 2), %struct.TYPE_14__* %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @run_operator(%struct.TYPE_13__* %4, %struct.TYPE_13__* %44, %struct.TYPE_13__* %4, i64 %47)
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @calc, i32 0, i32 1), align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = call i32 (...) @flush_postfix()
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @mpfr_clear(i32 %55)
  br label %85

57:                                               ; preds = %41
  br label %61

58:                                               ; preds = %23
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %60 = call i32 @push(%struct.TYPE_13__* %59)
  br label %62

61:                                               ; preds = %57
  br label %19

62:                                               ; preds = %58, %19
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RPN_OPERATOR_EQUAL, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @RPN_OPERATOR_PERCENT, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 @push(%struct.TYPE_13__* %4)
  br label %74

74:                                               ; preds = %72, %67, %62
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @calc, i32 0, i32 0), align 8
  %78 = load i32*, i32** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %80 = call i32 @rpn_copy(i32* %78, %struct.TYPE_14__* %79)
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @mpfr_clear(i32 %83)
  br label %85

85:                                               ; preds = %74, %51
  ret void
}

declare dso_local i32 @mpfr_init(i32) #1

declare dso_local %struct.TYPE_13__* @pop(...) #1

declare dso_local i32 @node_copy(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @is_stack_empty(...) #1

declare dso_local i32 @rpn_copy(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @run_operator(%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @flush_postfix(...) #1

declare dso_local i32 @mpfr_clear(i32) #1

declare dso_local i32 @push(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
