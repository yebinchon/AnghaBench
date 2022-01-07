; ModuleID = '/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_process.c_kkll_m_process_protect.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_process.c_kkll_m_process_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@KiwiOsIndex = common dso_local global i64 0, align 8
@KiwiOsIndex_VISTA = common dso_local global i64 0, align 8
@KiwiOsIndex_8 = common dso_local global i64 0, align 8
@EPROCESS_OffSetTable = common dso_local global i64** null, align 8
@EprocessFlags2 = common dso_local global i64 0, align 8
@PROTECTED_PROCESS_MASK = common dso_local global i32 0, align 4
@SignatureProtect = common dso_local global i64 0, align 8
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kkll_m_process_protect(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %8, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  store i32* null, i32** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %11, align 8
  %15 = load i64, i64* @KiwiOsIndex, align 8
  %16 = load i64, i64* @KiwiOsIndex_VISTA, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %109

18:                                               ; preds = %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %106

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp eq i64 %23, 4
  br i1 %24, label %25, label %106

25:                                               ; preds = %21
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @PsLookupProcessByProcessId(i32 %29, i32** %8)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @NT_SUCCESS(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %105

34:                                               ; preds = %25
  %35 = load i64, i64* @KiwiOsIndex, align 8
  %36 = load i64, i64* @KiwiOsIndex_8, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %34
  %39 = load i32*, i32** %8, align 8
  %40 = ptrtoint i32* %39 to i64
  %41 = load i64**, i64*** @EPROCESS_OffSetTable, align 8
  %42 = load i64, i64* @KiwiOsIndex, align 8
  %43 = getelementptr inbounds i64*, i64** %41, i64 %42
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @EprocessFlags2, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %40, %47
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %10, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %38
  %56 = load i32, i32* @PROTECTED_PROCESS_MASK, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %66

60:                                               ; preds = %38
  %61 = load i32, i32* @PROTECTED_PROCESS_MASK, align 4
  %62 = xor i32 %61, -1
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %62
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %55
  br label %102

67:                                               ; preds = %34
  %68 = load i32*, i32** %8, align 8
  %69 = ptrtoint i32* %68 to i64
  %70 = load i64**, i64*** @EPROCESS_OffSetTable, align 8
  %71 = load i64, i64* @KiwiOsIndex, align 8
  %72 = getelementptr inbounds i64*, i64** %70, i64 %71
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* @SignatureProtect, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %69, %76
  %78 = inttoptr i64 %77 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %78, %struct.TYPE_6__** %9, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i64, i64* @KiwiOsIndex, align 8
  %92 = load i64, i64* @KiwiOsIndex_8, align 8
  %93 = icmp ugt i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %67
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %94, %67
  br label %102

102:                                              ; preds = %101, %66
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @ObDereferenceObject(i32* %103)
  br label %105

105:                                              ; preds = %102, %25
  br label %108

106:                                              ; preds = %21, %18
  %107 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %106, %105
  br label %111

109:                                              ; preds = %3
  %110 = load i32, i32* @STATUS_NOT_SUPPORTED, align 4
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %109, %108
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local i32 @PsLookupProcessByProcessId(i32, i32**) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @ObDereferenceObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
