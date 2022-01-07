; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_controlset.c_ScmDeleteTree.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_controlset.c_ScmDeleteTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ScmDeleteTree(i32* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @KEY_READ, align 4
  %19 = call i64 @RegOpenKeyExW(i32* %16, i32* %17, i32 0, i32 %18, i32** %11)
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i64, i64* %12, align 8
  store i64 %24, i64* %3, align 8
  br label %115

25:                                               ; preds = %15
  br label %28

26:                                               ; preds = %2
  %27 = load i32*, i32** %4, align 8
  store i32* %27, i32** %11, align 8
  br label %28

28:                                               ; preds = %26, %25
  %29 = load i32*, i32** %11, align 8
  %30 = call i64 @RegQueryInfoKeyW(i32* %29, i32* null, i32* null, i32* null, i32* null, i64* %6, i32* null, i32* null, i64* %7, i32* null, i32* null, i32* null)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @ERROR_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %100

35:                                               ; preds = %28
  %36 = load i64, i64* %6, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @max(i64 %40, i64 %41)
  store i64 %42, i64* %8, align 8
  %43 = call i32 (...) @GetProcessHeap()
  %44 = load i64, i64* %8, align 8
  %45 = mul i64 %44, 4
  %46 = call i32* @HeapAlloc(i32 %43, i32 0, i64 %45)
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %35
  %50 = load i64, i64* @ERROR_NOT_ENOUGH_MEMORY, align 8
  store i64 %50, i64* %12, align 8
  br label %100

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %70, %51
  %53 = load i64, i64* @TRUE, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load i64, i64* %8, align 8
  store i64 %56, i64* %9, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i64 @RegEnumKeyExW(i32* %57, i32 0, i32* %58, i64* %9, i32* null, i32* null, i32* null, i32* null)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %71

62:                                               ; preds = %55
  %63 = load i32*, i32** %11, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = call i64 @ScmDeleteTree(i32* %63, i32* %64)
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* @ERROR_SUCCESS, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %100

70:                                               ; preds = %62
  br label %52

71:                                               ; preds = %61, %52
  %72 = load i32*, i32** %5, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32*, i32** %4, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = call i64 @RegDeleteKeyW(i32* %75, i32* %76)
  store i64 %77, i64* %12, align 8
  br label %99

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %97, %78
  %80 = load i64, i64* @TRUE, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %79
  %83 = load i64, i64* %8, align 8
  store i64 %83, i64* %9, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = call i64 @RegEnumValueW(i32* %84, i32 0, i32* %85, i64* %9, i32* null, i32* null, i32* null, i32* null)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %98

89:                                               ; preds = %82
  %90 = load i32*, i32** %4, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = call i64 @RegDeleteValueW(i32* %90, i32* %91)
  store i64 %92, i64* %12, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* @ERROR_SUCCESS, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %100

97:                                               ; preds = %89
  br label %79

98:                                               ; preds = %88, %79
  br label %99

99:                                               ; preds = %98, %74
  br label %100

100:                                              ; preds = %99, %96, %69, %49, %34
  %101 = load i32*, i32** %10, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = call i32 (...) @GetProcessHeap()
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @HeapFree(i32 %104, i32 0, i32* %105)
  br label %107

107:                                              ; preds = %103, %100
  %108 = load i32*, i32** %5, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32*, i32** %11, align 8
  %112 = call i32 @RegCloseKey(i32* %111)
  br label %113

113:                                              ; preds = %110, %107
  %114 = load i64, i64* %12, align 8
  store i64 %114, i64* %3, align 8
  br label %115

115:                                              ; preds = %113, %23
  %116 = load i64, i64* %3, align 8
  ret i64 %116
}

declare dso_local i64 @RegOpenKeyExW(i32*, i32*, i32, i32, i32**) #1

declare dso_local i64 @RegQueryInfoKeyW(i32*, i32*, i32*, i32*, i32*, i64*, i32*, i32*, i64*, i32*, i32*, i32*) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @RegEnumKeyExW(i32*, i32, i32*, i64*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @RegDeleteKeyW(i32*, i32*) #1

declare dso_local i64 @RegEnumValueW(i32*, i32, i32*, i64*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @RegDeleteValueW(i32*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
