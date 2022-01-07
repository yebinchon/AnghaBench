; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/client/extr_toolhelp.c_TH32CreateSnapshot.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/client/extr_toolhelp.c_TH32CreateSnapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUS_SUCCESS = common dso_local global i64 0, align 8
@TH32CS_SNAPHEAPLIST = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@RTL_DEBUG_QUERY_HEAPS = common dso_local global i32 0, align 4
@STATUS_UNSUCCESSFUL = common dso_local global i64 0, align 8
@TH32CS_SNAPMODULE = common dso_local global i32 0, align 4
@RTL_DEBUG_QUERY_MODULES = common dso_local global i32 0, align 4
@TH32CS_SNAPPROCESS = common dso_local global i32 0, align 4
@TH32CS_SNAPTHREAD = common dso_local global i32 0, align 4
@MEM_COMMIT = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@SystemProcessInformation = common dso_local global i32 0, align 4
@STATUS_INFO_LENGTH_MISMATCH = common dso_local global i64 0, align 8
@MEM_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32**, i32**, i32**, i32*)* @TH32CreateSnapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @TH32CreateSnapshot(i32 %0, i32 %1, i32** %2, i32** %3, i32** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32** %2, i32*** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32** %4, i32*** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %14, i64* %13, align 8
  %15 = load i32**, i32*** %9, align 8
  store i32* null, i32** %15, align 8
  %16 = load i32**, i32*** %10, align 8
  store i32* null, i32** %16, align 8
  %17 = load i32**, i32*** %11, align 8
  store i32* null, i32** %17, align 8
  %18 = load i32*, i32** %12, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @TH32CS_SNAPHEAPLIST, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %6
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32* @RtlCreateQueryDebugBuffer(i32 0, i32 %24)
  %26 = load i32**, i32*** %9, align 8
  store i32* %25, i32** %26, align 8
  %27 = load i32**, i32*** %9, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @RTL_DEBUG_QUERY_HEAPS, align 4
  %33 = load i32**, i32*** %9, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = call i64 @RtlQueryProcessDebugInformation(i32 %31, i32 %32, i32* %34)
  store i64 %35, i64* %13, align 8
  br label %38

36:                                               ; preds = %23
  %37 = load i64, i64* @STATUS_UNSUCCESSFUL, align 8
  store i64 %37, i64* %13, align 8
  br label %38

38:                                               ; preds = %36, %30
  br label %39

39:                                               ; preds = %38, %6
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @TH32CS_SNAPMODULE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %39
  %45 = load i64, i64* %13, align 8
  %46 = call i64 @NT_SUCCESS(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = load i32, i32* @FALSE, align 4
  %50 = call i32* @RtlCreateQueryDebugBuffer(i32 0, i32 %49)
  %51 = load i32**, i32*** %10, align 8
  store i32* %50, i32** %51, align 8
  %52 = load i32**, i32*** %10, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @RTL_DEBUG_QUERY_MODULES, align 4
  %58 = load i32**, i32*** %10, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 @RtlQueryProcessDebugInformation(i32 %56, i32 %57, i32* %59)
  store i64 %60, i64* %13, align 8
  br label %63

61:                                               ; preds = %48
  %62 = load i64, i64* @STATUS_UNSUCCESSFUL, align 8
  store i64 %62, i64* %13, align 8
  br label %63

63:                                               ; preds = %61, %55
  br label %64

64:                                               ; preds = %63, %44, %39
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @TH32CS_SNAPPROCESS, align 4
  %67 = load i32, i32* @TH32CS_SNAPTHREAD, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %110

71:                                               ; preds = %64
  %72 = load i64, i64* %13, align 8
  %73 = call i64 @NT_SUCCESS(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %110

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %108, %75
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 65536
  store i32 %79, i32* %77, align 4
  %80 = call i32 (...) @NtCurrentProcess()
  %81 = load i32**, i32*** %11, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* @MEM_COMMIT, align 4
  %84 = load i32, i32* @PAGE_READWRITE, align 4
  %85 = call i64 @NtAllocateVirtualMemory(i32 %80, i32** %81, i32 0, i32* %82, i32 %83, i32 %84)
  store i64 %85, i64* %13, align 8
  %86 = load i64, i64* %13, align 8
  %87 = call i64 @NT_SUCCESS(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %76
  br label %109

90:                                               ; preds = %76
  %91 = load i32, i32* @SystemProcessInformation, align 4
  %92 = load i32**, i32*** %11, align 8
  %93 = load i32*, i32** %92, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @NtQuerySystemInformation(i32 %91, i32* %93, i32 %95, i32* null)
  store i64 %96, i64* %13, align 8
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* @STATUS_INFO_LENGTH_MISMATCH, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %90
  %101 = call i32 (...) @NtCurrentProcess()
  %102 = load i32**, i32*** %11, align 8
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* @MEM_RELEASE, align 4
  %105 = call i32 @NtFreeVirtualMemory(i32 %101, i32** %102, i32* %103, i32 %104)
  %106 = load i32**, i32*** %11, align 8
  store i32* null, i32** %106, align 8
  br label %108

107:                                              ; preds = %90
  br label %109

108:                                              ; preds = %100
  br label %76

109:                                              ; preds = %107, %89
  br label %110

110:                                              ; preds = %109, %71, %64
  %111 = load i64, i64* %13, align 8
  %112 = call i64 @NT_SUCCESS(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %110
  %115 = load i32**, i32*** %9, align 8
  %116 = load i32*, i32** %115, align 8
  %117 = load i32**, i32*** %10, align 8
  %118 = load i32*, i32** %117, align 8
  %119 = load i32**, i32*** %11, align 8
  %120 = load i32*, i32** %119, align 8
  %121 = load i32*, i32** %12, align 8
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @TH32FreeAllocatedResources(i32* %116, i32* %118, i32* %120, i32 %122)
  br label %124

124:                                              ; preds = %114, %110
  %125 = load i64, i64* %13, align 8
  ret i64 %125
}

declare dso_local i32* @RtlCreateQueryDebugBuffer(i32, i32) #1

declare dso_local i64 @RtlQueryProcessDebugInformation(i32, i32, i32*) #1

declare dso_local i64 @NT_SUCCESS(i64) #1

declare dso_local i64 @NtAllocateVirtualMemory(i32, i32**, i32, i32*, i32, i32) #1

declare dso_local i32 @NtCurrentProcess(...) #1

declare dso_local i64 @NtQuerySystemInformation(i32, i32*, i32, i32*) #1

declare dso_local i32 @NtFreeVirtualMemory(i32, i32**, i32*, i32) #1

declare dso_local i32 @TH32FreeAllocatedResources(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
