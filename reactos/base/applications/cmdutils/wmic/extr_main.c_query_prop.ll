; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/wmic/extr_main.c_query_prop.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/wmic/extr_main.c_query_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@query_prop.select_allW = internal constant [15 x i8] c"SELECT * FROM \00", align 1
@query_prop.cimv2W = internal constant [11 x i8] c"ROOT\\CIMV2\00", align 1
@query_prop.wqlW = internal constant [4 x i8] c"WQL\00", align 1
@WBEM_FLAG_RETURN_IMMEDIATELY = common dso_local global i32 0, align 4
@WBEM_FLAG_FORWARD_ONLY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"%s, %s\0A\00", align 1
@RPC_C_AUTHN_LEVEL_DEFAULT = common dso_local global i32 0, align 4
@RPC_C_IMP_LEVEL_IMPERSONATE = common dso_local global i32 0, align 4
@EOAC_NONE = common dso_local global i32 0, align 4
@CLSID_WbemLocator = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IWbemLocator = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@WBEM_INFINITE = common dso_local global i32 0, align 4
@STRING_INVALID_QUERY = common dso_local global i32 0, align 4
@WBEM_S_NO_ERROR = common dso_local global i64 0, align 8
@VT_BSTR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @query_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_prop(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %21 = load i32, i32* @WBEM_FLAG_RETURN_IMMEDIATELY, align 4
  %22 = load i32, i32* @WBEM_FLAG_FORWARD_ONLY, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i8* null, i8** %13, align 8
  %24 = load i64, i64* @TRUE, align 8
  store i64 %24, i64* %14, align 8
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @debugstr_w(i8* %25)
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @debugstr_w(i8* %27)
  %29 = call i32 @WINE_TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28)
  %30 = call i32 @CoInitialize(i32* null)
  %31 = load i32, i32* @RPC_C_AUTHN_LEVEL_DEFAULT, align 4
  %32 = load i32, i32* @RPC_C_IMP_LEVEL_IMPERSONATE, align 4
  %33 = load i32, i32* @EOAC_NONE, align 4
  %34 = call i32 @CoInitializeSecurity(i32* null, i32 -1, i32* null, i32* null, i32 %31, i32 %32, i32* null, i32 %33, i32* null)
  %35 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %36 = bitcast i32** %6 to i8**
  %37 = call i64 @CoCreateInstance(i32* @CLSID_WbemLocator, i32* null, i32 %35, i32* @IID_IWbemLocator, i8** %36)
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @S_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  br label %155

42:                                               ; preds = %2
  %43 = call i32* @SysAllocString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @query_prop.cimv2W, i64 0, i64 0))
  store i32* %43, i32** %10, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  br label %155

46:                                               ; preds = %42
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i64 @IWbemLocator_ConnectServer(i32* %47, i32* %48, i32* null, i32* null, i32* null, i32 0, i32* null, i32* null, i32** %7)
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %155

54:                                               ; preds = %46
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 @strlenW(i8* %55)
  %57 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @query_prop.select_allW, i64 0, i64 0))
  %58 = add nsw i32 %56, %57
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = call i32* @SysAllocStringLen(i32* null, i32 %59)
  store i32* %60, i32** %12, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  br label %155

63:                                               ; preds = %54
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @strcpyW(i32* %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @query_prop.select_allW, i64 0, i64 0))
  %66 = load i32*, i32** %12, align 8
  %67 = load i8*, i8** %3, align 8
  %68 = call i32 @strcatW(i32* %66, i8* %67)
  %69 = call i32* @SysAllocString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @query_prop.wqlW, i64 0, i64 0))
  store i32* %69, i32** %11, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %155

72:                                               ; preds = %63
  %73 = load i32*, i32** %7, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i64 @IWbemServices_ExecQuery(i32* %73, i32* %74, i32* %75, i32 %76, i32* null, i32** %8)
  store i64 %77, i64* %5, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* @S_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %155

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %115, %82
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* @WBEM_INFINITE, align 4
  %86 = call i32 @IEnumWbemClassObject_Next(i32* %84, i32 %85, i32 1, i32** %17, i32* %18)
  %87 = load i32, i32* %18, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  br label %118

90:                                               ; preds = %83
  %91 = load i8*, i8** %13, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %101, label %93

93:                                               ; preds = %90
  %94 = load i32*, i32** %17, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = call i8* @find_prop(i32* %94, i8* %95)
  store i8* %96, i8** %13, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* @STRING_INVALID_QUERY, align 4
  %100 = call i32 @output_error(i32 %99)
  br label %155

101:                                              ; preds = %93, %90
  %102 = load i32*, i32** %17, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = call i64 @IWbemClassObject_Get(i32* %102, i8* %103, i32 0, i32* %20, i32* null, i32* null)
  %105 = load i64, i64* @WBEM_S_NO_ERROR, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %101
  %108 = load i32, i32* @VT_BSTR, align 4
  %109 = call i32 @VariantChangeType(i32* %20, i32* %20, i32 0, i32 %108)
  %110 = call i8* @V_BSTR(i32* %20)
  %111 = call i32 @strlenW(i8* %110)
  %112 = load i32, i32* %19, align 4
  %113 = call i32 @max(i32 %111, i32 %112)
  store i32 %113, i32* %19, align 4
  %114 = call i32 @VariantClear(i32* %20)
  br label %115

115:                                              ; preds = %107, %101
  %116 = load i32*, i32** %17, align 8
  %117 = call i32 @IWbemClassObject_Release(i32* %116)
  br label %83

118:                                              ; preds = %89
  %119 = load i32, i32* %19, align 4
  %120 = add nsw i32 %119, 2
  store i32 %120, i32* %19, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = call i32 @IEnumWbemClassObject_Reset(i32* %121)
  br label %123

123:                                              ; preds = %151, %118
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* @WBEM_INFINITE, align 4
  %126 = call i32 @IEnumWbemClassObject_Next(i32* %124, i32 %125, i32 1, i32** %17, i32* %18)
  %127 = load i32, i32* %18, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %123
  br label %154

130:                                              ; preds = %123
  %131 = load i64, i64* %14, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i8*, i8** %13, align 8
  %135 = load i32, i32* %19, align 4
  %136 = call i32 @output_header(i8* %134, i32 %135)
  %137 = load i64, i64* @FALSE, align 8
  store i64 %137, i64* %14, align 8
  br label %138

138:                                              ; preds = %133, %130
  %139 = load i32*, i32** %17, align 8
  %140 = load i8*, i8** %13, align 8
  %141 = call i64 @IWbemClassObject_Get(i32* %139, i8* %140, i32 0, i32* %20, i32* null, i32* null)
  %142 = load i64, i64* @WBEM_S_NO_ERROR, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %138
  %145 = load i32, i32* @VT_BSTR, align 4
  %146 = call i32 @VariantChangeType(i32* %20, i32* %20, i32 0, i32 %145)
  %147 = call i8* @V_BSTR(i32* %20)
  %148 = load i32, i32* %19, align 4
  %149 = call i32 @output_line(i8* %147, i32 %148)
  %150 = call i32 @VariantClear(i32* %20)
  br label %151

151:                                              ; preds = %144, %138
  %152 = load i32*, i32** %17, align 8
  %153 = call i32 @IWbemClassObject_Release(i32* %152)
  br label %123

154:                                              ; preds = %129
  store i32 0, i32* %16, align 4
  br label %155

155:                                              ; preds = %154, %98, %81, %71, %62, %53, %45, %41
  %156 = load i32*, i32** %8, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32*, i32** %8, align 8
  %160 = call i32 @IEnumWbemClassObject_Release(i32* %159)
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i32*, i32** %7, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32*, i32** %7, align 8
  %166 = call i32 @IWbemServices_Release(i32* %165)
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i32*, i32** %6, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32*, i32** %6, align 8
  %172 = call i32 @IWbemLocator_Release(i32* %171)
  br label %173

173:                                              ; preds = %170, %167
  %174 = load i32*, i32** %10, align 8
  %175 = call i32 @SysFreeString(i32* %174)
  %176 = load i32*, i32** %12, align 8
  %177 = call i32 @SysFreeString(i32* %176)
  %178 = load i32*, i32** %11, align 8
  %179 = call i32 @SysFreeString(i32* %178)
  %180 = call i32 (...) @GetProcessHeap()
  %181 = load i8*, i8** %13, align 8
  %182 = call i32 @HeapFree(i32 %180, i32 0, i8* %181)
  %183 = call i32 (...) @CoUninitialize()
  %184 = load i32, i32* %16, align 4
  ret i32 %184
}

declare dso_local i32 @WINE_TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @CoInitialize(i32*) #1

declare dso_local i32 @CoInitializeSecurity(i32*, i32, i32*, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32* @SysAllocString(i8*) #1

declare dso_local i64 @IWbemLocator_ConnectServer(i32*, i32*, i32*, i32*, i32*, i32, i32*, i32*, i32**) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32* @SysAllocStringLen(i32*, i32) #1

declare dso_local i32 @strcpyW(i32*, i8*) #1

declare dso_local i32 @strcatW(i32*, i8*) #1

declare dso_local i64 @IWbemServices_ExecQuery(i32*, i32*, i32*, i32, i32*, i32**) #1

declare dso_local i32 @IEnumWbemClassObject_Next(i32*, i32, i32, i32**, i32*) #1

declare dso_local i8* @find_prop(i32*, i8*) #1

declare dso_local i32 @output_error(i32) #1

declare dso_local i64 @IWbemClassObject_Get(i32*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @VariantChangeType(i32*, i32*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i8* @V_BSTR(i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i32 @IWbemClassObject_Release(i32*) #1

declare dso_local i32 @IEnumWbemClassObject_Reset(i32*) #1

declare dso_local i32 @output_header(i8*, i32) #1

declare dso_local i32 @output_line(i8*, i32) #1

declare dso_local i32 @IEnumWbemClassObject_Release(i32*) #1

declare dso_local i32 @IWbemServices_Release(i32*) #1

declare dso_local i32 @IWbemLocator_Release(i32*) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CoUninitialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
