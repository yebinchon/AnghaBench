; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_function.c_array_to_args.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_function.c_array_to_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lengthW = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@DISP_E_UNKNOWNNAME = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i32**)* @array_to_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @array_to_args(i32* %0, i32* %1, i32* %2, i32** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* @lengthW, align 4
  %17 = call i64 @jsdisp_propget_name(i32* %15, i32 %16, i32* %11)
  store i64 %17, i64* %14, align 8
  %18 = load i64, i64* %14, align 8
  %19 = call i64 @FAILED(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i64, i64* %14, align 8
  store i64 %22, i64* %5, align 8
  br label %97

23:                                               ; preds = %4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @to_uint32(i32* %24, i32 %25, i32* %12)
  store i64 %26, i64* %14, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @jsval_release(i32 %27)
  %29 = load i64, i64* %14, align 8
  %30 = call i64 @FAILED(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i64, i64* %14, align 8
  store i64 %33, i64* %5, align 8
  br label %97

34:                                               ; preds = %23
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32* @heap_alloc(i32 %38)
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  %43 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %43, i64* %5, align 8
  br label %97

44:                                               ; preds = %34
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %88, %44
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %91

49:                                               ; preds = %45
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i64 @jsdisp_get_idx(i32* %50, i32 %51, i32* %55)
  store i64 %56, i64* %14, align 8
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = call i32 (...) @jsval_undefined()
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %61, i32* %65, align 4
  br label %87

66:                                               ; preds = %49
  %67 = load i64, i64* %14, align 8
  %68 = call i64 @FAILED(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %75, %70
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %13, align 4
  %74 = icmp ne i32 %72, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @jsval_release(i32 %80)
  br label %71

82:                                               ; preds = %71
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @heap_free(i32* %83)
  %85 = load i64, i64* %14, align 8
  store i64 %85, i64* %5, align 8
  br label %97

86:                                               ; preds = %66
  br label %87

87:                                               ; preds = %86, %60
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %45

91:                                               ; preds = %45
  %92 = load i32, i32* %12, align 4
  %93 = load i32*, i32** %8, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32*, i32** %10, align 8
  %95 = load i32**, i32*** %9, align 8
  store i32* %94, i32** %95, align 8
  %96 = load i64, i64* @S_OK, align 8
  store i64 %96, i64* %5, align 8
  br label %97

97:                                               ; preds = %91, %82, %42, %32, %21
  %98 = load i64, i64* %5, align 8
  ret i64 %98
}

declare dso_local i64 @jsdisp_propget_name(i32*, i32, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @to_uint32(i32*, i32, i32*) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i64 @jsdisp_get_idx(i32*, i32, i32*) #1

declare dso_local i32 @jsval_undefined(...) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
