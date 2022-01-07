; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_RegExp_exec.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_RegExp_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32, i32, i32*, i32*)* @RegExp_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RegExp_exec(%struct.TYPE_5__* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = call i32* @heap_pool_mark(i32* %22)
  store i32* %23, i32** %15, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %6
  %29 = load i32*, i32** %12, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  br label %35

32:                                               ; preds = %6
  %33 = call i32 (...) @jsstr_empty()
  %34 = call i32 @jsval_string(i32 %33)
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi i32 [ %31, %28 ], [ %34, %32 ]
  %37 = call i32 @run_exec(%struct.TYPE_5__* %24, i32* %25, i32 %36, i32** %17, i32** %14, i64* %16)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %18, align 4
  %39 = call i64 @FAILED(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32*, i32** %15, align 8
  %43 = call i32 @heap_pool_clear(i32* %42)
  %44 = load i32, i32* %18, align 4
  store i32 %44, i32* %7, align 4
  br label %74

45:                                               ; preds = %35
  %46 = load i32*, i32** %13, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = load i64, i64* %16, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %53 = load i32*, i32** %17, align 8
  %54 = load i32*, i32** %14, align 8
  %55 = call i32 @create_match_array(%struct.TYPE_5__* %52, i32* %53, i32* %54, i32** %19)
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = call i64 @SUCCEEDED(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i32*, i32** %19, align 8
  %61 = call i32 @jsval_disp(i32* %60)
  %62 = load i32*, i32** %13, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %51
  br label %67

64:                                               ; preds = %48
  %65 = call i32 (...) @jsval_null()
  %66 = load i32*, i32** %13, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %63
  br label %68

68:                                               ; preds = %67, %45
  %69 = load i32*, i32** %15, align 8
  %70 = call i32 @heap_pool_clear(i32* %69)
  %71 = load i32*, i32** %17, align 8
  %72 = call i32 @jsstr_release(i32* %71)
  %73 = load i32, i32* %18, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %68, %41
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32* @heap_pool_mark(i32*) #1

declare dso_local i32 @run_exec(%struct.TYPE_5__*, i32*, i32, i32**, i32**, i64*) #1

declare dso_local i32 @jsval_string(i32) #1

declare dso_local i32 @jsstr_empty(...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @heap_pool_clear(i32*) #1

declare dso_local i32 @create_match_array(%struct.TYPE_5__*, i32*, i32*, i32**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @jsval_disp(i32*) #1

declare dso_local i32 @jsval_null(...) #1

declare dso_local i32 @jsstr_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
