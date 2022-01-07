; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_map.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Could not get length\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Invalid arg %s\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Unsupported context this %s\0A\00", align 1
@E_NOTIMPL = common dso_local global i64 0, align 8
@DISP_E_UNKNOWNNAME = common dso_local global i64 0, align 8
@DISPATCH_METHOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32, i32, i32*, i32*)* @Array_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Array_map(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [3 x i32], align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i64 @get_length(i32* %24, i32* %25, i32** %18, i64* %20)
  store i64 %26, i64* %22, align 8
  %27 = load i64, i64* %22, align 8
  %28 = call i64 @FAILED(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i64, i64* %22, align 8
  store i64 %32, i64* %7, align 8
  br label %178

33:                                               ; preds = %6
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i32*, i32** %12, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @is_object_instance(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32* @get_object(i32 %45)
  %47 = icmp ne i32* %46, null
  br i1 %47, label %62, label %48

48:                                               ; preds = %42, %36, %33
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  br label %57

55:                                               ; preds = %48
  %56 = call i32 (...) @jsval_undefined()
  br label %57

57:                                               ; preds = %55, %51
  %58 = phi i32 [ %54, %51 ], [ %56, %55 ]
  %59 = call i32 @debugstr_jsval(i32 %58)
  %60 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load i64, i64* @E_INVALIDARG, align 8
  store i64 %61, i64* %7, align 8
  br label %178

62:                                               ; preds = %42
  %63 = load i32*, i32** %12, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32* @get_object(i32 %65)
  store i32* %66, i32** %15, align 8
  %67 = load i32, i32* %11, align 4
  %68 = icmp ugt i32 %67, 1
  br i1 %68, label %69, label %101

69:                                               ; preds = %62
  %70 = load i32*, i32** %12, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @is_object_instance(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load i32*, i32** %12, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32* @get_object(i32 %78)
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i32*, i32** %12, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32* @get_object(i32 %84)
  store i32* %85, i32** %14, align 8
  br label %100

86:                                               ; preds = %75, %69
  %87 = load i32*, i32** %12, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @is_undefined(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %86
  %93 = load i32*, i32** %12, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @debugstr_jsval(i32 %95)
  %97 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = load i64, i64* @E_NOTIMPL, align 8
  store i64 %98, i64* %7, align 8
  br label %178

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99, %81
  br label %101

101:                                              ; preds = %100, %62
  %102 = load i32*, i32** %8, align 8
  %103 = load i64, i64* %20, align 8
  %104 = call i64 @create_array(i32* %102, i64 %103, i32** %19)
  store i64 %104, i64* %22, align 8
  %105 = load i64, i64* %22, align 8
  %106 = call i64 @FAILED(i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i64, i64* %22, align 8
  store i64 %109, i64* %7, align 8
  br label %178

110:                                              ; preds = %101
  store i64 0, i64* %21, align 8
  br label %111

111:                                              ; preds = %159, %110
  %112 = load i64, i64* %21, align 8
  %113 = load i64, i64* %20, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %115, label %162

115:                                              ; preds = %111
  %116 = load i32*, i32** %18, align 8
  %117 = load i64, i64* %21, align 8
  %118 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %119 = call i64 @jsdisp_get_idx(i32* %116, i64 %117, i32* %118)
  store i64 %119, i64* %22, align 8
  %120 = load i64, i64* %22, align 8
  %121 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  br label %159

124:                                              ; preds = %115
  %125 = load i64, i64* %22, align 8
  %126 = call i64 @FAILED(i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %162

129:                                              ; preds = %124
  %130 = load i64, i64* %21, align 8
  %131 = call i32 @jsval_number(i64 %130)
  %132 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  store i32 %131, i32* %132, align 4
  %133 = load i32*, i32** %18, align 8
  %134 = call i32 @jsval_obj(i32* %133)
  %135 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 2
  store i32 %134, i32* %135, align 4
  %136 = load i32*, i32** %8, align 8
  %137 = load i32*, i32** %15, align 8
  %138 = load i32*, i32** %14, align 8
  %139 = load i32, i32* @DISPATCH_METHOD, align 4
  %140 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %141 = call i64 @disp_call_value(i32* %136, i32* %137, i32* %138, i32 %139, i32 3, i32* %140, i32* %17)
  store i64 %141, i64* %22, align 8
  %142 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @jsval_release(i32 %143)
  %145 = load i64, i64* %22, align 8
  %146 = call i64 @FAILED(i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %129
  br label %162

149:                                              ; preds = %129
  %150 = load i32*, i32** %19, align 8
  %151 = load i64, i64* %21, align 8
  %152 = load i32, i32* %17, align 4
  %153 = call i64 @jsdisp_propput_idx(i32* %150, i64 %151, i32 %152)
  store i64 %153, i64* %22, align 8
  %154 = load i64, i64* %22, align 8
  %155 = call i64 @FAILED(i64 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  br label %162

158:                                              ; preds = %149
  br label %159

159:                                              ; preds = %158, %123
  %160 = load i64, i64* %21, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %21, align 8
  br label %111

162:                                              ; preds = %157, %148, %128, %111
  %163 = load i64, i64* %22, align 8
  %164 = call i64 @SUCCEEDED(i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = load i32*, i32** %13, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = load i32*, i32** %19, align 8
  %171 = call i32 @jsval_obj(i32* %170)
  %172 = load i32*, i32** %13, align 8
  store i32 %171, i32* %172, align 4
  br label %176

173:                                              ; preds = %166, %162
  %174 = load i32*, i32** %19, align 8
  %175 = call i32 @jsdisp_release(i32* %174)
  br label %176

176:                                              ; preds = %173, %169
  %177 = load i64, i64* %22, align 8
  store i64 %177, i64* %7, align 8
  br label %178

178:                                              ; preds = %176, %108, %92, %57, %30
  %179 = load i64, i64* %7, align 8
  ret i64 %179
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @get_length(i32*, i32*, i32**, i64*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i64 @is_object_instance(i32) #1

declare dso_local i32* @get_object(i32) #1

declare dso_local i32 @debugstr_jsval(i32) #1

declare dso_local i32 @jsval_undefined(...) #1

declare dso_local i32 @is_undefined(i32) #1

declare dso_local i64 @create_array(i32*, i64, i32**) #1

declare dso_local i64 @jsdisp_get_idx(i32*, i64, i32*) #1

declare dso_local i32 @jsval_number(i64) #1

declare dso_local i32 @jsval_obj(i32*) #1

declare dso_local i64 @disp_call_value(i32*, i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i64 @jsdisp_propput_idx(i32*, i64, i32) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @jsdisp_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
