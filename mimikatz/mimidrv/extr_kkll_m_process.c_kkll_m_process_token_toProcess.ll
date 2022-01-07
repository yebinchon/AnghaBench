; ModuleID = '/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_process.c_kkll_m_process_token_toProcess.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_process.c_kkll_m_process_token_toProcess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32* }

@OBJ_KERNEL_HANDLE = common dso_local global i32 0, align 4
@PsProcessType = common dso_local global i32* null, align 8
@KernelMode = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TokenPrimary = common dso_local global i32 0, align 4
@KiwiOsIndex = common dso_local global i64 0, align 8
@KiwiOsIndex_VISTA = common dso_local global i64 0, align 8
@EPROCESS_OffSetTable = common dso_local global i64** null, align 8
@EprocessFlags2 = common dso_local global i64 0, align 8
@TOKEN_FROZEN_MASK = common dso_local global i32 0, align 4
@ProcessAccessToken = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i32] [i32 32, i32 42, i32 32, i32 116, i32 111, i32 32, i32 37, i32 117, i32 47, i32 37, i32 45, i32 49, i32 52, i32 83, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [48 x i32] [i32 32, i32 33, i32 32, i32 90, i32 119, i32 83, i32 101, i32 116, i32 73, i32 110, i32 102, i32 111, i32 114, i32 109, i32 97, i32 116, i32 105, i32 111, i32 110, i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 32, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 32, i32 102, i32 111, i32 114, i32 32, i32 37, i32 117, i32 47, i32 37, i32 45, i32 49, i32 52, i32 83, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kkll_m_process_token_toProcess(i32 %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %17 = bitcast %struct.TYPE_3__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  store i32* null, i32** %13, align 8
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @PsGetProcessId(i64 %18)
  store i32 %19, i32* %15, align 4
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @PsGetProcessImageFileName(i64 %20)
  store i32 %21, i32* %16, align 4
  %22 = load i64, i64* %10, align 8
  %23 = load i32, i32* @OBJ_KERNEL_HANDLE, align 4
  %24 = load i32*, i32** @PsProcessType, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @KernelMode, align 4
  %27 = call i32 @ObOpenObjectByPointer(i64 %22, i32 %23, i32* null, i32 0, i32 %25, i32 %26, i32* %12)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = call i64 @NT_SUCCESS(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %105

31:                                               ; preds = %5
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @FALSE, align 4
  %34 = load i32, i32* @TokenPrimary, align 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %36 = call i32 @ZwDuplicateToken(i32 %32, i32 0, i32* null, i32 %33, i32 %34, i32* %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call i64 @NT_SUCCESS(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %102

40:                                               ; preds = %31
  %41 = load i64, i64* @KiwiOsIndex, align 8
  %42 = load i64, i64* @KiwiOsIndex_VISTA, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %68

44:                                               ; preds = %40
  %45 = load i64, i64* %10, align 8
  %46 = load i64**, i64*** @EPROCESS_OffSetTable, align 8
  %47 = load i64, i64* @KiwiOsIndex, align 8
  %48 = getelementptr inbounds i64*, i64** %46, i64 %47
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @EprocessFlags2, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %45, %52
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %13, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @TOKEN_FROZEN_MASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %44
  %61 = load i32, i32* @TOKEN_FROZEN_MASK, align 4
  %62 = xor i32 %61, -1
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %62
  store i32 %65, i32* %63, align 4
  br label %67

66:                                               ; preds = %44
  store i32* null, i32** %13, align 8
  br label %67

67:                                               ; preds = %66, %60
  br label %68

68:                                               ; preds = %67, %40
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @ProcessAccessToken, align 4
  %71 = call i32 @ZwSetInformationProcess(i32 %69, i32 %70, %struct.TYPE_3__* %11, i32 24)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i64 @NT_SUCCESS(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %16, align 4
  %79 = call i32 (i32, i8*, i32, i32, ...) @kprintf(i32 %76, i8* bitcast ([16 x i32]* @.str to i8*), i32 %77, i32 %78)
  store i32 %79, i32* %14, align 4
  br label %86

80:                                               ; preds = %68
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %16, align 4
  %85 = call i32 (i32, i8*, i32, i32, ...) @kprintf(i32 %81, i8* bitcast ([48 x i32]* @.str.1 to i8*), i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %80, %75
  %87 = load i64, i64* @KiwiOsIndex, align 8
  %88 = load i64, i64* @KiwiOsIndex_VISTA, align 8
  %89 = icmp uge i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load i32*, i32** %13, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, i32* @TOKEN_FROZEN_MASK, align 4
  %95 = load i32*, i32** %13, align 8
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %94
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %93, %90, %86
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @ZwClose(i32 %100)
  br label %102

102:                                              ; preds = %98, %31
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @ZwClose(i32 %103)
  br label %105

105:                                              ; preds = %102, %5
  %106 = load i32, i32* %14, align 4
  ret i32 %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @PsGetProcessId(i64) #2

declare dso_local i32 @PsGetProcessImageFileName(i64) #2

declare dso_local i32 @ObOpenObjectByPointer(i64, i32, i32*, i32, i32, i32, i32*) #2

declare dso_local i64 @NT_SUCCESS(i32) #2

declare dso_local i32 @ZwDuplicateToken(i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @ZwSetInformationProcess(i32, i32, %struct.TYPE_3__*, i32) #2

declare dso_local i32 @kprintf(i32, i8*, i32, i32, ...) #2

declare dso_local i32 @ZwClose(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
