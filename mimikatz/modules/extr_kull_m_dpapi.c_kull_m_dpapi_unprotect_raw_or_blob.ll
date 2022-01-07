; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_dpapi.c_kull_m_dpapi_unprotect_raw_or_blob.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_dpapi.c_kull_m_dpapi_unprotect_raw_or_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32, i64 }
%struct.TYPE_9__ = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_dpapi_unprotect_raw_or_blob(i64 %0, i64 %1, i64* %2, i64 %3, i64 %4, i32* %5, i64 %6, i64* %7, i64* %8, i64 %9, i64 %10, i32 %11) #0 {
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_10__, align 8
  %27 = alloca %struct.TYPE_10__, align 8
  %28 = alloca %struct.TYPE_10__, align 8
  %29 = alloca %struct.TYPE_9__*, align 8
  store i64 %0, i64* %13, align 8
  store i64 %1, i64* %14, align 8
  store i64* %2, i64** %15, align 8
  store i64 %3, i64* %16, align 8
  store i64 %4, i64* %17, align 8
  store i32* %5, i32** %18, align 8
  store i64 %6, i64* %19, align 8
  store i64* %7, i64** %20, align 8
  store i64* %8, i64** %21, align 8
  store i64 %9, i64* %22, align 8
  store i64 %10, i64* %23, align 8
  store i32 %11, i32* %24, align 4
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %25, align 4
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %32 = load i64, i64* %14, align 8
  store i64 %32, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %34 = load i64, i64* %13, align 8
  %35 = trunc i64 %34 to i32
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %33, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  store i32 0, i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %40 = load i64, i64* %17, align 8
  store i64 %40, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %42 = load i64, i64* %16, align 8
  %43 = trunc i64 %42 to i32
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %41, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  store i32 0, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load i64, i64* %22, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %104

49:                                               ; preds = %12
  %50 = load i64, i64* %23, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %104

52:                                               ; preds = %49
  %53 = load i64, i64* %13, align 8
  %54 = call %struct.TYPE_9__* @kull_m_dpapi_blob_create(i64 %53)
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %29, align 8
  %55 = icmp ne %struct.TYPE_9__* %54, null
  br i1 %55, label %56, label %103

56:                                               ; preds = %52
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %58 = load i64, i64* %22, align 8
  %59 = load i64, i64* %23, align 8
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* %17, align 8
  %62 = load i32, i32* %24, align 4
  %63 = load i64*, i64** %20, align 8
  %64 = load i64*, i64** %21, align 8
  %65 = call i32 @kull_m_dpapi_unprotect_blob(%struct.TYPE_9__* %57, i64 %58, i64 %59, i64 %60, i64 %61, i32 %62, i64* %63, i64* %64)
  store i32 %65, i32* %25, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %100

67:                                               ; preds = %56
  %68 = load i64*, i64** %15, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %70, label %99

70:                                               ; preds = %67
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %70
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %75
  %81 = load i32, i32* @LPTR, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @LocalAlloc(i32 %81, i64 %84)
  %86 = load i64*, i64** %15, align 8
  store i64 %85, i64* %86, align 8
  %87 = icmp ne i64 %85, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %80
  %89 = load i64*, i64** %15, align 8
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @RtlCopyMemory(i64 %90, i64 %93, i64 %96)
  br label %98

98:                                               ; preds = %88, %80
  br label %99

99:                                               ; preds = %98, %75, %70, %67
  br label %100

100:                                              ; preds = %99, %56
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %102 = call i32 @kull_m_dpapi_blob_delete(%struct.TYPE_9__* %101)
  br label %103

103:                                              ; preds = %100, %52
  br label %133

104:                                              ; preds = %49, %12
  %105 = load i64*, i64** %15, align 8
  %106 = load i32*, i32** %18, align 8
  %107 = load i64, i64* %19, align 8
  %108 = call i32 @CryptUnprotectData(%struct.TYPE_10__* %26, i64* %105, %struct.TYPE_10__* %27, i32* null, i32* %106, i64 %107, %struct.TYPE_10__* %28)
  store i32 %108, i32* %25, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %132

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64*, i64** %21, align 8
  store i64 %112, i64* %113, align 8
  %114 = load i32, i32* @LPTR, align 4
  %115 = load i64*, i64** %21, align 8
  %116 = load i64, i64* %115, align 8
  %117 = call i64 @LocalAlloc(i32 %114, i64 %116)
  %118 = load i64*, i64** %20, align 8
  store i64 %117, i64* %118, align 8
  %119 = icmp ne i64 %117, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %110
  %121 = load i64*, i64** %20, align 8
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** %21, align 8
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @RtlCopyMemory(i64 %122, i64 %124, i64 %126)
  br label %128

128:                                              ; preds = %120, %110
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @LocalFree(i64 %130)
  br label %132

132:                                              ; preds = %128, %104
  br label %133

133:                                              ; preds = %132, %103
  %134 = load i32, i32* %25, align 4
  ret i32 %134
}

declare dso_local %struct.TYPE_9__* @kull_m_dpapi_blob_create(i64) #1

declare dso_local i32 @kull_m_dpapi_unprotect_blob(%struct.TYPE_9__*, i64, i64, i64, i64, i32, i64*, i64*) #1

declare dso_local i64 @LocalAlloc(i32, i64) #1

declare dso_local i32 @RtlCopyMemory(i64, i64, i64) #1

declare dso_local i32 @kull_m_dpapi_blob_delete(%struct.TYPE_9__*) #1

declare dso_local i32 @CryptUnprotectData(%struct.TYPE_10__*, i64*, %struct.TYPE_10__*, i32*, i32*, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @LocalFree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
