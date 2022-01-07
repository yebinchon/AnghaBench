; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_toLowerCase.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_toLowerCase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @String_toLowerCase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @String_toLowerCase(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
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
  %18 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @get_string_val(i32* %20, i32* %21, i32** %14)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = call i64 @FAILED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* %15, align 4
  store i32 %27, i32* %7, align 4
  br label %66

28:                                               ; preds = %6
  %29 = load i32*, i32** %13, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %62

31:                                               ; preds = %28
  %32 = load i32*, i32** %14, align 8
  %33 = call i32 @jsstr_length(i32* %32)
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = call i32* @jsstr_alloc_buf(i32 %34, i32** %18)
  store i32* %35, i32** %17, align 8
  %36 = load i32*, i32** %17, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = load i32*, i32** %14, align 8
  %40 = call i32 @jsstr_release(i32* %39)
  %41 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %41, i32* %7, align 4
  br label %66

42:                                               ; preds = %31
  %43 = load i32*, i32** %14, align 8
  %44 = load i32*, i32** %18, align 8
  %45 = call i32 @jsstr_flush(i32* %43, i32* %44)
  br label %46

46:                                               ; preds = %55, %42
  %47 = load i32, i32* %16, align 4
  %48 = add i32 %47, -1
  store i32 %48, i32* %16, align 4
  %49 = icmp ne i32 %47, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i32*, i32** %18, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @towlower(i32 %52)
  %54 = load i32*, i32** %18, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %50
  %56 = load i32*, i32** %18, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %18, align 8
  br label %46

58:                                               ; preds = %46
  %59 = load i32*, i32** %17, align 8
  %60 = call i32 @jsval_string(i32* %59)
  %61 = load i32*, i32** %13, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %28
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @jsstr_release(i32* %63)
  %65 = load i32, i32* @S_OK, align 4
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %62, %38, %26
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @get_string_val(i32*, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @jsstr_length(i32*) #1

declare dso_local i32* @jsstr_alloc_buf(i32, i32**) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32 @jsstr_flush(i32*, i32*) #1

declare dso_local i32 @towlower(i32) #1

declare dso_local i32 @jsval_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
