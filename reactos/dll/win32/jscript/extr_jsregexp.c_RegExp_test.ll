; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_RegExp_test.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsregexp.c_RegExp_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32, i32, i32*, i32*)* @RegExp_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RegExp_test(%struct.TYPE_4__* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32* @heap_pool_mark(i32* %21)
  store i32* %22, i32** %16, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = load i32*, i32** %12, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  br label %34

31:                                               ; preds = %6
  %32 = call i32* (...) @jsstr_undefined()
  store i32* %32, i32** %15, align 8
  %33 = call i32 @jsval_string(i32* %32)
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i32 [ %30, %27 ], [ %33, %31 ]
  %36 = call i32 @run_exec(%struct.TYPE_4__* %23, i32* %24, i32 %35, i32* null, i32** %14, i32* %17)
  store i32 %36, i32* %18, align 4
  %37 = load i32*, i32** %16, align 8
  %38 = call i32 @heap_pool_clear(i32* %37)
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32*, i32** %15, align 8
  %43 = call i32 @jsstr_release(i32* %42)
  br label %44

44:                                               ; preds = %41, %34
  %45 = load i32, i32* %18, align 4
  %46 = call i64 @FAILED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* %18, align 4
  store i32 %49, i32* %7, align 4
  br label %59

50:                                               ; preds = %44
  %51 = load i32*, i32** %13, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @jsval_bool(i32 %54)
  %56 = load i32*, i32** %13, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i32, i32* @S_OK, align 4
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %57, %48
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32* @heap_pool_mark(i32*) #1

declare dso_local i32 @run_exec(%struct.TYPE_4__*, i32*, i32, i32*, i32**, i32*) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i32* @jsstr_undefined(...) #1

declare dso_local i32 @heap_pool_clear(i32*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @jsval_bool(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
