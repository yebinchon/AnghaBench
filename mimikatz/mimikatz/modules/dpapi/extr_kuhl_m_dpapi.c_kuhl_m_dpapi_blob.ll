; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/extr_kuhl_m_dpapi.c_kuhl_m_dpapi_blob.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/extr_kuhl_m_dpapi.c_kuhl_m_dpapi_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@.str = private unnamed_addr constant [3 x i32] [i32 105, i32 110, i32 0], align 4
@.str.1 = private unnamed_addr constant [18 x i32] [i32 100, i32 101, i32 115, i32 99, i32 114, i32 105, i32 112, i32 116, i32 105, i32 111, i32 110, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [4 x i32] [i32 111, i32 117, i32 116, i32 0], align 4
@.str.3 = private unnamed_addr constant [26 x i32] [i32 87, i32 114, i32 105, i32 116, i32 101, i32 32, i32 116, i32 111, i32 32, i32 102, i32 105, i32 108, i32 101, i32 32, i32 39, i32 37, i32 115, i32 39, i32 32, i32 105, i32 115, i32 32, i32 79, i32 75, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [7 x i32] [i32 100, i32 97, i32 116, i32 97, i32 58, i32 32, i32 0], align 4
@.str.5 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [21 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 102, i32 105, i32 108, i32 101, i32 95, i32 114, i32 101, i32 97, i32 100, i32 68, i32 97, i32 116, i32 97, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_dpapi_blob(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_2__, align 8
  %6 = alloca %struct.TYPE_2__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  store i32* null, i32** %10, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32**, i32*** %4, align 8
  %13 = call i64 @kull_m_string_args_byName(i32 %11, i32** %12, i8* bitcast ([3 x i32]* @.str to i8*), i32* %9, i32* null)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %87

15:                                               ; preds = %2
  %16 = load i32, i32* %9, align 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %19 = call i64 @kull_m_file_readData(i32 %16, i32** %17, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %84

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @kull_m_dpapi_blob_create(i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %80

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @kull_m_dpapi_blob_descr(i32 0, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load i32**, i32*** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %36 = bitcast i32** %35 to i32*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %38 = call i64 @kuhl_m_dpapi_unprotect_raw_or_blob(i32* %30, i32 %32, i32** %10, i32 %33, i32** %34, i32* null, i32 0, i32* %36, i32* %37, i32* null)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %77

40:                                               ; preds = %26
  %41 = load i32*, i32** %10, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 (i8*, ...) @kprintf(i8* bitcast ([18 x i32]* @.str.1 to i8*), i32* %44)
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @LocalFree(i32* %46)
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i32, i32* %3, align 4
  %50 = load i32**, i32*** %4, align 8
  %51 = call i64 @kull_m_string_args_byName(i32 %49, i32** %50, i8* bitcast ([4 x i32]* @.str.2 to i8*), i32* %8, i32* null)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @kull_m_file_writeData(i32 %54, i32* %56, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str.3 to i8*), i32 %62)
  br label %64

64:                                               ; preds = %61, %53
  br label %73

65:                                               ; preds = %48
  %66 = call i32 (i8*, ...) @kprintf(i8* bitcast ([7 x i32]* @.str.4 to i8*))
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @kull_m_string_printSuspectUnicodeString(i32* %68, i32 %70)
  %72 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.5 to i8*))
  br label %73

73:                                               ; preds = %65, %64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @LocalFree(i32* %75)
  br label %77

77:                                               ; preds = %73, %26
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @kull_m_dpapi_blob_delete(i32 %78)
  br label %80

80:                                               ; preds = %77, %21
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @LocalFree(i32* %82)
  br label %86

84:                                               ; preds = %15
  %85 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([21 x i32]* @.str.6 to i8*))
  br label %86

86:                                               ; preds = %84, %80
  br label %87

87:                                               ; preds = %86, %2
  %88 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %88
}

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i32*, i32*) #1

declare dso_local i64 @kull_m_file_readData(i32, i32**, i32*) #1

declare dso_local i32 @kull_m_dpapi_blob_create(i32*) #1

declare dso_local i32 @kull_m_dpapi_blob_descr(i32, i32) #1

declare dso_local i64 @kuhl_m_dpapi_unprotect_raw_or_blob(i32*, i32, i32**, i32, i32**, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i64 @kull_m_file_writeData(i32, i32*, i32) #1

declare dso_local i32 @kull_m_string_printSuspectUnicodeString(i32*, i32) #1

declare dso_local i32 @kull_m_dpapi_blob_delete(i32) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
