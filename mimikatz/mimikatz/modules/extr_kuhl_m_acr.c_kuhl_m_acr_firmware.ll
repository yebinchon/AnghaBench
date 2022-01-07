; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_acr.c_kuhl_m_acr_firmware.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_acr.c_kuhl_m_acr_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kuhl_m_acr_Comm = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i32] [i32 65, i32 67, i32 82, i32 32, i32 102, i32 105, i32 114, i32 109, i32 119, i32 97, i32 114, i32 101, i32 58, i32 32, i32 37, i32 46, i32 42, i32 83, i32 10, i32 0], align 4
@kuhl_m_acr_pn532Comm = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i32] [i32 80, i32 78, i32 53, i32 51, i32 50, i32 32, i32 99, i32 104, i32 105, i32 112, i32 10, i32 32, i32 118, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 48, i32 120, i32 37, i32 48, i32 50, i32 120, i32 10, i32 32, i32 102, i32 105, i32 114, i32 109, i32 119, i32 97, i32 114, i32 101, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 104, i32 104, i32 117, i32 46, i32 37, i32 104, i32 104, i32 117, i32 10, i32 32, i32 115, i32 117, i32 112, i32 112, i32 111, i32 114, i32 116, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.2 = private unnamed_addr constant [6 x i32] [i32 37, i32 115, i32 32, i32 59, i32 32, i32 0], align 4
@KUHL_M_ACR_FIRMWARE_PN532_SUPPORT = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [4 x i32] [i32 82, i32 70, i32 85, i32 0], align 4
@.str.4 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_acr_firmware(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca [10 x i32], align 16
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  store i32 40, i32* %8, align 4
  %9 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %10 = load i32, i32* @FALSE, align 4
  %11 = call i64 @kull_m_acr_sendrecv_ins(i32* @kuhl_m_acr_Comm, i32 255, i32 0, i32 72, i32 0, i32* null, i32 0, i32* %9, i32* %8, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  %15 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %16 = call i32 (i8*, ...) @kprintf(i8* bitcast ([20 x i32]* @.str to i8*), i32 %14, i32* %15)
  br label %17

17:                                               ; preds = %13, %2
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %19 = call i64 @kull_m_pn532_GetFirmware(i32* @kuhl_m_acr_pn532Comm, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %17
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %23 = load i32, i32* %22, align 16
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8*, ...) @kprintf(i8* bitcast ([71 x i32]* @.str.1 to i8*), i32 %23, i32 %25, i32 %27)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %55, %21
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %58

32:                                               ; preds = %29
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = ashr i32 %34, %35
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = load i8**, i8*** @KUHL_M_ACR_FIRMWARE_PN532_SUPPORT, align 8
  %42 = call i32 @ARRAYSIZE(i8** %41)
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i8**, i8*** @KUHL_M_ACR_FIRMWARE_PN532_SUPPORT, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  br label %51

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %44
  %52 = phi i8* [ %49, %44 ], [ bitcast ([4 x i32]* @.str.3 to i8*), %50 ]
  %53 = call i32 (i8*, ...) @kprintf(i8* bitcast ([6 x i32]* @.str.2 to i8*), i8* %52)
  br label %54

54:                                               ; preds = %51, %32
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %29

58:                                               ; preds = %29
  %59 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  br label %60

60:                                               ; preds = %58, %17
  %61 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %61
}

declare dso_local i64 @kull_m_acr_sendrecv_ins(i32*, i32, i32, i32, i32, i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i64 @kull_m_pn532_GetFirmware(i32*, i32*) #1

declare dso_local i32 @ARRAYSIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
