; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_creds.c_kuhl_m_dpapi_cred.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/packages/extr_kuhl_m_dpapi_creds.c_kuhl_m_dpapi_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [3 x i32] [i32 105, i32 110, i32 0], align 4
@KULL_M_DPAPI_GUID_PROVIDER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i32] [i32 68, i32 101, i32 99, i32 114, i32 121, i32 112, i32 116, i32 105, i32 110, i32 103, i32 32, i32 76, i32 101, i32 103, i32 97, i32 99, i32 121, i32 32, i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 40, i32 115, i32 41, i32 58, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [24 x i32] [i32 68, i32 101, i32 99, i32 114, i32 121, i32 112, i32 116, i32 105, i32 110, i32 103, i32 32, i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 58, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [21 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 102, i32 105, i32 108, i32 101, i32 95, i32 114, i32 101, i32 97, i32 100, i32 68, i32 97, i32 116, i32 97, i32 0], align 4
@.str.4 = private unnamed_addr constant [35 x i32] [i32 73, i32 110, i32 112, i32 117, i32 116, i32 32, i32 67, i32 82, i32 69, i32 68, i32 32, i32 102, i32 105, i32 108, i32 101, i32 32, i32 110, i32 101, i32 101, i32 100, i32 101, i32 100, i32 32, i32 40, i32 47, i32 105, i32 110, i32 58, i32 102, i32 105, i32 108, i32 101, i32 41, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_dpapi_cred(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32**, i32*** %4, align 8
  %15 = call i64 @kull_m_string_args_byName(i32 %13, i32** %14, i8* bitcast ([3 x i32]* @.str to i8*), i32* %5, i32* null)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %100

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @kull_m_file_readData(i32 %18, i64* %6, i32* %8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %97

21:                                               ; preds = %17
  %22 = load i64, i64* %6, align 8
  %23 = add i64 %22, 4
  %24 = call i64 @RtlEqualGuid(i64 %23, i32* @KULL_M_DPAPI_GUID_PROVIDER)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* %6, align 8
  br label %34

29:                                               ; preds = %21
  %30 = load i64, i64* %6, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  br label %34

34:                                               ; preds = %29, %27
  %35 = phi i64 [ %28, %27 ], [ %33, %29 ]
  %36 = call i32 @kull_m_dpapi_blob_quick_descr(i32 0, i64 %35)
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* %6, align 8
  br label %46

41:                                               ; preds = %34
  %42 = load i64, i64* %6, align 8
  %43 = inttoptr i64 %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  br label %46

46:                                               ; preds = %41, %39
  %47 = phi i64 [ %40, %39 ], [ %45, %41 ]
  %48 = load i64, i64* %10, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %8, align 4
  br label %57

52:                                               ; preds = %46
  %53 = load i64, i64* %6, align 8
  %54 = inttoptr i64 %53 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  br label %57

57:                                               ; preds = %52, %50
  %58 = phi i32 [ %51, %50 ], [ %56, %52 ]
  %59 = load i32, i32* %3, align 4
  %60 = load i32**, i32*** %4, align 8
  %61 = load i64, i64* %10, align 8
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32* getelementptr inbounds ([34 x i32], [34 x i32]* @.str.1, i64 0, i64 0), i32* getelementptr inbounds ([24 x i32], [24 x i32]* @.str.2, i64 0, i64 0)
  %65 = bitcast i32* %64 to i8*
  %66 = call i64 @kuhl_m_dpapi_unprotect_raw_or_blob(i64 %47, i32 %58, i32* null, i32 %59, i32** %60, i32* null, i32 0, i64* %7, i32* %9, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %57
  %69 = load i64, i64* %10, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @kull_m_cred_legacy_creds_create(i64 %72)
  store i32 %73, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @kull_m_cred_legacy_creds_descr(i32 0, i32 %76)
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @kull_m_cred_legacy_creds_delete(i32 %78)
  br label %80

80:                                               ; preds = %75, %71
  br label %91

81:                                               ; preds = %68
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @kull_m_cred_create(i64 %82)
  store i32 %83, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @kull_m_cred_descr(i32 0, i32 %86)
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @kull_m_cred_delete(i32 %88)
  br label %90

90:                                               ; preds = %85, %81
  br label %91

91:                                               ; preds = %90, %80
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @LocalFree(i64 %92)
  br label %94

94:                                               ; preds = %91, %57
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @LocalFree(i64 %95)
  br label %99

97:                                               ; preds = %17
  %98 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([21 x i32]* @.str.3 to i8*))
  br label %99

99:                                               ; preds = %97, %94
  br label %102

100:                                              ; preds = %2
  %101 = call i32 @PRINT_ERROR(i8* bitcast ([35 x i32]* @.str.4 to i8*))
  br label %102

102:                                              ; preds = %100, %99
  %103 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %103
}

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i32*, i32*) #1

declare dso_local i64 @kull_m_file_readData(i32, i64*, i32*) #1

declare dso_local i64 @RtlEqualGuid(i64, i32*) #1

declare dso_local i32 @kull_m_dpapi_blob_quick_descr(i32, i64) #1

declare dso_local i64 @kuhl_m_dpapi_unprotect_raw_or_blob(i64, i32, i32*, i32, i32**, i32*, i32, i64*, i32*, i8*) #1

declare dso_local i32 @kull_m_cred_legacy_creds_create(i64) #1

declare dso_local i32 @kull_m_cred_legacy_creds_descr(i32, i32) #1

declare dso_local i32 @kull_m_cred_legacy_creds_delete(i32) #1

declare dso_local i32 @kull_m_cred_create(i64) #1

declare dso_local i32 @kull_m_cred_descr(i32, i32) #1

declare dso_local i32 @kull_m_cred_delete(i32) #1

declare dso_local i32 @LocalFree(i64) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
