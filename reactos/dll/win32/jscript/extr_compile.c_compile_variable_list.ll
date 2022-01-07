; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_variable_list.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_variable_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_3__* }

@TRUE = common dso_local global i32 0, align 4
@OP_assign = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@OP_pop = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @compile_variable_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_variable_list(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %6, align 8
  br label %13

13:                                               ; preds = %62, %2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %66

16:                                               ; preds = %13
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %62

22:                                               ; preds = %16
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @emit_identifier_ref(i32* %23, i32 %26, i32 0)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @FAILED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %68

33:                                               ; preds = %22
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @TRUE, align 4
  %39 = call i32 @compile_expression(i32* %34, i32 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @FAILED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %68

45:                                               ; preds = %33
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @OP_assign, align 4
  %48 = call i32 @push_instr(i32* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %51, i32* %3, align 4
  br label %68

52:                                               ; preds = %45
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* @OP_pop, align 4
  %55 = call i32 @push_instr_uint(i32* %53, i32 %54, i32 1)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @FAILED(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %68

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %21
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  store %struct.TYPE_3__* %65, %struct.TYPE_3__** %6, align 8
  br label %13

66:                                               ; preds = %13
  %67 = load i32, i32* @S_OK, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %59, %50, %43, %31
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @emit_identifier_ref(i32*, i32, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @compile_expression(i32*, i32, i32) #1

declare dso_local i32 @push_instr(i32*, i32) #1

declare dso_local i32 @push_instr_uint(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
