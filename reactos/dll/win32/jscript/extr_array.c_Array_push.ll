; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_push.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Array_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Array_push(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 0, i64* %15, align 8
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @get_length(i32* %19, i32* %20, i32** %14, i64* %15)
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = call i64 @FAILED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %17, align 4
  store i32 %26, i32* %7, align 4
  br label %77

27:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  br label %28

28:                                               ; preds = %50, %27
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = load i32*, i32** %14, align 8
  %34 = load i64, i64* %15, align 8
  %35 = load i32, i32* %16, align 4
  %36 = zext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load i32*, i32** %12, align 8
  %39 = load i32, i32* %16, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @jsdisp_propput_idx(i32* %33, i64 %37, i32 %42)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = call i64 @FAILED(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %32
  %48 = load i32, i32* %17, align 4
  store i32 %48, i32* %7, align 4
  br label %77

49:                                               ; preds = %32
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %16, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %16, align 4
  br label %28

53:                                               ; preds = %28
  %54 = load i32*, i32** %14, align 8
  %55 = load i64, i64* %15, align 8
  %56 = load i32, i32* %11, align 4
  %57 = zext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = call i32 @set_length(i32* %54, i64 %58)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = call i64 @FAILED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %17, align 4
  store i32 %64, i32* %7, align 4
  br label %77

65:                                               ; preds = %53
  %66 = load i32*, i32** %13, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i64, i64* %15, align 8
  %70 = load i32, i32* %11, align 4
  %71 = zext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = call i32 @jsval_number(i64 %72)
  %74 = load i32*, i32** %13, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %68, %65
  %76 = load i32, i32* @S_OK, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %75, %63, %47, %25
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @get_length(i32*, i32*, i32**, i64*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @jsdisp_propput_idx(i32*, i64, i32) #1

declare dso_local i32 @set_length(i32*, i64) #1

declare dso_local i32 @jsval_number(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
