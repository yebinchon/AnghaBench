; ModuleID = '/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_process.c_kkll_m_process_list_callback.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_process.c_kkll_m_process_list_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i32] [i32 37, i32 117, i32 9, i32 37, i32 45, i32 49, i32 52, i32 83, i32 0], align 4
@KiwiOsIndex = common dso_local global i64 0, align 8
@KiwiOsIndex_VISTA = common dso_local global i64 0, align 8
@EPROCESS_OffSetTable = common dso_local global i64** null, align 8
@EprocessFlags2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i32] [i32 9, i32 37, i32 115, i32 0], align 4
@TOKEN_FROZEN_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i32] [i32 70, i32 45, i32 84, i32 111, i32 107, i32 0], align 4
@.str.3 = private unnamed_addr constant [6 x i32] [i32 32, i32 32, i32 32, i32 32, i32 32, i32 0], align 4
@KiwiOsIndex_8 = common dso_local global i64 0, align 8
@SignatureProtect = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i32] [i32 9, i32 83, i32 105, i32 103, i32 32, i32 37, i32 48, i32 50, i32 120, i32 47, i32 37, i32 48, i32 50, i32 120, i32 0], align 4
@.str.5 = private unnamed_addr constant [15 x i32] [i32 32, i32 91, i32 37, i32 49, i32 120, i32 45, i32 37, i32 49, i32 120, i32 45, i32 37, i32 49, i32 120, i32 93, i32 0], align 4
@PROTECTED_PROCESS_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i32] [i32 9, i32 80, i32 45, i32 80, i32 114, i32 111, i32 99, i32 0], align 4
@.str.7 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kkll_m_process_list_callback(i32 %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %12, align 8
  store i32* null, i32** %13, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @PsGetProcessId(i64 %16)
  store i32 %17, i32* %14, align 4
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @PsGetProcessImageFileName(i64 %18)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %15, align 4
  %23 = call i32 (i32, i8*, ...) @kprintf(i32 %20, i8* bitcast ([9 x i32]* @.str to i8*), i32 %21, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i64 @NT_SUCCESS(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %120

27:                                               ; preds = %5
  %28 = load i64, i64* @KiwiOsIndex, align 8
  %29 = load i64, i64* @KiwiOsIndex_VISTA, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %112

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8
  %33 = load i64**, i64*** @EPROCESS_OffSetTable, align 8
  %34 = load i64, i64* @KiwiOsIndex, align 8
  %35 = getelementptr inbounds i64*, i64** %33, i64 %34
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @EprocessFlags2, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %32, %39
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %13, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @TOKEN_FROZEN_MASK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @.str.2, i64 0, i64 0), i32* getelementptr inbounds ([6 x i32], [6 x i32]* @.str.3, i64 0, i64 0)
  %50 = call i32 (i32, i8*, ...) @kprintf(i32 %42, i8* bitcast ([4 x i32]* @.str.1 to i8*), i32* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @NT_SUCCESS(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %111

54:                                               ; preds = %31
  %55 = load i64, i64* @KiwiOsIndex, align 8
  %56 = load i64, i64* @KiwiOsIndex_8, align 8
  %57 = icmp uge i64 %55, %56
  br i1 %57, label %58, label %100

58:                                               ; preds = %54
  %59 = load i64, i64* %9, align 8
  %60 = load i64**, i64*** @EPROCESS_OffSetTable, align 8
  %61 = load i64, i64* @KiwiOsIndex, align 8
  %62 = getelementptr inbounds i64*, i64** %60, i64 %61
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* @SignatureProtect, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %59, %66
  %68 = inttoptr i64 %67 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %12, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, ...) @kprintf(i32 %69, i8* bitcast ([15 x i32]* @.str.4 to i8*), i32 %72, i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i64 @NT_SUCCESS(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %58
  %81 = load i64, i64* @KiwiOsIndex, align 8
  %82 = load i64, i64* @KiwiOsIndex_8, align 8
  %83 = icmp ugt i64 %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i8*, ...) @kprintf(i32 %85, i8* bitcast ([15 x i32]* @.str.5 to i8*), i32 %89, i32 %93, i32 %97)
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %84, %80, %58
  br label %110

100:                                              ; preds = %54
  %101 = load i32*, i32** %13, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @PROTECTED_PROCESS_MASK, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, i32* %8, align 4
  %108 = call i32 (i32, i8*, ...) @kprintf(i32 %107, i8* bitcast ([8 x i32]* @.str.6 to i8*))
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %106, %100
  br label %110

110:                                              ; preds = %109, %99
  br label %111

111:                                              ; preds = %110, %31
  br label %112

112:                                              ; preds = %111, %27
  %113 = load i32, i32* %11, align 4
  %114 = call i64 @NT_SUCCESS(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32, i32* %8, align 4
  %118 = call i32 (i32, i8*, ...) @kprintf(i32 %117, i8* bitcast ([2 x i32]* @.str.7 to i8*))
  br label %119

119:                                              ; preds = %116, %112
  br label %120

120:                                              ; preds = %119, %5
  %121 = load i32, i32* %11, align 4
  ret i32 %121
}

declare dso_local i32 @PsGetProcessId(i64) #1

declare dso_local i32 @PsGetProcessImageFileName(i64) #1

declare dso_local i32 @kprintf(i32, i8*, ...) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
