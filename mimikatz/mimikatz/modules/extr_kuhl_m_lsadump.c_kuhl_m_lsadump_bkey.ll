; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_lsadump.c_kuhl_m_lsadump_bkey.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_lsadump.c_kuhl_m_lsadump_bkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [7 x i32] [i32 101, i32 120, i32 112, i32 111, i32 114, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [7 x i32] [i32 115, i32 101, i32 99, i32 114, i32 101, i32 116, i32 0], align 4
@.str.2 = private unnamed_addr constant [7 x i32] [i32 115, i32 121, i32 115, i32 116, i32 101, i32 109, i32 0], align 4
@.str.3 = private unnamed_addr constant [5 x i32] [i32 103, i32 117, i32 105, i32 100, i32 0], align 4
@.str.4 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [27 x i32] [i32 32, i32 115, i32 101, i32 101, i32 109, i32 115, i32 32, i32 116, i32 111, i32 32, i32 98, i32 101, i32 32, i32 97, i32 32, i32 118, i32 97, i32 108, i32 105, i32 100, i32 32, i32 71, i32 85, i32 73, i32 68, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [28 x i32] [i32 73, i32 110, i32 118, i32 97, i32 108, i32 105, i32 100, i32 32, i32 71, i32 85, i32 73, i32 68, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 41, i32 32, i32 59, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.7 = private unnamed_addr constant [30 x i32] [i32 10, i32 67, i32 117, i32 114, i32 114, i32 101, i32 110, i32 116, i32 32, i32 112, i32 114, i32 101, i32 102, i32 101, i32 114, i32 101, i32 100, i32 32, i32 107, i32 101, i32 121, i32 58, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 0], align 4
@.str.8 = private unnamed_addr constant [21 x i32] [i32 71, i32 36, i32 66, i32 67, i32 75, i32 85, i32 80, i32 75, i32 69, i32 89, i32 95, i32 80, i32 82, i32 69, i32 70, i32 69, i32 82, i32 82, i32 69, i32 68, i32 0], align 4
@.str.9 = private unnamed_addr constant [47 x i32] [i32 107, i32 117, i32 104, i32 108, i32 95, i32 109, i32 95, i32 108, i32 115, i32 97, i32 100, i32 117, i32 109, i32 112, i32 95, i32 76, i32 115, i32 97, i32 82, i32 101, i32 116, i32 114, i32 105, i32 101, i32 118, i32 101, i32 80, i32 114, i32 105, i32 118, i32 97, i32 116, i32 101, i32 68, i32 97, i32 116, i32 97, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.10 = private unnamed_addr constant [30 x i32] [i32 10, i32 67, i32 111, i32 109, i32 112, i32 97, i32 116, i32 105, i32 98, i32 105, i32 108, i32 105, i32 116, i32 121, i32 32, i32 112, i32 114, i32 101, i32 102, i32 101, i32 114, i32 101, i32 100, i32 32, i32 107, i32 101, i32 121, i32 58, i32 32, i32 0], align 4
@.str.11 = private unnamed_addr constant [13 x i32] [i32 71, i32 36, i32 66, i32 67, i32 75, i32 85, i32 80, i32 75, i32 69, i32 89, i32 95, i32 80, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_lsadump_bkey(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load i32**, i32*** %4, align 8
  %14 = call i32 @kull_m_string_args_byName(i32 %12, i32** %13, i8* bitcast ([7 x i32]* @.str to i8*), i32** null, i32* null)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32**, i32*** %4, align 8
  %17 = call i32 @kull_m_string_args_byName(i32 %15, i32** %16, i8* bitcast ([7 x i32]* @.str.1 to i8*), i32** null, i32* null)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32**, i32*** %4, align 8
  %20 = call i32 @kull_m_string_args_byName(i32 %18, i32** %19, i8* bitcast ([7 x i32]* @.str.2 to i8*), i32** %9, i32* null)
  %21 = load i32, i32* %3, align 4
  %22 = load i32**, i32*** %4, align 8
  %23 = call i32 @kull_m_string_args_byName(i32 %21, i32** %22, i8* bitcast ([5 x i32]* @.str.3 to i8*), i32** %8, i32* null)
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %2
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @RtlInitUnicodeString(%struct.TYPE_5__* %6, i32* %27)
  %29 = call i32 @RtlGUIDFromString(%struct.TYPE_5__* %6, i32* %7)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @NT_SUCCESS(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %35 = call i32 @kull_m_string_displayGUID(i32* %7)
  %36 = call i32 @kprintf(i8* bitcast ([27 x i32]* @.str.5 to i8*))
  %37 = load i32, i32* %10, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @kuhl_m_lsadump_getKeyFromGUID(i32* %7, i32 %37, i32* %38, i32 %39)
  br label %45

41:                                               ; preds = %26
  %42 = load i32, i32* %5, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 (i8*, i32, ...) @PRINT_ERROR(i8* bitcast ([28 x i32]* @.str.6 to i8*), i32 %42, i32* %43)
  br label %45

45:                                               ; preds = %41, %33
  br label %101

46:                                               ; preds = %2
  %47 = call i32 @kprintf(i8* bitcast ([30 x i32]* @.str.7 to i8*))
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @kuhl_m_lsadump_LsaRetrievePrivateData(i32* %48, i8* bitcast ([21 x i32]* @.str.8 to i8*), %struct.TYPE_5__* %6, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @NT_SUCCESS(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = call i32 @kull_m_string_displayGUID(i32* %57)
  %59 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @kuhl_m_lsadump_getKeyFromGUID(i32* %62, i32 %63, i32* %64, i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @LocalFree(i64 %68)
  br label %73

70:                                               ; preds = %46
  %71 = load i32, i32* %5, align 4
  %72 = call i32 (i8*, i32, ...) @PRINT_ERROR(i8* bitcast ([47 x i32]* @.str.9 to i8*), i32 %71)
  br label %73

73:                                               ; preds = %70, %54
  %74 = call i32 @kprintf(i8* bitcast ([30 x i32]* @.str.10 to i8*))
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @kuhl_m_lsadump_LsaRetrievePrivateData(i32* %75, i8* bitcast ([13 x i32]* @.str.11 to i8*), %struct.TYPE_5__* %6, i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i64 @NT_SUCCESS(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i32*
  %85 = call i32 @kull_m_string_displayGUID(i32* %84)
  %86 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i32*
  %90 = load i32, i32* %10, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @kuhl_m_lsadump_getKeyFromGUID(i32* %89, i32 %90, i32* %91, i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @LocalFree(i64 %95)
  br label %100

97:                                               ; preds = %73
  %98 = load i32, i32* %5, align 4
  %99 = call i32 (i8*, i32, ...) @PRINT_ERROR(i8* bitcast ([47 x i32]* @.str.9 to i8*), i32 %98)
  br label %100

100:                                              ; preds = %97, %81
  br label %101

101:                                              ; preds = %100, %45
  %102 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %102
}

declare dso_local i32 @kull_m_string_args_byName(i32, i32**, i8*, i32**, i32*) #1

declare dso_local i32 @RtlInitUnicodeString(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @RtlGUIDFromString(%struct.TYPE_5__*, i32*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @kprintf(i8*) #1

declare dso_local i32 @kull_m_string_displayGUID(i32*) #1

declare dso_local i32 @kuhl_m_lsadump_getKeyFromGUID(i32*, i32, i32*, i32) #1

declare dso_local i32 @PRINT_ERROR(i8*, i32, ...) #1

declare dso_local i32 @kuhl_m_lsadump_LsaRetrievePrivateData(i32*, i8*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @LocalFree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
