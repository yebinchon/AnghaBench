; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_object.c_Object_hasOwnProperty.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_object.c_Object_hasOwnProperty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@DISP_E_UNKNOWNNAME = common dso_local global i64 0, align 8
@fdexNameCaseSensitive = common dso_local global i32 0, align 4
@IID_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32, i32*, i32*)* @Object_hasOwnProperty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Object_hasOwnProperty(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %6
  %24 = load i32*, i32** %13, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* @FALSE, align 4
  %28 = call i32 @jsval_bool(i32 %27)
  %29 = load i32*, i32** %13, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i64, i64* @S_OK, align 8
  store i64 %31, i64* %7, align 8
  br label %139

32:                                               ; preds = %6
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @to_string(%struct.TYPE_12__* %33, i32 %36, i32** %14)
  store i64 %37, i64* %17, align 8
  %38 = load i64, i64* %17, align 8
  %39 = call i64 @FAILED(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i64, i64* %17, align 8
  store i64 %42, i64* %7, align 8
  br label %139

43:                                               ; preds = %32
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %45 = call i64 @is_jsdisp(%struct.TYPE_11__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %87

47:                                               ; preds = %43
  %48 = load i32*, i32** %14, align 8
  %49 = call i32* @jsstr_flatten(i32* %48)
  store i32* %49, i32** %19, align 8
  %50 = load i32*, i32** %19, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load i32*, i32** %14, align 8
  %54 = call i32 @jsstr_release(i32* %53)
  %55 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %55, i64* %7, align 8
  br label %139

56:                                               ; preds = %47
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %19, align 8
  %62 = load i32, i32* @TRUE, align 4
  %63 = call i64 @jsdisp_get_own_property(i32 %60, i32* %61, i32 %62, i32* %18)
  store i64 %63, i64* %17, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = call i32 @jsstr_release(i32* %64)
  %66 = load i64, i64* %17, align 8
  %67 = call i64 @FAILED(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %56
  %70 = load i64, i64* %17, align 8
  %71 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i64, i64* %17, align 8
  store i64 %74, i64* %7, align 8
  br label %139

75:                                               ; preds = %69, %56
  %76 = load i32*, i32** %13, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i64, i64* %17, align 8
  %80 = load i64, i64* @S_OK, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @jsval_bool(i32 %82)
  %84 = load i32*, i32** %13, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %78, %75
  %86 = load i64, i64* @S_OK, align 8
  store i64 %86, i64* %7, align 8
  br label %139

87:                                               ; preds = %43
  %88 = load i32*, i32** %14, align 8
  %89 = call i32 @jsstr_length(i32* %88)
  %90 = call i64 @SysAllocStringLen(i32* null, i32 %89)
  store i64 %90, i64* %16, align 8
  %91 = load i64, i64* %16, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i32*, i32** %14, align 8
  %95 = load i64, i64* %16, align 8
  %96 = call i32 @jsstr_flush(i32* %94, i64 %95)
  br label %97

97:                                               ; preds = %93, %87
  %98 = load i32*, i32** %14, align 8
  %99 = call i32 @jsstr_release(i32* %98)
  %100 = load i64, i64* %16, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %97
  %103 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %103, i64* %7, align 8
  br label %139

104:                                              ; preds = %97
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %106 = call i64 @is_dispex(%struct.TYPE_11__* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %104
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %16, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %115 = load i32, i32* @fdexNameCaseSensitive, align 4
  %116 = call i32 @make_grfdex(%struct.TYPE_12__* %114, i32 %115)
  %117 = call i64 @IDispatchEx_GetDispID(i32 %112, i64 %113, i32 %116, i32* %15)
  store i64 %117, i64* %17, align 8
  br label %127

118:                                              ; preds = %104
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @IDispatch_GetIDsOfNames(i32 %122, i32* @IID_NULL, i64* %16, i32 1, i32 %125, i32* %15)
  store i64 %126, i64* %17, align 8
  br label %127

127:                                              ; preds = %118, %108
  %128 = load i64, i64* %16, align 8
  %129 = call i32 @SysFreeString(i64 %128)
  %130 = load i32*, i32** %13, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load i64, i64* %17, align 8
  %134 = call i32 @SUCCEEDED(i64 %133)
  %135 = call i32 @jsval_bool(i32 %134)
  %136 = load i32*, i32** %13, align 8
  store i32 %135, i32* %136, align 4
  br label %137

137:                                              ; preds = %132, %127
  %138 = load i64, i64* @S_OK, align 8
  store i64 %138, i64* %7, align 8
  br label %139

139:                                              ; preds = %137, %102, %85, %73, %52, %41, %30
  %140 = load i64, i64* %7, align 8
  ret i64 %140
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @jsval_bool(i32) #1

declare dso_local i64 @to_string(%struct.TYPE_12__*, i32, i32**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @is_jsdisp(%struct.TYPE_11__*) #1

declare dso_local i32* @jsstr_flatten(i32*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i64 @jsdisp_get_own_property(i32, i32*, i32, i32*) #1

declare dso_local i64 @SysAllocStringLen(i32*, i32) #1

declare dso_local i32 @jsstr_length(i32*) #1

declare dso_local i32 @jsstr_flush(i32*, i64) #1

declare dso_local i64 @is_dispex(%struct.TYPE_11__*) #1

declare dso_local i64 @IDispatchEx_GetDispID(i32, i64, i32, i32*) #1

declare dso_local i32 @make_grfdex(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @IDispatch_GetIDsOfNames(i32, i32*, i64*, i32, i32, i32*) #1

declare dso_local i32 @SysFreeString(i64) #1

declare dso_local i32 @SUCCEEDED(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
