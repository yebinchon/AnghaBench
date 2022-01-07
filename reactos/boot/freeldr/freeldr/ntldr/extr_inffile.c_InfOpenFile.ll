; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_inffile.c_InfOpenFile.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_inffile.c_InfOpenFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@OpenReadOnly = common dso_local global i32 0, align 4
@ESUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TAG_INF_FILE = common dso_local global i32 0, align 4
@TAG_INF_CACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InfOpenFile(i32** %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32** %0, i32*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i32**, i32*** %5, align 8
  store i32* null, i32** %16, align 8
  %17 = load i32*, i32** %7, align 8
  store i32 -1, i32* %17, align 4
  %18 = load i64, i64* %6, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @OpenReadOnly, align 4
  %21 = call i64 @ArcOpen(i32 %19, i32 %20, i32* %9)
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %15, align 8
  %23 = load i64, i64* @ESUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %4, align 4
  br label %116

27:                                               ; preds = %3
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @ArcGetFileInformation(i32 %28, %struct.TYPE_5__* %8)
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* %15, align 8
  %31 = load i64, i64* @ESUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33, %27
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @ArcClose(i32 %39)
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %4, align 4
  br label %116

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* @TAG_INF_FILE, align 4
  %49 = call i64* @FrLdrTempAlloc(i32 %47, i32 %48)
  store i64* %49, i64** %10, align 8
  %50 = load i64*, i64** %10, align 8
  %51 = icmp ne i64* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @ArcClose(i32 %53)
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %4, align 4
  br label %116

56:                                               ; preds = %42
  %57 = load i32, i32* %9, align 4
  %58 = load i64*, i64** %10, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i64 @ArcRead(i32 %57, i64* %58, i32 %59, i32* %12)
  store i64 %60, i64* %15, align 8
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* @ESUCCESS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64, %56
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @ArcClose(i32 %69)
  %71 = load i64*, i64** %10, align 8
  %72 = load i32, i32* @TAG_INF_FILE, align 4
  %73 = call i32 @FrLdrTempFree(i64* %71, i32 %72)
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %4, align 4
  br label %116

75:                                               ; preds = %64
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @ArcClose(i32 %76)
  %78 = load i64*, i64** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* @TAG_INF_CACHE, align 4
  %83 = call i64* @FrLdrTempAlloc(i32 4, i32 %82)
  store i64* %83, i64** %13, align 8
  %84 = load i64*, i64** %13, align 8
  %85 = icmp ne i64* %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %75
  %87 = load i64*, i64** %10, align 8
  %88 = load i32, i32* @TAG_INF_FILE, align 4
  %89 = call i32 @FrLdrTempFree(i64* %87, i32 %88)
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %4, align 4
  br label %116

91:                                               ; preds = %75
  %92 = load i64*, i64** %13, align 8
  %93 = call i32 @RtlZeroMemory(i64* %92, i32 4)
  %94 = load i64*, i64** %13, align 8
  %95 = load i64*, i64** %10, align 8
  %96 = load i64*, i64** %10, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @InfpParseBuffer(i64* %94, i64* %95, i64* %99, i32* %100)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %91
  %105 = load i64*, i64** %13, align 8
  %106 = load i32, i32* @TAG_INF_CACHE, align 4
  %107 = call i32 @FrLdrTempFree(i64* %105, i32 %106)
  store i64* null, i64** %13, align 8
  br label %108

108:                                              ; preds = %104, %91
  %109 = load i64*, i64** %10, align 8
  %110 = load i32, i32* @TAG_INF_FILE, align 4
  %111 = call i32 @FrLdrTempFree(i64* %109, i32 %110)
  %112 = load i64*, i64** %13, align 8
  %113 = bitcast i64* %112 to i32*
  %114 = load i32**, i32*** %5, align 8
  store i32* %113, i32** %114, align 8
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %108, %86, %68, %52, %38, %25
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @ArcOpen(i32, i32, i32*) #1

declare dso_local i64 @ArcGetFileInformation(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ArcClose(i32) #1

declare dso_local i64* @FrLdrTempAlloc(i32, i32) #1

declare dso_local i64 @ArcRead(i32, i64*, i32, i32*) #1

declare dso_local i32 @FrLdrTempFree(i64*, i32) #1

declare dso_local i32 @RtlZeroMemory(i64*, i32) #1

declare dso_local i32 @InfpParseBuffer(i64*, i64*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
