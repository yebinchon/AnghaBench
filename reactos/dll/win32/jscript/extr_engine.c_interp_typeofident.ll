; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_typeofident.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_typeofident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@EXPRVAL_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @interp_typeofident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interp_typeofident(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @get_op_bstr(i32* %9, i32 0)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @debugstr_w(i32 %11)
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @identifier_eval(i32* %14, i32 %15, %struct.TYPE_4__* %5)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @FAILED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %2, align 4
  br label %54

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @EXPRVAL_INVALID, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 (...) @jsstr_undefined()
  %30 = call i32 @jsval_string(i32 %29)
  %31 = call i32 @stack_push(i32* %28, i32 %30)
  store i32 %31, i32* %2, align 4
  br label %54

32:                                               ; preds = %22
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @exprval_to_value(i32* %33, %struct.TYPE_4__* %5, i32* %7)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @FAILED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %2, align 4
  br label %54

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @typeof_string(i32 %41, i32** %6)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @jsval_release(i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @FAILED(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %2, align 4
  br label %54

50:                                               ; preds = %40
  %51 = load i32*, i32** %3, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @stack_push_string(i32* %51, i32* %52)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %48, %38, %27, %20
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @get_op_bstr(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @identifier_eval(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @stack_push(i32*, i32) #1

declare dso_local i32 @jsval_string(i32) #1

declare dso_local i32 @jsstr_undefined(...) #1

declare dso_local i32 @exprval_to_value(i32*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @typeof_string(i32, i32**) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i32 @stack_push_string(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
