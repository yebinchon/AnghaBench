; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_disp_propput.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_disp_propput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32*, i32* }

@DISP_E_MEMBERNOTFOUND = common dso_local global i32 0, align 4
@DISPID_PROPERTYPUT = common dso_local global i32 0, align 4
@DISPATCH_PROPERTYPUT = common dso_local global i32 0, align 4
@VT_DISPATCH = common dso_local global i64 0, align 8
@DISPATCH_PROPERTYPUTREF = common dso_local global i32 0, align 4
@IID_IDispatchEx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"using IDispatch\0A\00", align 1
@IID_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @disp_propput(%struct.TYPE_11__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_12__, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32* @iface_to_jsdisp(i32* %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %4
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32* @get_prop(i32* %24, i32 %25)
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i32*, i32** %10, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @prop_put(i32* %30, i32* %31, i32 %32)
  store i32 %33, i32* %11, align 4
  br label %36

34:                                               ; preds = %23
  %35 = load i32, i32* @DISP_E_MEMBERNOTFOUND, align 4
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @jsdisp_release(i32* %37)
  br label %103

39:                                               ; preds = %4
  %40 = load i32, i32* @DISPID_PROPERTYPUT, align 4
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* @DISPATCH_PROPERTYPUT, align 4
  store i32 %41, i32* %14, align 4
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %43 = ptrtoint i32* %15 to i32
  store i32 %43, i32* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %45 = ptrtoint i32* %13 to i32
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  store i32* inttoptr (i64 1 to i32*), i32** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 3
  store i32* inttoptr (i64 1 to i32*), i32** %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @jsval_to_variant(i32 %48, i32* %15)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i64 @FAILED(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %5, align 4
  br label %105

55:                                               ; preds = %39
  %56 = call i64 @V_VT(i32* %15)
  %57 = load i64, i64* @VT_DISPATCH, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* @DISPATCH_PROPERTYPUTREF, align 4
  %61 = load i32, i32* %14, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %59, %55
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = call i32 @clear_ei(%struct.TYPE_11__* %64)
  %66 = load i32*, i32** %7, align 8
  %67 = bitcast i32** %17 to i8**
  %68 = call i32 @IDispatch_QueryInterface(i32* %66, i32* @IID_IDispatchEx, i8** %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i64 @SUCCEEDED(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %63
  %73 = load i32*, i32** %17, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = call i32 @IDispatchEx_InvokeEx(i32* %73, i32 %74, i32 %77, i32 %78, %struct.TYPE_12__* %16, i32* null, i32* %81, i32* %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32*, i32** %17, align 8
  %88 = call i32 @IDispatchEx_Release(i32* %87)
  br label %101

89:                                               ; preds = %63
  store i32 0, i32* %18, align 4
  %90 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = call i32 @IDispatch_Invoke(i32* %91, i32 %92, i32* @IID_NULL, i32 %95, i32 %96, %struct.TYPE_12__* %16, i32* null, i32* %99, i32* %18)
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %89, %72
  %102 = call i32 @VariantClear(i32* %15)
  br label %103

103:                                              ; preds = %101, %36
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %103, %53
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32* @iface_to_jsdisp(i32*) #1

declare dso_local i32* @get_prop(i32*, i32) #1

declare dso_local i32 @prop_put(i32*, i32*, i32) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32 @jsval_to_variant(i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i32 @clear_ei(%struct.TYPE_11__*) #1

declare dso_local i32 @IDispatch_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IDispatchEx_InvokeEx(i32*, i32, i32, i32, %struct.TYPE_12__*, i32*, i32*, i32*) #1

declare dso_local i32 @IDispatchEx_Release(i32*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @IDispatch_Invoke(i32*, i32, i32*, i32, i32, %struct.TYPE_12__*, i32*, i32*, i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
