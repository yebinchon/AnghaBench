; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_function.c_Function_apply.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_function.c_Function_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (i32*, %struct.TYPE_12__*, i32*, i32, i32, i32*, i32*)* }

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@VDISP_JSDISP = common dso_local global i32 0, align 4
@JS_E_FUNCTION_EXPECTED = common dso_local global i32 0, align 4
@JSCLASS_ARRAY = common dso_local global i32 0, align 4
@JSCLASS_ARGUMENTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"throw TypeError\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@DISPATCH_METHOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, i32, i32, i32*, i32*)* @Function_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Function_apply(i32* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %15, align 8
  store i32 0, i32* %17, align 4
  store i32* null, i32** %18, align 8
  %22 = load i32, i32* @S_OK, align 4
  store i32 %22, i32* %19, align 4
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %25 = call %struct.TYPE_12__* @function_this(%struct.TYPE_11__* %24)
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %14, align 8
  %26 = icmp ne %struct.TYPE_12__* %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %6
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VDISP_JSDISP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @JS_E_FUNCTION_EXPECTED, align 4
  %37 = call i32 @throw_type_error(i32* %35, i32 %36, i32* null)
  store i32 %37, i32* %7, align 4
  br label %182

38:                                               ; preds = %27, %6
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %38
  %42 = load i32*, i32** %12, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @is_undefined(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %65, label %47

47:                                               ; preds = %41
  %48 = load i32*, i32** %12, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @is_null(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %47
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @to_object(i32* %54, i32 %57, i32** %18)
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %19, align 4
  %60 = call i64 @FAILED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %19, align 4
  store i32 %63, i32* %7, align 4
  br label %182

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %47, %41
  br label %66

66:                                               ; preds = %65, %38
  %67 = load i32, i32* %11, align 4
  %68 = icmp uge i32 %67, 2
  br i1 %68, label %69, label %110

69:                                               ; preds = %66
  store i32* null, i32** %20, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @is_object_instance(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %69
  %76 = load i32*, i32** %12, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @get_object(i32 %78)
  %80 = call i32* @iface_to_jsdisp(i32 %79)
  store i32* %80, i32** %20, align 8
  %81 = load i32*, i32** %20, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %96

83:                                               ; preds = %75
  %84 = load i32*, i32** %20, align 8
  %85 = load i32, i32* @JSCLASS_ARRAY, align 4
  %86 = call i32 @is_class(i32* %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %83
  %89 = load i32*, i32** %20, align 8
  %90 = load i32, i32* @JSCLASS_ARGUMENTS, align 4
  %91 = call i32 @is_class(i32* %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load i32*, i32** %20, align 8
  %95 = call i32 @jsdisp_release(i32* %94)
  store i32* null, i32** %20, align 8
  br label %96

96:                                               ; preds = %93, %88, %83, %75
  br label %97

97:                                               ; preds = %96, %69
  %98 = load i32*, i32** %20, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32*, i32** %8, align 8
  %102 = load i32*, i32** %20, align 8
  %103 = call i32 @array_to_args(i32* %101, i32* %102, i32* %17, i32** %15)
  store i32 %103, i32* %19, align 4
  %104 = load i32*, i32** %20, align 8
  %105 = call i32 @jsdisp_release(i32* %104)
  br label %109

106:                                              ; preds = %97
  %107 = call i32 @FIXME(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32, i32* @E_FAIL, align 4
  store i32 %108, i32* %19, align 4
  br label %109

109:                                              ; preds = %106, %100
  br label %110

110:                                              ; preds = %109, %66
  %111 = load i32, i32* %19, align 4
  %112 = call i64 @SUCCEEDED(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %157

114:                                              ; preds = %110
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %116 = icmp ne %struct.TYPE_12__* %115, null
  br i1 %116, label %117, label %131

117:                                              ; preds = %114
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32 (i32*, %struct.TYPE_12__*, i32*, i32, i32, i32*, i32*)*, i32 (i32*, %struct.TYPE_12__*, i32*, i32, i32, i32*, i32*)** %121, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %125 = load i32*, i32** %18, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %17, align 4
  %128 = load i32*, i32** %15, align 8
  %129 = load i32*, i32** %13, align 8
  %130 = call i32 %122(i32* %123, %struct.TYPE_12__* %124, i32* %125, i32 %126, i32 %127, i32* %128, i32* %129)
  store i32 %130, i32* %19, align 4
  br label %156

131:                                              ; preds = %114
  %132 = load i32*, i32** %8, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %18, align 8
  %138 = load i32, i32* @DISPATCH_METHOD, align 4
  %139 = load i32, i32* %17, align 4
  %140 = load i32*, i32** %15, align 8
  %141 = call i32 @disp_call_value(i32* %132, i32 %136, i32* %137, i32 %138, i32 %139, i32* %140, i32* %21)
  store i32 %141, i32* %19, align 4
  %142 = load i32, i32* %19, align 4
  %143 = call i64 @SUCCEEDED(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %131
  %146 = load i32*, i32** %13, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i32, i32* %21, align 4
  %150 = load i32*, i32** %13, align 8
  store i32 %149, i32* %150, align 4
  br label %154

151:                                              ; preds = %145
  %152 = load i32, i32* %21, align 4
  %153 = call i32 @jsval_release(i32 %152)
  br label %154

154:                                              ; preds = %151, %148
  br label %155

155:                                              ; preds = %154, %131
  br label %156

156:                                              ; preds = %155, %117
  br label %157

157:                                              ; preds = %156, %110
  %158 = load i32*, i32** %18, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32*, i32** %18, align 8
  %162 = call i32 @IDispatch_Release(i32* %161)
  br label %163

163:                                              ; preds = %160, %157
  store i32 0, i32* %16, align 4
  br label %164

164:                                              ; preds = %175, %163
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* %17, align 4
  %167 = icmp ult i32 %165, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %164
  %169 = load i32*, i32** %15, align 8
  %170 = load i32, i32* %16, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @jsval_release(i32 %173)
  br label %175

175:                                              ; preds = %168
  %176 = load i32, i32* %16, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %16, align 4
  br label %164

178:                                              ; preds = %164
  %179 = load i32*, i32** %15, align 8
  %180 = call i32 @heap_free(i32* %179)
  %181 = load i32, i32* %19, align 4
  store i32 %181, i32* %7, align 4
  br label %182

182:                                              ; preds = %178, %62, %34
  %183 = load i32, i32* %7, align 4
  ret i32 %183
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.TYPE_12__* @function_this(%struct.TYPE_11__*) #1

declare dso_local i32 @throw_type_error(i32*, i32, i32*) #1

declare dso_local i32 @is_undefined(i32) #1

declare dso_local i32 @is_null(i32) #1

declare dso_local i32 @to_object(i32*, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @is_object_instance(i32) #1

declare dso_local i32* @iface_to_jsdisp(i32) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i32 @is_class(i32*, i32) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32 @array_to_args(i32*, i32*, i32*, i32**) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @disp_call_value(i32*, i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i32 @IDispatch_Release(i32*) #1

declare dso_local i32 @heap_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
