; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_registry.c_QueryRegistryValueStringMulti.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_registry.c_QueryRegistryValueStringMulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_MULTI_SZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Type mismatch for %S (%d != %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64** @QueryRegistryValueStringMulti(i32 %0, i64* %1) #0 {
  %3 = alloca i64**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i64*, i64** %5, align 8
  %17 = call i64* @QueryRegistryValue(i32 %15, i64* %16, i64* %10, i64* %11)
  store i64* %17, i64** %6, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i64** null, i64*** %3, align 8
  br label %121

21:                                               ; preds = %2
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @REG_MULTI_SZ, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i64*, i64** %5, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @REG_MULTI_SZ, align 8
  %29 = call i32 @DbgPrint(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64* %26, i64 %27, i64 %28)
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i64*, i64** %6, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i64* @TerminateReadString(i64* %31, i64 %32)
  store i64* %33, i64** %7, align 8
  %34 = call i32 (...) @GetProcessHeap()
  %35 = load i64*, i64** %6, align 8
  %36 = call i32 @HeapFree(i32 %34, i32 0, i64* %35)
  %37 = load i64*, i64** %7, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  store i64** null, i64*** %3, align 8
  br label %121

40:                                               ; preds = %30
  %41 = load i64*, i64** %7, align 8
  store i64* %41, i64** %8, align 8
  store i64 0, i64* %12, align 8
  br label %42

42:                                               ; preds = %55, %40
  %43 = load i64*, i64** %8, align 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %51, %46
  %48 = load i64*, i64** %8, align 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i64*, i64** %8, align 8
  %53 = getelementptr inbounds i64, i64* %52, i32 1
  store i64* %53, i64** %8, align 8
  br label %47

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54
  %56 = load i64*, i64** %8, align 8
  %57 = getelementptr inbounds i64, i64* %56, i32 1
  store i64* %57, i64** %8, align 8
  %58 = load i64, i64* %12, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %12, align 8
  br label %42

60:                                               ; preds = %42
  %61 = call i32 (...) @GetProcessHeap()
  %62 = load i64, i64* %12, align 8
  %63 = add nsw i64 %62, 1
  %64 = mul i64 %63, 8
  %65 = call i8* @HeapAlloc(i32 %61, i32 0, i64 %64)
  %66 = bitcast i8* %65 to i64**
  store i64** %66, i64*** %9, align 8
  %67 = load i64**, i64*** %9, align 8
  %68 = icmp ne i64** %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %60
  %70 = call i32 (...) @GetProcessHeap()
  %71 = load i64*, i64** %7, align 8
  %72 = call i32 @HeapFree(i32 %70, i32 0, i64* %71)
  store i64** null, i64*** %3, align 8
  br label %121

73:                                               ; preds = %60
  %74 = load i64*, i64** %7, align 8
  store i64* %74, i64** %8, align 8
  store i64 0, i64* %13, align 8
  br label %75

75:                                               ; preds = %108, %73
  %76 = load i64*, i64** %8, align 8
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %113

79:                                               ; preds = %75
  %80 = load i64*, i64** %8, align 8
  store i64* %80, i64** %14, align 8
  store i64 0, i64* %12, align 8
  br label %81

81:                                               ; preds = %86, %79
  %82 = load i64*, i64** %8, align 8
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %12, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %12, align 8
  %89 = load i64*, i64** %8, align 8
  %90 = getelementptr inbounds i64, i64* %89, i32 1
  store i64* %90, i64** %8, align 8
  br label %81

91:                                               ; preds = %81
  %92 = call i32 (...) @GetProcessHeap()
  %93 = load i64, i64* %12, align 8
  %94 = mul i64 %93, 4
  %95 = call i8* @HeapAlloc(i32 %92, i32 0, i64 %94)
  %96 = bitcast i8* %95 to i64*
  %97 = load i64**, i64*** %9, align 8
  %98 = load i64, i64* %13, align 8
  %99 = getelementptr inbounds i64*, i64** %97, i64 %98
  store i64* %96, i64** %99, align 8
  %100 = load i64**, i64*** %9, align 8
  %101 = load i64, i64* %13, align 8
  %102 = getelementptr inbounds i64*, i64** %100, i64 %101
  %103 = load i64*, i64** %102, align 8
  %104 = load i64*, i64** %14, align 8
  %105 = load i64, i64* %12, align 8
  %106 = mul i64 %105, 4
  %107 = call i32 @memcpy(i64* %103, i64* %104, i64 %106)
  br label %108

108:                                              ; preds = %91
  %109 = load i64*, i64** %8, align 8
  %110 = getelementptr inbounds i64, i64* %109, i32 1
  store i64* %110, i64** %8, align 8
  %111 = load i64, i64* %13, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %13, align 8
  br label %75

113:                                              ; preds = %75
  %114 = load i64**, i64*** %9, align 8
  %115 = load i64, i64* %13, align 8
  %116 = getelementptr inbounds i64*, i64** %114, i64 %115
  store i64* null, i64** %116, align 8
  %117 = call i32 (...) @GetProcessHeap()
  %118 = load i64*, i64** %7, align 8
  %119 = call i32 @HeapFree(i32 %117, i32 0, i64* %118)
  %120 = load i64**, i64*** %9, align 8
  store i64** %120, i64*** %3, align 8
  br label %121

121:                                              ; preds = %113, %69, %39, %20
  %122 = load i64**, i64*** %3, align 8
  ret i64** %122
}

declare dso_local i64* @QueryRegistryValue(i32, i64*, i64*, i64*) #1

declare dso_local i32 @DbgPrint(i8*, i64*, i64, i64) #1

declare dso_local i64* @TerminateReadString(i64*, i64) #1

declare dso_local i32 @HeapFree(i32, i32, i64*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
