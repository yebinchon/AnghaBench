; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_math.c_Math_max.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_math.c_Math_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@INFINITY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Math_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Math_max(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %6
  %22 = load i32*, i32** %13, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* @INFINITY, align 4
  %26 = sub nsw i32 0, %25
  %27 = call i32 @jsval_number(i32 %26)
  %28 = load i32*, i32** %13, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i32, i32* @S_OK, align 4
  store i32 %30, i32* %7, align 4
  br label %83

31:                                               ; preds = %6
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @to_number(i32* %32, i32 %35, i32* %14)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = call i64 @FAILED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %17, align 4
  store i32 %41, i32* %7, align 4
  br label %83

42:                                               ; preds = %31
  store i32 1, i32* %16, align 4
  br label %43

43:                                               ; preds = %71, %42
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %43
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %16, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @to_number(i32* %48, i32 %53, i32* %15)
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = call i64 @FAILED(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* %17, align 4
  store i32 %59, i32* %7, align 4
  br label %83

60:                                               ; preds = %47
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %15, align 4
  %66 = call i64 @isnan(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64, %60
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %68, %64
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %16, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %16, align 4
  br label %43

74:                                               ; preds = %43
  %75 = load i32*, i32** %13, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @jsval_number(i32 %78)
  %80 = load i32*, i32** %13, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %74
  %82 = load i32, i32* @S_OK, align 4
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %81, %58, %40, %29
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @jsval_number(i32) #1

declare dso_local i32 @to_number(i32*, i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @isnan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
