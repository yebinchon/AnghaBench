; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dxdiagn/extr_provider.c_fill_processor_information.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dxdiagn/extr_provider.c_fill_processor_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fill_processor_information.szProcessorEnglish = internal constant [19 x i8] c"szProcessorEnglish\00", align 16
@fill_processor_information.cimv2W = internal constant [15 x i8] c"\\\\.\\root\\cimv2\00", align 1
@fill_processor_information.proc_classW = internal constant [16 x i8] c"Win32_Processor\00", align 16
@fill_processor_information.nameW = internal constant [5 x i8] c"Name\00", align 1
@fill_processor_information.max_clock_speedW = internal constant [14 x i8] c"MaxClockSpeed\00", align 1
@fill_processor_information.cpu_noW = internal constant [26 x i8] c"NumberOfLogicalProcessors\00", align 16
@fill_processor_information.processor_fmtW = internal constant [20 x i8] c"%s(%d CPUs), ~%dMHz\00", align 16
@CLSID_WbemLocator = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IWbemLocator = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@WBEM_FLAG_SYSTEM_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @fill_processor_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_processor_information(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [200 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %15 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %16 = bitcast i32** %4 to i8**
  %17 = call i32 @CoCreateInstance(i32* @CLSID_WbemLocator, i32* null, i32 %15, i32* @IID_IWbemLocator, i8** %16)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = call i64 @FAILED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %2, align 4
  br label %118

23:                                               ; preds = %1
  %24 = call i64 @SysAllocString(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @fill_processor_information.cimv2W, i64 0, i64 0))
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @IWbemLocator_Release(i32* %28)
  %30 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %30, i32* %2, align 4
  br label %118

31:                                               ; preds = %23
  %32 = load i32*, i32** %4, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @IWbemLocator_ConnectServer(i32* %32, i64 %33, i32* null, i32* null, i32* null, i32 0, i32* null, i32* null, i32** %5)
  store i32 %34, i32* %14, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @IWbemLocator_Release(i32* %35)
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @SysFreeString(i64 %37)
  %39 = load i32, i32* %14, align 4
  %40 = call i64 @FAILED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %31
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %2, align 4
  br label %118

44:                                               ; preds = %31
  %45 = call i64 @SysAllocString(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @fill_processor_information.proc_classW, i64 0, i64 0))
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @IWbemServices_Release(i32* %49)
  %51 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %51, i32* %2, align 4
  br label %118

52:                                               ; preds = %44
  %53 = load i32*, i32** %5, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i32, i32* @WBEM_FLAG_SYSTEM_ONLY, align 4
  %56 = call i32 @IWbemServices_CreateInstanceEnum(i32* %53, i64 %54, i32 %55, i32* null, i32** %7)
  store i32 %56, i32* %14, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @IWbemServices_Release(i32* %57)
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @SysFreeString(i64 %59)
  %61 = load i32, i32* %14, align 4
  %62 = call i64 @FAILED(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %2, align 4
  br label %118

66:                                               ; preds = %52
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @IEnumWbemClassObject_Next(i32* %67, i32 1000, i32 1, i32** %6, i32* %13)
  store i32 %68, i32* %14, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @IEnumWbemClassObject_Release(i32* %69)
  %71 = load i32, i32* %14, align 4
  %72 = call i64 @FAILED(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %2, align 4
  br label %118

76:                                               ; preds = %66
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @IWbemClassObject_Get(i32* %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @fill_processor_information.cpu_noW, i64 0, i64 0), i32 0, i32* %9, i32* null, i32* null)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = call i64 @FAILED(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @IWbemClassObject_Release(i32* %83)
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %2, align 4
  br label %118

86:                                               ; preds = %76
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @IWbemClassObject_Get(i32* %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @fill_processor_information.max_clock_speedW, i64 0, i64 0), i32 0, i32* %10, i32* null, i32* null)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i64 @FAILED(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @IWbemClassObject_Release(i32* %93)
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %2, align 4
  br label %118

96:                                               ; preds = %86
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @IWbemClassObject_Get(i32* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @fill_processor_information.nameW, i64 0, i64 0), i32 0, i32* %8, i32* null, i32* null)
  store i32 %98, i32* %14, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @IWbemClassObject_Release(i32* %99)
  %101 = load i32, i32* %14, align 4
  %102 = call i64 @FAILED(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %2, align 4
  br label %118

106:                                              ; preds = %96
  %107 = getelementptr inbounds [200 x i8], [200 x i8]* %11, i64 0, i64 0
  %108 = call i8* @V_BSTR(i32* %8)
  %109 = call i32 @V_I4(i32* %9)
  %110 = call i32 @V_I4(i32* %10)
  %111 = call i32 @swprintf(i8* %107, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @fill_processor_information.processor_fmtW, i64 0, i64 0), i8* %108, i32 %109, i32 %110)
  %112 = call i32 @VariantClear(i32* %8)
  %113 = call i32 @VariantClear(i32* %9)
  %114 = call i32 @VariantClear(i32* %10)
  %115 = load i32*, i32** %3, align 8
  %116 = getelementptr inbounds [200 x i8], [200 x i8]* %11, i64 0, i64 0
  %117 = call i32 @add_bstr_property(i32* %115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @fill_processor_information.szProcessorEnglish, i64 0, i64 0), i8* %116)
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %106, %104, %92, %82, %74, %64, %48, %42, %27, %21
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @SysAllocString(i8*) #1

declare dso_local i32 @IWbemLocator_Release(i32*) #1

declare dso_local i32 @IWbemLocator_ConnectServer(i32*, i64, i32*, i32*, i32*, i32, i32*, i32*, i32**) #1

declare dso_local i32 @SysFreeString(i64) #1

declare dso_local i32 @IWbemServices_Release(i32*) #1

declare dso_local i32 @IWbemServices_CreateInstanceEnum(i32*, i64, i32, i32*, i32**) #1

declare dso_local i32 @IEnumWbemClassObject_Next(i32*, i32, i32, i32**, i32*) #1

declare dso_local i32 @IEnumWbemClassObject_Release(i32*) #1

declare dso_local i32 @IWbemClassObject_Get(i32*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @IWbemClassObject_Release(i32*) #1

declare dso_local i32 @swprintf(i8*, i8*, i8*, i32, i32) #1

declare dso_local i8* @V_BSTR(i32*) #1

declare dso_local i32 @V_I4(i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i32 @add_bstr_property(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
