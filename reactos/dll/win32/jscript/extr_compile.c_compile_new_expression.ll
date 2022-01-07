; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_new_expression.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_new_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_5__* }

@TRUE = common dso_local global i32 0, align 4
@OP_new = common dso_local global i32 0, align 4
@OP_pop = common dso_local global i32 0, align 4
@OP_push_acc = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*)* @compile_new_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_new_expression(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @TRUE, align 4
  %14 = call i32 @compile_expression(i32* %9, i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @FAILED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %78

20:                                               ; preds = %2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %7, align 8
  br label %24

24:                                               ; preds = %42, %20
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @TRUE, align 4
  %33 = call i32 @compile_expression(i32* %28, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @FAILED(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %78

39:                                               ; preds = %27
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %7, align 8
  br label %24

46:                                               ; preds = %24
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* @OP_new, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @push_instr_uint(i32* %47, i32 %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @FAILED(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %78

56:                                               ; preds = %46
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* @OP_pop, align 4
  %59 = load i32, i32* %6, align 4
  %60 = add i32 %59, 1
  %61 = call i32 @push_instr_uint(i32* %57, i32 %58, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @FAILED(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %78

67:                                               ; preds = %56
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* @OP_push_acc, align 4
  %70 = call i64 @push_instr(i32* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @S_OK, align 4
  br label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @E_OUTOFMEMORY, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %65, %54, %37, %18
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @compile_expression(i32*, i32, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @push_instr_uint(i32*, i32, i32) #1

declare dso_local i64 @push_instr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
