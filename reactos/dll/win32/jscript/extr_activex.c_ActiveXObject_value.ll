; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_activex.c_ActiveXObject_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_activex.c_ActiveXObject_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DISPATCH_CONSTRUCT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"unsupported flags %x\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@INTERFACESAFE_FOR_UNTRUSTED_DATA = common dso_local global i32 0, align 4
@INTERFACE_USES_DISPEX = common dso_local global i32 0, align 4
@INTERFACE_USES_SECURITY_MANAGER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Unsupported safeopt %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"unsupported argc %d\0A\00", align 1
@JS_E_CANNOT_CREATE_OBJ = common dso_local global i32 0, align 4
@IID_IDispatch = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Object does not support IDispatch\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i64, i32, i32*, i32*)* @ActiveXObject_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ActiveXObject_value(%struct.TYPE_6__* %0, i32* %1, i64 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @DISPATCH_CONSTRUCT, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = load i64, i64* %10, align 8
  %25 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %26, i32* %7, align 4
  br label %96

27:                                               ; preds = %6
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @INTERFACESAFE_FOR_UNTRUSTED_DATA, align 4
  %32 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @INTERFACE_USES_SECURITY_MANAGER, align 4
  %35 = or i32 %33, %34
  %36 = icmp ne i32 %30, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %27
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @INTERFACE_USES_DISPEX, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %48, i32* %7, align 4
  br label %96

49:                                               ; preds = %37, %27
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %55, i32* %7, align 4
  br label %96

56:                                               ; preds = %49
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @to_flat_string(%struct.TYPE_6__* %57, i32 %60, i32** %14, i32** %15)
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %18, align 4
  %63 = call i64 @FAILED(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* %18, align 4
  store i32 %66, i32* %7, align 4
  br label %96

67:                                               ; preds = %56
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = load i32*, i32** %15, align 8
  %70 = call i32* @create_activex_object(%struct.TYPE_6__* %68, i32* %69)
  store i32* %70, i32** %17, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = call i32 @jsstr_release(i32* %71)
  %73 = load i32*, i32** %17, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %67
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = load i32, i32* @JS_E_CANNOT_CREATE_OBJ, align 4
  %78 = call i32 @throw_generic_error(%struct.TYPE_6__* %76, i32 %77, i32* null)
  store i32 %78, i32* %7, align 4
  br label %96

79:                                               ; preds = %67
  %80 = load i32*, i32** %17, align 8
  %81 = bitcast i32** %16 to i8**
  %82 = call i32 @IUnknown_QueryInterface(i32* %80, i32* @IID_IDispatch, i8** %81)
  store i32 %82, i32* %18, align 4
  %83 = load i32*, i32** %17, align 8
  %84 = call i32 @IUnknown_Release(i32* %83)
  %85 = load i32, i32* %18, align 4
  %86 = call i64 @FAILED(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %90, i32* %7, align 4
  br label %96

91:                                               ; preds = %79
  %92 = load i32*, i32** %16, align 8
  %93 = call i32 @jsval_disp(i32* %92)
  %94 = load i32*, i32** %13, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* @S_OK, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %91, %88, %75, %65, %52, %43, %23
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @to_flat_string(%struct.TYPE_6__*, i32, i32**, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32* @create_activex_object(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32 @throw_generic_error(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @jsval_disp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
