; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_rdg.c_kuhl_m_dpapi_rdg_LogonCredentials.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_rdg.c_kuhl_m_dpapi_rdg_LogonCredentials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i32] [i32 108, i32 111, i32 103, i32 111, i32 110, i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 115, i32 0], align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i32] [i32 117, i32 115, i32 101, i32 114, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.2 = private unnamed_addr constant [7 x i32] [i32 100, i32 111, i32 109, i32 97, i32 105, i32 110, i32 0], align 4
@.str.3 = private unnamed_addr constant [9 x i32] [i32 112, i32 97, i32 115, i32 115, i32 119, i32 111, i32 114, i32 100, i32 0], align 4
@.str.4 = private unnamed_addr constant [19 x i32] [i32 37, i32 42, i32 115, i32 42, i32 32, i32 37, i32 115, i32 32, i32 92, i32 32, i32 37, i32 115, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@KULL_M_DPAPI_GUID_PROVIDER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i32] [i32 37, i32 42, i32 115, i32 62, i32 62, i32 32, i32 99, i32 108, i32 101, i32 97, i32 114, i32 116, i32 101, i32 120, i32 116, i32 32, i32 112, i32 97, i32 115, i32 115, i32 119, i32 111, i32 114, i32 100, i32 58, i32 32, i32 37, i32 46, i32 42, i32 115, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [37 x i32] [i32 77, i32 97, i32 121, i32 98, i32 101, i32 32, i32 99, i32 101, i32 114, i32 116, i32 105, i32 102, i32 105, i32 99, i32 97, i32 116, i32 101, i32 32, i32 101, i32 110, i32 99, i32 114, i32 121, i32 112, i32 116, i32 105, i32 111, i32 110, i32 32, i32 40, i32 116, i32 111, i32 100, i32 111, i32 41, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [12 x i32] [i32 115, i32 122, i32 68, i32 97, i32 116, i32 97, i32 58, i32 32, i32 37, i32 117, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_dpapi_rdg_LogonCredentials(i32 %0, i32* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @IXMLDOMNode_selectSingleNode(i32* %17, i8* bitcast ([17 x i32]* @.str to i8*), i32** %9)
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %95

21:                                               ; preds = %4
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %95

24:                                               ; preds = %21
  %25 = load i32*, i32** %9, align 8
  %26 = call i32* @kull_m_xml_getTextValue(i32* %25, i8* bitcast ([9 x i32]* @.str.1 to i8*))
  store i32* %26, i32** %10, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %94

28:                                               ; preds = %24
  %29 = load i32*, i32** %9, align 8
  %30 = call i32* @kull_m_xml_getTextValue(i32* %29, i8* bitcast ([7 x i32]* @.str.2 to i8*))
  store i32* %30, i32** %11, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %91

32:                                               ; preds = %28
  %33 = load i32*, i32** %9, align 8
  %34 = call i32* @kull_m_xml_getTextValue(i32* %33, i8* bitcast ([9 x i32]* @.str.3 to i8*))
  store i32* %34, i32** %12, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %88

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = shl i32 %37, 1
  %39 = load i32*, i32** %11, align 8
  %40 = ptrtoint i32* %39 to i32
  %41 = load i32*, i32** %10, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = call i32 (i8*, i32, i8*, i32, i32*, ...) @kprintf(i8* bitcast ([19 x i32]* @.str.4 to i8*), i32 %38, i8* bitcast ([1 x i32]* @.str.5 to i8*), i32 %40, i32* %41, i32* %42)
  %44 = load i32*, i32** %12, align 8
  %45 = call i64 @kull_m_string_quick_base64_to_Binary(i32* %44, i32** %13, i32* %15)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %85

47:                                               ; preds = %36
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp uge i64 %49, 8
  br i1 %50, label %51, label %79

51:                                               ; preds = %47
  %52 = load i32*, i32** %13, align 8
  %53 = ptrtoint i32* %52 to i64
  %54 = add i64 %53, 4
  %55 = call i64 @RtlEqualGuid(i64 %54, i32* @KULL_M_DPAPI_GUID_PROVIDER)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %51
  %58 = load i32*, i32** %13, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32**, i32*** %8, align 8
  %62 = call i64 @kuhl_m_dpapi_unprotect_raw_or_blob(i32* %58, i32 %59, i32* null, i32 %60, i32** %61, i32* null, i32 0, i32** %14, i32* %16, i32* null)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %57
  %65 = load i32, i32* %5, align 4
  %66 = shl i32 %65, 1
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = udiv i64 %68, 4
  %70 = trunc i64 %69 to i32
  %71 = load i32*, i32** %14, align 8
  %72 = call i32 (i8*, i32, i8*, i32, i32*, ...) @kprintf(i8* bitcast ([32 x i32]* @.str.6 to i8*), i32 %66, i8* bitcast ([1 x i32]* @.str.5 to i8*), i32 %70, i32* %71)
  %73 = load i32*, i32** %14, align 8
  %74 = call i32 @LocalFree(i32* %73)
  br label %75

75:                                               ; preds = %64, %57
  br label %78

76:                                               ; preds = %51
  %77 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([37 x i32]* @.str.7 to i8*))
  br label %78

78:                                               ; preds = %76, %75
  br label %82

79:                                               ; preds = %47
  %80 = load i32, i32* %15, align 4
  %81 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([12 x i32]* @.str.8 to i8*), i32 %80)
  br label %82

82:                                               ; preds = %79, %78
  %83 = load i32*, i32** %13, align 8
  %84 = call i32 @LocalFree(i32* %83)
  br label %85

85:                                               ; preds = %82, %36
  %86 = load i32*, i32** %12, align 8
  %87 = call i32 @LocalFree(i32* %86)
  br label %88

88:                                               ; preds = %85, %32
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @LocalFree(i32* %89)
  br label %91

91:                                               ; preds = %88, %28
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @LocalFree(i32* %92)
  br label %94

94:                                               ; preds = %91, %24
  br label %95

95:                                               ; preds = %94, %21, %4
  ret void
}

declare dso_local i64 @IXMLDOMNode_selectSingleNode(i32*, i8*, i32**) #1

declare dso_local i32* @kull_m_xml_getTextValue(i32*, i8*) #1

declare dso_local i32 @kprintf(i8*, i32, i8*, i32, i32*, ...) #1

declare dso_local i64 @kull_m_string_quick_base64_to_Binary(i32*, i32**, i32*) #1

declare dso_local i64 @RtlEqualGuid(i64, i32*) #1

declare dso_local i64 @kuhl_m_dpapi_unprotect_raw_or_blob(i32*, i32, i32*, i32, i32**, i32*, i32, i32**, i32*, i32*) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i32 @PRINT_ERROR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
