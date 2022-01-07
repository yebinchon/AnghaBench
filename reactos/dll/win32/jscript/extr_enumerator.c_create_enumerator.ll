; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_enumerator.c_create_enumerator.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_enumerator.c_create_enumerator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [39 x i8] c"I don't know how to handle this type!\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@DISPID_NEWENUM = common dso_local global i32 0, align 4
@IID_NULL = common dso_local global i32 0, align 4
@LOCALE_NEUTRAL = common dso_local global i32 0, align 4
@DISPATCH_METHOD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Enumerator: no DISPID_NEWENUM.\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@VT_DISPATCH = common dso_local global i64 0, align 8
@VT_UNKNOWN = common dso_local global i64 0, align 8
@IID_IEnumVARIANT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Enumerator: NewEnum unexpected type of varresult (%d).\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32**)* @create_enumerator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_enumerator(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %14 = bitcast %struct.TYPE_7__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  store i32* null, i32** %12, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %65

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @is_object_instance(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %24, i32* %4, align 4
  br label %104

25:                                               ; preds = %17
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @get_object(i32 %27)
  store i32* %28, i32** %10, align 8
  %29 = call i32 @VariantInit(i32* %13)
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* @DISPID_NEWENUM, align 4
  %32 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %33 = load i32, i32* @DISPATCH_METHOD, align 4
  %34 = call i32 @IDispatch_Invoke(i32* %30, i32 %31, i32* @IID_NULL, i32 %32, i32 %33, %struct.TYPE_7__* %11, i32* %13, i32* null, i32* null)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @FAILED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = call i32 @WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %40, i32* %4, align 4
  br label %104

41:                                               ; preds = %25
  %42 = call i64 @V_VT(i32* %13)
  %43 = load i64, i64* @VT_DISPATCH, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = call i64 @V_VT(i32* %13)
  %47 = load i64, i64* @VT_UNKNOWN, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45, %41
  %50 = call i32 @V_UNKNOWN(i32* %13)
  %51 = bitcast i32** %12 to i8**
  %52 = call i32 @IUnknown_QueryInterface(i32 %50, i32* @IID_IEnumVARIANT, i8** %51)
  store i32 %52, i32* %9, align 4
  br label %57

53:                                               ; preds = %45
  %54 = call i64 @V_VT(i32* %13)
  %55 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i64 %54)
  %56 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = call i32 @VariantClear(i32* %13)
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @FAILED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %104

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %3
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @alloc_enumerator(i32* %66, i32* null, %struct.TYPE_6__** %8)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i64 @FAILED(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load i32*, i32** %12, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @IEnumVARIANT_Release(i32* %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %4, align 4
  br label %104

79:                                               ; preds = %65
  %80 = load i32*, i32** %12, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  store i32* %80, i32** %82, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = icmp ne i32* %83, null
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %90 = call i32 @enumvar_get_next_item(%struct.TYPE_6__* %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i64 @FAILED(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %79
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = call i32 @jsdisp_release(i32* %96)
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %4, align 4
  br label %104

99:                                               ; preds = %79
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32**, i32*** %7, align 8
  store i32* %101, i32** %102, align 8
  %103 = load i32, i32* @S_OK, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %99, %94, %77, %62, %38, %22
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @is_object_instance(i32) #2

declare dso_local i32 @FIXME(i8*, ...) #2

declare dso_local i32* @get_object(i32) #2

declare dso_local i32 @VariantInit(i32*) #2

declare dso_local i32 @IDispatch_Invoke(i32*, i32, i32*, i32, i32, %struct.TYPE_7__*, i32*, i32*, i32*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @WARN(i8*) #2

declare dso_local i64 @V_VT(i32*) #2

declare dso_local i32 @IUnknown_QueryInterface(i32, i32*, i8**) #2

declare dso_local i32 @V_UNKNOWN(i32*) #2

declare dso_local i32 @VariantClear(i32*) #2

declare dso_local i32 @alloc_enumerator(i32*, i32*, %struct.TYPE_6__**) #2

declare dso_local i32 @IEnumVARIANT_Release(i32*) #2

declare dso_local i32 @enumvar_get_next_item(%struct.TYPE_6__*) #2

declare dso_local i32 @jsdisp_release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
