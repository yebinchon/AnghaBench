; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_file.c_kull_m_file_readData.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_file.c_kull_m_file_readData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@isBase64InterceptInput = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 115, i32 116, i32 114, i32 105, i32 110, i32 103, i32 95, i32 113, i32 117, i32 105, i32 99, i32 107, i32 95, i32 98, i32 97, i32 115, i32 101, i32 54, i32 52, i32 95, i32 116, i32 111, i32 95, i32 66, i32 105, i32 110, i32 97, i32 114, i32 121, i32 0], align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_file_readData(i32 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %7, align 4
  store i64 0, i64* %10, align 8
  %12 = load i64, i64* @isBase64InterceptInput, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i32, i32* %4, align 4
  %16 = load i64*, i64** %5, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = call i32 @kull_m_string_quick_base64_to_Binary(i32 %15, i64* %16, i64* %17)
  store i32 %18, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([37 x i32]* @.str to i8*))
  br label %22

22:                                               ; preds = %20, %14
  br label %78

23:                                               ; preds = %3
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @GENERIC_READ, align 4
  %26 = load i32, i32* @FILE_SHARE_READ, align 4
  %27 = load i32, i32* @OPEN_EXISTING, align 4
  %28 = call i64 @CreateFile(i32 %24, i32 %25, i32 %26, i32* null, i32 %27, i32 0, i32* null)
  store i64 %28, i64* %10, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %77

30:                                               ; preds = %23
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %30
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @GetFileSizeEx(i64 %35, %struct.TYPE_3__* %9)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %74, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %6, align 8
  store i64 %44, i64* %45, align 8
  %46 = load i32, i32* @LPTR, align 4
  %47 = load i64*, i64** %6, align 8
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @LocalAlloc(i32 %46, i64 %48)
  %50 = load i64*, i64** %5, align 8
  store i64 %49, i64* %50, align 8
  %51 = icmp ne i64 %49, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %42
  %53 = load i64, i64* %10, align 8
  %54 = load i64*, i64** %5, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %6, align 8
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @ReadFile(i64 %53, i64 %55, i64 %57, i64* %8, i32* null)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load i64*, i64** %6, align 8
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp eq i64 %62, %63
  br label %65

65:                                               ; preds = %60, %52
  %66 = phi i1 [ false, %52 ], [ %64, %60 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %7, align 4
  br i1 %66, label %72, label %68

68:                                               ; preds = %65
  %69 = load i64*, i64** %5, align 8
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @LocalFree(i64 %70)
  br label %72

72:                                               ; preds = %68, %65
  br label %73

73:                                               ; preds = %72, %42
  br label %74

74:                                               ; preds = %73, %38, %34
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @CloseHandle(i64 %75)
  br label %77

77:                                               ; preds = %74, %30, %23
  br label %78

78:                                               ; preds = %77, %22
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @kull_m_string_quick_base64_to_Binary(i32, i64*, i64*) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i64 @CreateFile(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @GetFileSizeEx(i64, %struct.TYPE_3__*) #1

declare dso_local i64 @LocalAlloc(i32, i64) #1

declare dso_local i64 @ReadFile(i64, i64, i64, i64*, i32*) #1

declare dso_local i32 @LocalFree(i64) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
