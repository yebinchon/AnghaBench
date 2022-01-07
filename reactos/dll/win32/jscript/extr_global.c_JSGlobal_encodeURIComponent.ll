; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_global.c_JSGlobal_encodeURIComponent.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_global.c_JSGlobal_encodeURIComponent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@JS_E_INVALID_URI_CHAR = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @JSGlobal_encodeURIComponent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSGlobal_encodeURIComponent(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [4 x i8], align 1
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64*, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %19, align 4
  %24 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %6
  %28 = load i32*, i32** %13, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = call i32* (...) @jsstr_undefined()
  %32 = call i32 @jsval_string(i32* %31)
  %33 = load i32*, i32** %13, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i32, i32* @S_OK, align 4
  store i32 %35, i32* %7, align 4
  br label %163

36:                                               ; preds = %6
  %37 = load i32*, i32** %8, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @to_flat_string(i32* %37, i32 %40, i32** %14, i64** %18)
  store i32 %41, i32* %23, align 4
  %42 = load i32, i32* %23, align 4
  %43 = call i64 @FAILED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %23, align 4
  store i32 %46, i32* %7, align 4
  br label %163

47:                                               ; preds = %36
  %48 = load i64*, i64** %18, align 8
  store i64* %48, i64** %17, align 8
  br label %49

49:                                               ; preds = %79, %47
  %50 = load i64*, i64** %17, align 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %49
  %54 = load i64*, i64** %17, align 8
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @is_uri_unescaped(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %19, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %19, align 4
  br label %78

61:                                               ; preds = %53
  %62 = load i32, i32* @CP_UTF8, align 4
  %63 = load i64*, i64** %17, align 8
  %64 = call i32 @WideCharToMultiByte(i32 %62, i32 0, i64* %63, i32 1, i8* null, i32 0, i32* null, i32* null)
  store i32 %64, i32* %20, align 4
  %65 = load i32, i32* %20, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load i32*, i32** %14, align 8
  %69 = call i32 @jsstr_release(i32* %68)
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* @JS_E_INVALID_URI_CHAR, align 4
  %72 = call i32 @throw_uri_error(i32* %70, i32 %71, i32* null)
  store i32 %72, i32* %7, align 4
  br label %163

73:                                               ; preds = %61
  %74 = load i32, i32* %20, align 4
  %75 = mul nsw i32 %74, 3
  %76 = load i32, i32* %19, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %19, align 4
  br label %78

78:                                               ; preds = %73, %58
  br label %79

79:                                               ; preds = %78
  %80 = load i64*, i64** %17, align 8
  %81 = getelementptr inbounds i64, i64* %80, i32 1
  store i64* %81, i64** %17, align 8
  br label %49

82:                                               ; preds = %49
  %83 = load i32, i32* %19, align 4
  %84 = call i32* @jsstr_alloc_buf(i32 %83, i64** %22)
  store i32* %84, i32** %15, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = load i32*, i32** %14, align 8
  %89 = call i32 @jsstr_release(i32* %88)
  %90 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %90, i32* %7, align 4
  br label %163

91:                                               ; preds = %82
  %92 = load i64*, i64** %18, align 8
  store i64* %92, i64** %17, align 8
  br label %93

93:                                               ; preds = %146, %91
  %94 = load i64*, i64** %17, align 8
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %149

97:                                               ; preds = %93
  %98 = load i64*, i64** %17, align 8
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @is_uri_unescaped(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i64*, i64** %17, align 8
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %22, align 8
  %106 = getelementptr inbounds i64, i64* %105, i32 1
  store i64* %106, i64** %22, align 8
  store i64 %104, i64* %105, align 8
  br label %145

107:                                              ; preds = %97
  %108 = load i32, i32* @CP_UTF8, align 4
  %109 = load i64*, i64** %17, align 8
  %110 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 0
  %111 = call i32 @WideCharToMultiByte(i32 %108, i32 0, i64* %109, i32 1, i8* %110, i32 4, i32* null, i32* null)
  store i32 %111, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %112

112:                                              ; preds = %141, %107
  %113 = load i32, i32* %21, align 4
  %114 = load i32, i32* %20, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %144

116:                                              ; preds = %112
  %117 = load i64*, i64** %22, align 8
  %118 = getelementptr inbounds i64, i64* %117, i32 1
  store i64* %118, i64** %22, align 8
  store i64 37, i64* %117, align 8
  %119 = load i32, i32* %21, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = ashr i32 %123, 4
  %125 = trunc i32 %124 to i8
  %126 = call i8* @int_to_char(i8 signext %125)
  %127 = ptrtoint i8* %126 to i64
  %128 = load i64*, i64** %22, align 8
  %129 = getelementptr inbounds i64, i64* %128, i32 1
  store i64* %129, i64** %22, align 8
  store i64 %127, i64* %128, align 8
  %130 = load i32, i32* %21, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i64 0, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = and i32 %134, 15
  %136 = trunc i32 %135 to i8
  %137 = call i8* @int_to_char(i8 signext %136)
  %138 = ptrtoint i8* %137 to i64
  %139 = load i64*, i64** %22, align 8
  %140 = getelementptr inbounds i64, i64* %139, i32 1
  store i64* %140, i64** %22, align 8
  store i64 %138, i64* %139, align 8
  br label %141

141:                                              ; preds = %116
  %142 = load i32, i32* %21, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %21, align 4
  br label %112

144:                                              ; preds = %112
  br label %145

145:                                              ; preds = %144, %102
  br label %146

146:                                              ; preds = %145
  %147 = load i64*, i64** %17, align 8
  %148 = getelementptr inbounds i64, i64* %147, i32 1
  store i64* %148, i64** %17, align 8
  br label %93

149:                                              ; preds = %93
  %150 = load i32*, i32** %14, align 8
  %151 = call i32 @jsstr_release(i32* %150)
  %152 = load i32*, i32** %13, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load i32*, i32** %15, align 8
  %156 = call i32 @jsval_string(i32* %155)
  %157 = load i32*, i32** %13, align 8
  store i32 %156, i32* %157, align 4
  br label %161

158:                                              ; preds = %149
  %159 = load i32*, i32** %15, align 8
  %160 = call i32 @jsstr_release(i32* %159)
  br label %161

161:                                              ; preds = %158, %154
  %162 = load i32, i32* @S_OK, align 4
  store i32 %162, i32* %7, align 4
  br label %163

163:                                              ; preds = %161, %87, %67, %45, %34
  %164 = load i32, i32* %7, align 4
  ret i32 %164
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i32* @jsstr_undefined(...) #1

declare dso_local i32 @to_flat_string(i32*, i32, i32**, i64**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @is_uri_unescaped(i64) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i64*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32 @throw_uri_error(i32*, i32, i32*) #1

declare dso_local i32* @jsstr_alloc_buf(i32, i64**) #1

declare dso_local i8* @int_to_char(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
