; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_misc.c_kuhl_m_misc_compressme.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_misc.c_kuhl_m_misc_compressme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_wpgmptr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [26 x i32] [i32 85, i32 115, i32 105, i32 110, i32 103, i32 32, i32 39, i32 37, i32 115, i32 39, i32 32, i32 97, i32 115, i32 32, i32 105, i32 110, i32 112, i32 117, i32 116, i32 32, i32 102, i32 105, i32 108, i32 101, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [24 x i32] [i32 32, i32 42, i32 32, i32 79, i32 114, i32 105, i32 103, i32 105, i32 110, i32 97, i32 108, i32 32, i32 115, i32 105, i32 122, i32 101, i32 32, i32 32, i32 58, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.2 = private unnamed_addr constant [62 x i32] [i32 32, i32 42, i32 32, i32 67, i32 111, i32 109, i32 112, i32 114, i32 101, i32 115, i32 115, i32 101, i32 100, i32 32, i32 115, i32 105, i32 122, i32 101, i32 58, i32 32, i32 37, i32 117, i32 32, i32 40, i32 37, i32 46, i32 50, i32 102, i32 37, i32 37, i32 41, i32 10, i32 85, i32 115, i32 105, i32 110, i32 103, i32 32, i32 39, i32 37, i32 115, i32 39, i32 32, i32 97, i32 115, i32 32, i32 111, i32 117, i32 116, i32 112, i32 117, i32 116, i32 32, i32 102, i32 105, i32 108, i32 101, i32 46, i32 46, i32 46, i32 32, i32 0], align 4
@MIMIKATZ_COMPRESSED_FILENAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i32] [i32 79, i32 75, i32 33, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [22 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 102, i32 105, i32 108, i32 101, i32 95, i32 119, i32 114, i32 105, i32 116, i32 101, i32 68, i32 97, i32 116, i32 97, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_misc_compressme(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %10 = load i32*, i32** @_wpgmptr, align 8
  store i32* %10, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = call i32 (i8*, ...) @kprintf(i8* bitcast ([26 x i32]* @.str to i8*), i32* %11)
  %13 = load i32*, i32** %9, align 8
  %14 = call i64 @kull_m_file_readData(i32* %13, i32* %5, i64* %7)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %2
  %17 = load i64, i64* %7, align 8
  %18 = call i32 (i8*, ...) @kprintf(i8* bitcast ([24 x i32]* @.str.1 to i8*), i64 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @kull_m_memory_quick_compress(i32 %19, i64 %20, i32* %6, i64* %8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %16
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = sitofp i64 %25 to float
  %27 = load i64, i64* %7, align 8
  %28 = sitofp i64 %27 to float
  %29 = fdiv float %26, %28
  %30 = fmul float 1.000000e+02, %29
  %31 = fpext float %30 to double
  %32 = load i32, i32* @MIMIKATZ_COMPRESSED_FILENAME, align 4
  %33 = call i32 (i8*, ...) @kprintf(i8* bitcast ([62 x i32]* @.str.2 to i8*), i64 %24, double %31, i32 %32)
  %34 = load i32, i32* @MIMIKATZ_COMPRESSED_FILENAME, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @kull_m_file_writeData(i32 %34, i32 %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %23
  %40 = call i32 (i8*, ...) @kprintf(i8* bitcast ([5 x i32]* @.str.3 to i8*))
  br label %43

41:                                               ; preds = %23
  %42 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([22 x i32]* @.str.4 to i8*))
  br label %43

43:                                               ; preds = %41, %39
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @LocalFree(i32 %44)
  br label %46

46:                                               ; preds = %43, %16
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @LocalFree(i32 %47)
  br label %49

49:                                               ; preds = %46, %2
  %50 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %50
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i64 @kull_m_file_readData(i32*, i32*, i64*) #1

declare dso_local i64 @kull_m_memory_quick_compress(i32, i64, i32*, i64*) #1

declare dso_local i64 @kull_m_file_writeData(i32, i32, i64) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i32 @LocalFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
