; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_stack_push_exprval.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_stack_push_exprval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@E_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @stack_push_exprval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stack_push_exprval(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %76 [
    i32 129, label %10
    i32 131, label %12
    i32 128, label %42
    i32 130, label %59
  ]

10:                                               ; preds = %2
  %11 = call i32 @assert(i32 0)
  br label %12

12:                                               ; preds = %2, %10
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @jsval_disp(i32 %18)
  %20 = call i32 @stack_push(i32* %13, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @SUCCEEDED(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %12
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @jsval_number(i32 %30)
  %32 = call i32 @stack_push(i32* %25, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %40

33:                                               ; preds = %12
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @IDispatch_Release(i32 %38)
  br label %40

40:                                               ; preds = %33, %24
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %79

42:                                               ; preds = %2
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @jsval_number(i32 %47)
  %49 = call i32 @stack_push(i32* %43, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @SUCCEEDED(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 (...) @jsval_undefined()
  %56 = call i32 @stack_push(i32* %54, i32 %55)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %53, %42
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %79

59:                                               ; preds = %2
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 (...) @jsval_undefined()
  %62 = call i32 @stack_push(i32* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @SUCCEEDED(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load i32*, i32** %4, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @jsval_number(i32 %71)
  %73 = call i32 @stack_push(i32* %67, i32 %72)
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %66, %59
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %79

76:                                               ; preds = %2
  %77 = call i32 @assert(i32 0)
  %78 = load i32, i32* @E_FAIL, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %76, %74, %57, %40
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @stack_push(i32*, i32) #1

declare dso_local i32 @jsval_disp(i32) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @jsval_number(i32) #1

declare dso_local i32 @IDispatch_Release(i32) #1

declare dso_local i32 @jsval_undefined(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
