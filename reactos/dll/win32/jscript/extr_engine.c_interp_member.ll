; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_member.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_interp_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DISP_E_UNKNOWNNAME = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @interp_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @interp_member(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @get_op_bstr(i32* %9, i32 0)
  store i32 %10, i32* %4, align 4
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @stack_pop_object(i32* %12, i32** %5)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i64 @FAILED(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %2, align 8
  br label %53

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @disp_get_id(i32* %20, i32* %21, i32 %22, i32 %23, i32 0, i32* %7)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @SUCCEEDED(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @disp_propget(i32* %29, i32* %30, i32 %31, i32* %6)
  store i64 %32, i64* %8, align 8
  br label %41

33:                                               ; preds = %19
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = call i32 (...) @jsval_undefined()
  store i32 %38, i32* %6, align 4
  %39 = load i64, i64* @S_OK, align 8
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @IDispatch_Release(i32* %42)
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @FAILED(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i64, i64* %8, align 8
  store i64 %48, i64* %2, align 8
  br label %53

49:                                               ; preds = %41
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @stack_push(i32* %50, i32 %51)
  store i64 %52, i64* %2, align 8
  br label %53

53:                                               ; preds = %49, %47, %17
  %54 = load i64, i64* %2, align 8
  ret i64 %54
}

declare dso_local i32 @get_op_bstr(i32*, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @stack_pop_object(i32*, i32**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @disp_get_id(i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @disp_propget(i32*, i32*, i32, i32*) #1

declare dso_local i32 @jsval_undefined(...) #1

declare dso_local i32 @IDispatch_Release(i32*) #1

declare dso_local i64 @stack_push(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
