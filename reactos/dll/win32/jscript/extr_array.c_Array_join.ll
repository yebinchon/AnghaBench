; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_join.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@default_separatorW = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Array_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Array_join(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
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
  %22 = call i32 @get_length(i32* %20, i32* %21, i32** %14, i32* %15)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = call i64 @FAILED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %6
  %27 = load i32, i32* %16, align 4
  store i32 %27, i32* %7, align 4
  br label %64

28:                                               ; preds = %6
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @to_flat_string(i32* %32, i32 %35, i32** %18, i32** %17)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = call i64 @FAILED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %16, align 4
  store i32 %41, i32* %7, align 4
  br label %64

42:                                               ; preds = %31
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = load i32, i32* %15, align 4
  %46 = load i32*, i32** %17, align 8
  %47 = load i32*, i32** %18, align 8
  %48 = call i32 @jsstr_length(i32* %47)
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @array_join(i32* %43, i32* %44, i32 %45, i32* %46, i32 %48, i32* %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32*, i32** %18, align 8
  %52 = call i32 @jsstr_release(i32* %51)
  br label %62

53:                                               ; preds = %28
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = load i32, i32* %15, align 4
  %57 = load i32*, i32** @default_separatorW, align 8
  %58 = load i32*, i32** @default_separatorW, align 8
  %59 = call i32 @lstrlenW(i32* %58)
  %60 = load i32*, i32** %13, align 8
  %61 = call i32 @array_join(i32* %54, i32* %55, i32 %56, i32* %57, i32 %59, i32* %60)
  store i32 %61, i32* %16, align 4
  br label %62

62:                                               ; preds = %53, %42
  %63 = load i32, i32* %16, align 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %62, %40, %26
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @get_length(i32*, i32*, i32**, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @to_flat_string(i32*, i32, i32**, i32**) #1

declare dso_local i32 @array_join(i32*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @jsstr_length(i32*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32 @lstrlenW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
