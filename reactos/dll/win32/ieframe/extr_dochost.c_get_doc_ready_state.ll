; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_dochost.c_get_doc_ready_state.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_dochost.c_get_doc_ready_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32* }

@IID_IDispatch = common dso_local global i32 0, align 4
@DISPID_READYSTATE = common dso_local global i32 0, align 4
@IID_NULL = common dso_local global i32 0, align 4
@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@DISPATCH_PROPERTYGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Invoke(DISPID_READYSTATE failed: %08x\0A\00", align 1
@VT_I4 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"V_VT(var) = %d\0A\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32*)* @get_doc_ready_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_doc_ready_state(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = bitcast %struct.TYPE_6__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = bitcast i32** %7 to i8**
  %16 = call i64 @IUnknown_QueryInterface(i32 %14, i32* @IID_IDispatch, i8** %15)
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i64 @FAILED(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i64, i64* %10, align 8
  store i64 %21, i64* %3, align 8
  br label %50

22:                                               ; preds = %2
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @DISPID_READYSTATE, align 4
  %25 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %26 = load i32, i32* @DISPATCH_PROPERTYGET, align 4
  %27 = call i64 @IDispatch_Invoke(i32* %23, i32 %24, i32* @IID_NULL, i32 %25, i32 %26, %struct.TYPE_6__* %6, i32* %9, i32* %8, i32* null)
  store i64 %27, i64* %10, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @IDispatch_Release(i32* %28)
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @FAILED(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i64, i64* %10, align 8
  store i64 %36, i64* %3, align 8
  br label %50

37:                                               ; preds = %22
  %38 = call i64 @V_VT(i32* %9)
  %39 = load i64, i64* @VT_I4, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = call i64 @V_VT(i32* %9)
  %43 = call i32 @WARN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = call i32 @VariantClear(i32* %9)
  %45 = load i64, i64* @E_FAIL, align 8
  store i64 %45, i64* %3, align 8
  br label %50

46:                                               ; preds = %37
  %47 = call i32 @V_I4(i32* %9)
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i64, i64* @S_OK, align 8
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %46, %41, %33, %20
  %51 = load i64, i64* %3, align 8
  ret i64 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @IUnknown_QueryInterface(i32, i32*, i8**) #2

declare dso_local i64 @FAILED(i64) #2

declare dso_local i64 @IDispatch_Invoke(i32*, i32, i32*, i32, i32, %struct.TYPE_6__*, i32*, i32*, i32*) #2

declare dso_local i32 @IDispatch_Release(i32*) #2

declare dso_local i32 @WARN(i8*, i64) #2

declare dso_local i64 @V_VT(i32*) #2

declare dso_local i32 @VariantClear(i32*) #2

declare dso_local i32 @V_I4(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
