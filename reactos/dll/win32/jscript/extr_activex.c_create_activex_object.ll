; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_activex.c_create_activex_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_activex.c_create_activex_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.CONFIRMSAFETY = type { i64, i32*, i64 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"GUID %s\0A\00", align 1
@INTERFACE_USES_SECURITY_MANAGER = common dso_local global i32 0, align 4
@URLACTION_ACTIVEX_RUN = common dso_local global i32 0, align 4
@URLPOLICY_ALLOW = common dso_local global i64 0, align 8
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@CLSCTX_LOCAL_SERVER = common dso_local global i32 0, align 4
@IID_IClassFactory = common dso_local global i32 0, align 4
@IID_IClassFactoryEx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Use IClassFactoryEx\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@GUID_CUSTOM_CONFIRMOBJECTSAFETY = common dso_local global i32 0, align 4
@URLPOLICY_DISALLOW = common dso_local global i64 0, align 8
@IID_IObjectWithSite = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i32*)* @create_activex_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_activex_object(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.CONFIRMSAFETY, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @debugstr_w(i32* %18)
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @CLSIDFromProgID(i32* %21, i64* %15)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = call i64 @FAILED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %159

27:                                               ; preds = %2
  %28 = call i32 @debugstr_guid(i64* %15)
  %29 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @INTERFACE_USES_SECURITY_MANAGER, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %27
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = call i32* @get_sec_mgr(%struct.TYPE_5__* %37)
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32* null, i32** %3, align 8
  br label %159

42:                                               ; preds = %36
  store i64 0, i64* %14, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @URLACTION_ACTIVEX_RUN, align 4
  %45 = bitcast i64* %14 to i32*
  %46 = bitcast i64* %15 to i32*
  %47 = call i32 @IInternetHostSecurityManager_ProcessUrlAction(i32* %43, i32 %44, i32* %45, i32 8, i32* %46, i32 8, i32 0, i32 0)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = call i64 @FAILED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %42
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* @URLPOLICY_ALLOW, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %42
  store i32* null, i32** %3, align 8
  br label %159

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %27
  %58 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %59 = load i32, i32* @CLSCTX_LOCAL_SERVER, align 4
  %60 = or i32 %58, %59
  %61 = bitcast i32** %10 to i8**
  %62 = call i32 @CoGetClassObject(i64* %15, i32 %60, i32* null, i32* @IID_IClassFactory, i8** %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i64 @FAILED(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i32* null, i32** %3, align 8
  br label %159

67:                                               ; preds = %57
  %68 = load i32*, i32** %10, align 8
  %69 = bitcast i32** %9 to i8**
  %70 = call i32 @IClassFactory_QueryInterface(i32* %68, i32* @IID_IClassFactoryEx, i8** %69)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = call i64 @SUCCEEDED(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = call i32 @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @IClassFactoryEx_Release(i32* %76)
  br label %78

78:                                               ; preds = %74, %67
  %79 = load i32*, i32** %10, align 8
  %80 = bitcast i32** %13 to i8**
  %81 = call i32 @IClassFactory_CreateInstance(i32* %79, i32* null, i32* @IID_IUnknown, i8** %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = call i64 @FAILED(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i32* null, i32** %3, align 8
  br label %159

86:                                               ; preds = %78
  %87 = load i32*, i32** %6, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %126

89:                                               ; preds = %86
  %90 = load i64, i64* %15, align 8
  %91 = getelementptr inbounds %struct.CONFIRMSAFETY, %struct.CONFIRMSAFETY* %8, i32 0, i32 2
  store i64 %90, i64* %91, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = getelementptr inbounds %struct.CONFIRMSAFETY, %struct.CONFIRMSAFETY* %8, i32 0, i32 1
  store i32* %92, i32** %93, align 8
  %94 = getelementptr inbounds %struct.CONFIRMSAFETY, %struct.CONFIRMSAFETY* %8, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = bitcast %struct.CONFIRMSAFETY* %8 to i32*
  %97 = call i32 @IInternetHostSecurityManager_QueryCustomPolicy(i32* %95, i32* @GUID_CUSTOM_CONFIRMOBJECTSAFETY, i32** %12, i64* %11, i32* %96, i32 24, i32 0)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = call i64 @SUCCEEDED(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %89
  %102 = load i64, i64* %11, align 8
  %103 = icmp uge i64 %102, 8
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32*, i32** %12, align 8
  %106 = bitcast i32* %105 to i64*
  %107 = load i64, i64* %106, align 8
  br label %110

108:                                              ; preds = %101
  %109 = load i64, i64* @URLPOLICY_DISALLOW, align 8
  br label %110

110:                                              ; preds = %108, %104
  %111 = phi i64 [ %107, %104 ], [ %109, %108 ]
  store i64 %111, i64* %14, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = call i32 @CoTaskMemFree(i32* %112)
  br label %114

114:                                              ; preds = %110, %89
  %115 = load i32, i32* %16, align 4
  %116 = call i64 @FAILED(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load i64, i64* %14, align 8
  %120 = load i64, i64* @URLPOLICY_ALLOW, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118, %114
  %123 = load i32*, i32** %13, align 8
  %124 = call i32 @IUnknown_Release(i32* %123)
  store i32* null, i32** %3, align 8
  br label %159

125:                                              ; preds = %118
  br label %126

126:                                              ; preds = %125, %86
  %127 = load i32*, i32** %13, align 8
  %128 = bitcast i32** %7 to i8**
  %129 = call i32 @IUnknown_QueryInterface(i32* %127, i32* @IID_IObjectWithSite, i8** %128)
  store i32 %129, i32* %16, align 4
  %130 = load i32, i32* %16, align 4
  %131 = call i64 @SUCCEEDED(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %157

133:                                              ; preds = %126
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %135 = call i32* @create_ax_site(%struct.TYPE_5__* %134)
  store i32* %135, i32** %17, align 8
  %136 = load i32*, i32** %17, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load i32*, i32** %7, align 8
  %140 = load i32*, i32** %17, align 8
  %141 = call i32 @IObjectWithSite_SetSite(i32* %139, i32* %140)
  store i32 %141, i32* %16, align 4
  %142 = load i32*, i32** %17, align 8
  %143 = call i32 @IUnknown_Release(i32* %142)
  br label %144

144:                                              ; preds = %138, %133
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 @IObjectWithSite_Release(i32* %145)
  %147 = load i32*, i32** %17, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load i32, i32* %16, align 4
  %151 = call i64 @FAILED(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %149, %144
  %154 = load i32*, i32** %13, align 8
  %155 = call i32 @IUnknown_Release(i32* %154)
  store i32* null, i32** %3, align 8
  br label %159

156:                                              ; preds = %149
  br label %157

157:                                              ; preds = %156, %126
  %158 = load i32*, i32** %13, align 8
  store i32* %158, i32** %3, align 8
  br label %159

159:                                              ; preds = %157, %153, %122, %85, %66, %55, %41, %26
  %160 = load i32*, i32** %3, align 8
  ret i32* %160
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @CLSIDFromProgID(i32*, i64*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @debugstr_guid(i64*) #1

declare dso_local i32* @get_sec_mgr(%struct.TYPE_5__*) #1

declare dso_local i32 @IInternetHostSecurityManager_ProcessUrlAction(i32*, i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @CoGetClassObject(i64*, i32, i32*, i32*, i8**) #1

declare dso_local i32 @IClassFactory_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @IClassFactoryEx_Release(i32*) #1

declare dso_local i32 @IClassFactory_CreateInstance(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @IInternetHostSecurityManager_QueryCustomPolicy(i32*, i32*, i32**, i64*, i32*, i32, i32) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32* @create_ax_site(%struct.TYPE_5__*) #1

declare dso_local i32 @IObjectWithSite_SetSite(i32*, i32*) #1

declare dso_local i32 @IObjectWithSite_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
