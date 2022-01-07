; ModuleID = '/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_process.c_kkll_m_process_systoken_callback.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_process.c_kkll_m_process_systoken_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"mimikatz.exe\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"cmd.exe\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"powershell.exe\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kkll_m_process_systoken_callback(i32 %0, i64 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %13 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @PsGetProcessImageFileName(i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = call i32 @RtlCompareMemory(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16, i32 13)
  %18 = icmp eq i32 %17, 13
  br i1 %18, label %27, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @RtlCompareMemory(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 7)
  %22 = icmp eq i32 %21, 7
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @RtlCompareMemory(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32 14)
  %26 = icmp eq i32 %25, 14
  br i1 %26, label %27, label %35

27:                                               ; preds = %23, %19, %5
  %28 = load i32, i32* %6, align 4
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i64, i64* %10, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @kkll_m_process_token_toProcess(i32 %28, i64 %29, i32 %30, i32 %32, i32 %33)
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %27, %23
  %36 = load i32, i32* %11, align 4
  ret i32 %36
}

declare dso_local i32 @PsGetProcessImageFileName(i32) #1

declare dso_local i32 @RtlCompareMemory(i8*, i32, i32) #1

declare dso_local i32 @kkll_m_process_token_toProcess(i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
