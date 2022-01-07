; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_enumerator.c_EnumeratorConstr_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_enumerator.c_EnumeratorConstr_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JS_E_INVALIDARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unimplemented flags: %x\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @EnumeratorConstr_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EnumeratorConstr_value(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %10, align 4
  switch i32 %17, label %45 [
    i32 128, label %18
  ]

18:                                               ; preds = %6
  %19 = load i32, i32* %11, align 4
  %20 = icmp ugt i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @JS_E_INVALIDARG, align 4
  %24 = call i32 @throw_syntax_error(i32* %22, i32 %23, i32* null)
  store i32 %24, i32* %7, align 4
  br label %51

25:                                               ; preds = %18
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32*, i32** %12, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  br label %33

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i32* [ %31, %29 ], [ null, %32 ]
  %35 = call i32 @create_enumerator(i32* %26, i32* %34, i32** %14)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @FAILED(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %7, align 4
  br label %51

41:                                               ; preds = %33
  %42 = load i32*, i32** %14, align 8
  %43 = call i32 @jsval_obj(i32* %42)
  %44 = load i32*, i32** %13, align 8
  store i32 %43, i32* %44, align 4
  br label %49

45:                                               ; preds = %6
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %48, i32* %7, align 4
  br label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @S_OK, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %45, %39, %21
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @throw_syntax_error(i32*, i32, i32*) #1

declare dso_local i32 @create_enumerator(i32*, i32*, i32**) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @jsval_obj(i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
