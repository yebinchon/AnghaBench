; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_kernel.c_kull_m_kernel_ioctl_handle.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_kernel.c_kull_m_kernel_ioctl_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i32] [i32 68, i32 101, i32 118, i32 105, i32 99, i32 101, i32 73, i32 111, i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 41, i32 32, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kull_m_kernel_ioctl_handle(i32 %0, i64 %1, i32* %2, i64 %3, i32** %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 %6, i64* %14, align 8
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %15, align 8
  %19 = load i64, i64* @ERROR_MORE_DATA, align 8
  store i64 %19, i64* %16, align 8
  %20 = load i64, i64* %14, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %7
  %23 = load i32, i32* %8, align 4
  %24 = load i64, i64* %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i32**, i32*** %12, align 8
  %28 = icmp ne i32** %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32**, i32*** %12, align 8
  %31 = load i32*, i32** %30, align 8
  br label %33

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32, %29
  %34 = phi i32* [ %31, %29 ], [ null, %32 ]
  %35 = load i32*, i32** %13, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %38, align 4
  br label %41

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi i32 [ %39, %37 ], [ 0, %40 ]
  %43 = call i64 @DeviceIoControl(i32 %23, i64 %24, i32* %25, i64 %26, i32* %34, i32 %42, i64* %17, i32* null)
  store i64 %43, i64* %15, align 8
  br label %88

44:                                               ; preds = %7
  %45 = load i32*, i32** %13, align 8
  store i32 65536, i32* %45, align 4
  br label %46

46:                                               ; preds = %83, %44
  %47 = load i64, i64* %16, align 8
  %48 = load i64, i64* @ERROR_MORE_DATA, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32, i32* @LPTR, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32* @LocalAlloc(i32 %51, i32 %53)
  %55 = load i32**, i32*** %12, align 8
  store i32* %54, i32** %55, align 8
  %56 = icmp ne i32* %54, null
  br label %57

57:                                               ; preds = %50, %46
  %58 = phi i1 [ false, %46 ], [ %56, %50 ]
  br i1 %58, label %59, label %87

59:                                               ; preds = %57
  %60 = load i32, i32* %8, align 4
  %61 = load i64, i64* %9, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i32**, i32*** %12, align 8
  %65 = load i32*, i32** %64, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @DeviceIoControl(i32 %60, i64 %61, i32* %62, i64 %63, i32* %65, i32 %67, i64* %17, i32* null)
  store i64 %68, i64* %15, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %71, i64* %16, align 8
  br label %82

72:                                               ; preds = %59
  %73 = call i64 (...) @GetLastError()
  store i64 %73, i64* %16, align 8
  %74 = load i64, i64* %16, align 8
  %75 = load i64, i64* @ERROR_MORE_DATA, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32**, i32*** %12, align 8
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @LocalFree(i32* %79)
  br label %81

81:                                               ; preds = %77, %72
  br label %82

82:                                               ; preds = %81, %70
  br label %83

83:                                               ; preds = %82
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %46

87:                                               ; preds = %57
  br label %88

88:                                               ; preds = %87, %41
  %89 = load i64, i64* %15, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %88
  %92 = load i64, i64* %9, align 8
  %93 = call i64 (...) @GetLastError()
  %94 = call i32 @PRINT_ERROR(i8* bitcast ([35 x i32]* @.str to i8*), i64 %92, i64 %93)
  %95 = load i64, i64* %14, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32**, i32*** %12, align 8
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @LocalFree(i32* %99)
  br label %101

101:                                              ; preds = %97, %91
  br label %110

102:                                              ; preds = %88
  %103 = load i32*, i32** %13, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i64, i64* %17, align 8
  %107 = trunc i64 %106 to i32
  %108 = load i32*, i32** %13, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %105, %102
  br label %110

110:                                              ; preds = %109, %101
  %111 = load i64, i64* %15, align 8
  ret i64 %111
}

declare dso_local i64 @DeviceIoControl(i32, i64, i32*, i64, i32*, i32, i64*, i32*) #1

declare dso_local i32* @LocalAlloc(i32, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i32 @PRINT_ERROR(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
