; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_vbarray.c_VBArray_toArray.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_vbarray.c_VBArray_toArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JS_E_VBARRAY_EXPECTED = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @VBArray_toArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VBArray_toArray(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 1, i32* %19, align 4
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = load i32*, i32** %9, align 8
  %25 = call %struct.TYPE_3__* @vbarray_this(i32* %24)
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %14, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %6
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* @JS_E_VBARRAY_EXPECTED, align 4
  %31 = call i32 @throw_type_error(i32* %29, i32 %30, i32* null)
  store i32 %31, i32* %7, align 4
  br label %135

32:                                               ; preds = %6
  store i32 1, i32* %18, align 4
  br label %33

33:                                               ; preds = %57, %32
  %34 = load i32, i32* %18, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @SafeArrayGetDim(i32 %37)
  %39 = icmp sle i32 %34, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %33
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %18, align 4
  %45 = call i32 @SafeArrayGetLBound(i32 %43, i32 %44, i32* %21)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %18, align 4
  %50 = call i32 @SafeArrayGetUBound(i32 %48, i32 %49, i32* %20)
  %51 = load i32, i32* %20, align 4
  %52 = load i32, i32* %21, align 4
  %53 = sub nsw i32 %51, %52
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* %19, align 4
  %56 = mul nsw i32 %55, %54
  store i32 %56, i32* %19, align 4
  br label %57

57:                                               ; preds = %40
  %58 = load i32, i32* %18, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %18, align 4
  br label %33

60:                                               ; preds = %33
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = bitcast i32** %17 to i8**
  %65 = call i32 @SafeArrayAccessData(i32 %63, i8** %64)
  store i32 %65, i32* %22, align 4
  %66 = load i32, i32* %22, align 4
  %67 = call i64 @FAILED(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* %22, align 4
  store i32 %70, i32* %7, align 4
  br label %135

71:                                               ; preds = %60
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @create_array(i32* %72, i32 0, i32** %15)
  store i32 %73, i32* %22, align 4
  %74 = load i32, i32* %22, align 4
  %75 = call i64 @FAILED(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @SafeArrayUnaccessData(i32 %80)
  %82 = load i32, i32* %22, align 4
  store i32 %82, i32* %7, align 4
  br label %135

83:                                               ; preds = %71
  store i32 0, i32* %18, align 4
  br label %84

84:                                               ; preds = %116, %83
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %19, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %119

88:                                               ; preds = %84
  %89 = load i32*, i32** %17, align 8
  %90 = call i32 @variant_to_jsval(i32* %89, i32* %16)
  store i32 %90, i32* %22, align 4
  %91 = load i32, i32* %22, align 4
  %92 = call i64 @SUCCEEDED(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load i32*, i32** %15, align 8
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @jsdisp_propput_idx(i32* %95, i32 %96, i32 %97)
  store i32 %98, i32* %22, align 4
  %99 = load i32, i32* %16, align 4
  %100 = call i32 @jsval_release(i32 %99)
  br label %101

101:                                              ; preds = %94, %88
  %102 = load i32, i32* %22, align 4
  %103 = call i64 @FAILED(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @SafeArrayUnaccessData(i32 %108)
  %110 = load i32*, i32** %15, align 8
  %111 = call i32 @jsdisp_release(i32* %110)
  %112 = load i32, i32* %22, align 4
  store i32 %112, i32* %7, align 4
  br label %135

113:                                              ; preds = %101
  %114 = load i32*, i32** %17, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %17, align 8
  br label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %18, align 4
  br label %84

119:                                              ; preds = %84
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @SafeArrayUnaccessData(i32 %122)
  %124 = load i32*, i32** %13, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load i32*, i32** %15, align 8
  %128 = call i32 @jsval_obj(i32* %127)
  %129 = load i32*, i32** %13, align 8
  store i32 %128, i32* %129, align 4
  br label %133

130:                                              ; preds = %119
  %131 = load i32*, i32** %15, align 8
  %132 = call i32 @jsdisp_release(i32* %131)
  br label %133

133:                                              ; preds = %130, %126
  %134 = load i32, i32* @S_OK, align 4
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %133, %105, %77, %69, %28
  %136 = load i32, i32* %7, align 4
  ret i32 %136
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.TYPE_3__* @vbarray_this(i32*) #1

declare dso_local i32 @throw_type_error(i32*, i32, i32*) #1

declare dso_local i32 @SafeArrayGetDim(i32) #1

declare dso_local i32 @SafeArrayGetLBound(i32, i32, i32*) #1

declare dso_local i32 @SafeArrayGetUBound(i32, i32, i32*) #1

declare dso_local i32 @SafeArrayAccessData(i32, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @create_array(i32*, i32, i32**) #1

declare dso_local i32 @SafeArrayUnaccessData(i32) #1

declare dso_local i32 @variant_to_jsval(i32*, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @jsdisp_propput_idx(i32*, i32, i32) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32 @jsval_obj(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
