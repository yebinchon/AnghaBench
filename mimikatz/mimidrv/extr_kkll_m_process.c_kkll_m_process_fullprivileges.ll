; ModuleID = '/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_process.c_kkll_m_process_fullprivileges.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_process.c_kkll_m_process_fullprivileges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@KiwiOsIndex = common dso_local global i64 0, align 8
@KiwiOsIndex_VISTA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i32] [i32 65, i32 108, i32 108, i32 32, i32 112, i32 114, i32 105, i32 118, i32 105, i32 108, i32 101, i32 103, i32 101, i32 115, i32 32, i32 102, i32 111, i32 114, i32 32, i32 116, i32 104, i32 101, i32 32, i32 97, i32 99, i32 99, i32 101, i32 115, i32 115, i32 32, i32 116, i32 111, i32 107, i32 101, i32 110, i32 32, i32 102, i32 114, i32 111, i32 109, i32 32, i32 37, i32 117, i32 47, i32 37, i32 45, i32 49, i32 52, i32 83, i32 10, i32 0], align 4
@EPROCESS_OffSetTable = common dso_local global i64** null, align 8
@TokenPrivs = common dso_local global i64 0, align 8
@STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kkll_m_process_fullprivileges(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %12, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i32* null, i32** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i64*
  store i64* %15, i64** %11, align 8
  %16 = load i64, i64* @KiwiOsIndex, align 8
  %17 = load i64, i64* @KiwiOsIndex_VISTA, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %113

19:                                               ; preds = %3
  %20 = load i64*, i64** %11, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp eq i64 %24, 4
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i64*, i64** %11, align 8
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @PsLookupProcessByProcessId(i32 %29, i64* %8)
  store i32 %30, i32* %7, align 4
  br label %33

31:                                               ; preds = %22, %19
  %32 = call i64 (...) @PsGetCurrentProcess()
  store i64 %32, i64* %8, align 8
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @NT_SUCCESS(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %112

37:                                               ; preds = %33
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %112

40:                                               ; preds = %37
  %41 = load i64, i64* %8, align 8
  %42 = call i32* @PsReferencePrimaryToken(i64 %41)
  store i32* %42, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %104

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @PsGetProcessId(i64 %46)
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @PsGetProcessImageFileName(i64 %48)
  %50 = call i32 @kprintf(i32 %45, i8* bitcast ([51 x i32]* @.str to i8*), i32 %47, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = ptrtoint i32* %51 to i64
  %53 = load i64**, i64*** @EPROCESS_OffSetTable, align 8
  %54 = load i64, i64* @KiwiOsIndex, align 8
  %55 = getelementptr inbounds i64*, i64** %53, i64 %54
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* @TokenPrivs, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %52, %59
  %61 = inttoptr i64 %60 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %61, %struct.TYPE_2__** %10, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 252, i32* %65, align 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 252, i32* %69, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  store i32 255, i32* %73, align 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  store i32 255, i32* %77, align 4
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  store i32 255, i32* %81, align 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  store i32 255, i32* %85, align 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 255, i32* %89, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  store i32 255, i32* %93, align 4
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  store i32 15, i32* %97, align 4
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  store i32 15, i32* %101, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @PsDereferencePrimaryToken(i32* %102)
  br label %104

104:                                              ; preds = %44, %40
  %105 = load i64, i64* %8, align 8
  %106 = call i64 (...) @PsGetCurrentProcess()
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i64, i64* %8, align 8
  %110 = call i32 @ObDereferenceObject(i64 %109)
  br label %111

111:                                              ; preds = %108, %104
  br label %112

112:                                              ; preds = %111, %37, %33
  br label %115

113:                                              ; preds = %3
  %114 = load i32, i32* @STATUS_NOT_SUPPORTED, align 4
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %113, %112
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local i32 @PsLookupProcessByProcessId(i32, i64*) #1

declare dso_local i64 @PsGetCurrentProcess(...) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32* @PsReferencePrimaryToken(i64) #1

declare dso_local i32 @kprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @PsGetProcessId(i64) #1

declare dso_local i32 @PsGetProcessImageFileName(i64) #1

declare dso_local i32 @PsDereferencePrimaryToken(i32*) #1

declare dso_local i32 @ObDereferenceObject(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
