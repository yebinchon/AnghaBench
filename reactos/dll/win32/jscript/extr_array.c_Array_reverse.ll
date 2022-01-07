; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_reverse.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DISP_E_UNKNOWNNAME = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32, i32, i32*, i32*)* @Array_reverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Array_reverse(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i64 @get_length(i32* %23, i32* %24, i32** %14, i32* %15)
  store i64 %25, i64* %20, align 8
  %26 = load i64, i64* %20, align 8
  %27 = call i64 @FAILED(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i64, i64* %20, align 8
  store i64 %30, i64* %7, align 8
  br label %127

31:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  br label %32

32:                                               ; preds = %114, %31
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %15, align 4
  %35 = sdiv i32 %34, 2
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %117

37:                                               ; preds = %32
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %16, align 4
  %40 = sub nsw i32 %38, %39
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %17, align 4
  %42 = load i32*, i32** %14, align 8
  %43 = load i32, i32* %16, align 4
  %44 = call i64 @jsdisp_get_idx(i32* %42, i32 %43, i32* %18)
  store i64 %44, i64* %20, align 8
  %45 = load i64, i64* %20, align 8
  %46 = call i64 @FAILED(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load i64, i64* %20, align 8
  %50 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i64, i64* %20, align 8
  store i64 %53, i64* %7, align 8
  br label %127

54:                                               ; preds = %48, %37
  %55 = load i32*, i32** %14, align 8
  %56 = load i32, i32* %17, align 4
  %57 = call i64 @jsdisp_get_idx(i32* %55, i32 %56, i32* %19)
  store i64 %57, i64* %21, align 8
  %58 = load i64, i64* %21, align 8
  %59 = call i64 @FAILED(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load i64, i64* %21, align 8
  %63 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %18, align 4
  %67 = call i32 @jsval_release(i32 %66)
  %68 = load i64, i64* %21, align 8
  store i64 %68, i64* %7, align 8
  br label %127

69:                                               ; preds = %61, %54
  %70 = load i64, i64* %20, align 8
  %71 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %17, align 4
  %76 = call i64 @jsdisp_delete_idx(i32* %74, i32 %75)
  store i64 %76, i64* %20, align 8
  br label %82

77:                                               ; preds = %69
  %78 = load i32*, i32** %14, align 8
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %18, align 4
  %81 = call i64 @jsdisp_propput_idx(i32* %78, i32 %79, i32 %80)
  store i64 %81, i64* %20, align 8
  br label %82

82:                                               ; preds = %77, %73
  %83 = load i64, i64* %20, align 8
  %84 = call i64 @FAILED(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i32, i32* %18, align 4
  %88 = call i32 @jsval_release(i32 %87)
  %89 = load i32, i32* %19, align 4
  %90 = call i32 @jsval_release(i32 %89)
  %91 = load i64, i64* %20, align 8
  store i64 %91, i64* %7, align 8
  br label %127

92:                                               ; preds = %82
  %93 = load i64, i64* %21, align 8
  %94 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i32*, i32** %14, align 8
  %98 = load i32, i32* %16, align 4
  %99 = call i64 @jsdisp_delete_idx(i32* %97, i32 %98)
  store i64 %99, i64* %21, align 8
  br label %105

100:                                              ; preds = %92
  %101 = load i32*, i32** %14, align 8
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %19, align 4
  %104 = call i64 @jsdisp_propput_idx(i32* %101, i32 %102, i32 %103)
  store i64 %104, i64* %21, align 8
  br label %105

105:                                              ; preds = %100, %96
  %106 = load i64, i64* %21, align 8
  %107 = call i64 @FAILED(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i32, i32* %19, align 4
  %111 = call i32 @jsval_release(i32 %110)
  %112 = load i64, i64* %21, align 8
  store i64 %112, i64* %7, align 8
  br label %127

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %16, align 4
  br label %32

117:                                              ; preds = %32
  %118 = load i32*, i32** %13, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load i32*, i32** %14, align 8
  %122 = call i32 @jsdisp_addref(i32* %121)
  %123 = call i32 @jsval_obj(i32 %122)
  %124 = load i32*, i32** %13, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %120, %117
  %126 = load i64, i64* @S_OK, align 8
  store i64 %126, i64* %7, align 8
  br label %127

127:                                              ; preds = %125, %109, %86, %65, %52, %29
  %128 = load i64, i64* %7, align 8
  ret i64 %128
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @get_length(i32*, i32*, i32**, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @jsdisp_get_idx(i32*, i32, i32*) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i64 @jsdisp_delete_idx(i32*, i32) #1

declare dso_local i64 @jsdisp_propput_idx(i32*, i32, i32) #1

declare dso_local i32 @jsval_obj(i32) #1

declare dso_local i32 @jsdisp_addref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
