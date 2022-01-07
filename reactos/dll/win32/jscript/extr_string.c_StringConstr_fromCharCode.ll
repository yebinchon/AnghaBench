; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_StringConstr_fromCharCode.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_StringConstr_fromCharCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @StringConstr_fromCharCode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StringConstr_fromCharCode(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %11, align 4
  %21 = call i32* @jsstr_alloc_buf(i32 %20, i32** %14)
  store i32* %21, i32** %17, align 8
  %22 = load i32*, i32** %17, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %25, i32* %7, align 4
  br label %67

26:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %52, %26
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %15, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @to_uint32(i32* %32, i32 %37, i32* %16)
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %18, align 4
  %40 = call i64 @FAILED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load i32*, i32** %17, align 8
  %44 = call i32 @jsstr_release(i32* %43)
  %45 = load i32, i32* %18, align 4
  store i32 %45, i32* %7, align 4
  br label %67

46:                                               ; preds = %31
  %47 = load i32, i32* %16, align 4
  %48 = load i32*, i32** %14, align 8
  %49 = load i32, i32* %15, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %15, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %15, align 4
  br label %27

55:                                               ; preds = %27
  %56 = load i32*, i32** %13, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32*, i32** %17, align 8
  %60 = call i32 @jsval_string(i32* %59)
  %61 = load i32*, i32** %13, align 8
  store i32 %60, i32* %61, align 4
  br label %65

62:                                               ; preds = %55
  %63 = load i32*, i32** %17, align 8
  %64 = call i32 @jsstr_release(i32* %63)
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i32, i32* @S_OK, align 4
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %65, %42, %24
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32* @jsstr_alloc_buf(i32, i32**) #1

declare dso_local i32 @to_uint32(i32*, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32 @jsval_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
