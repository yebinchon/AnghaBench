; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcsync_descrObject_csv.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcsync_descrObject_csv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LM_NTLM_HASH_LENGTH = common dso_local global i32 0, align 4
@szOID_ANSI_sAMAccountName = common dso_local global i32 0, align 4
@szOID_ANSI_objectSid = common dso_local global i32 0, align 4
@szOID_ANSI_unicodePwd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i32] [i32 37, i32 117, i32 9, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 9, i32 0], align 4
@.str.2 = private unnamed_addr constant [27 x i32] [i32 82, i32 116, i32 108, i32 68, i32 101, i32 99, i32 114, i32 121, i32 112, i32 116, i32 68, i32 69, i32 83, i32 50, i32 98, i32 108, i32 111, i32 99, i32 107, i32 115, i32 49, i32 68, i32 87, i32 79, i32 82, i32 68, i32 0], align 4
@.str.3 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_lsadump_dcsync_descrObject_csv(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @szOID_ANSI_sAMAccountName, align 4
  %18 = call i64 @kull_m_rpc_drsr_findMonoAttr(i32* %15, i32* %16, i32 %17, i32* null, i32* null)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @szOID_ANSI_objectSid, align 4
  %24 = call i64 @kull_m_rpc_drsr_findMonoAttr(i32* %21, i32* %22, i32 %23, i32* %8, i32* null)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %20
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @szOID_ANSI_unicodePwd, align 4
  %30 = call i64 @kull_m_rpc_drsr_findMonoAttr(i32* %27, i32* %28, i32 %29, i32* %6, i32* %7)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i64* @GetSidSubAuthorityCount(i32 %34)
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, 1
  %38 = call i32* @GetSidSubAuthority(i32 %33, i64 %37)
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (i8*, ...) @kprintf(i8* bitcast ([4 x i32]* @.str to i8*), i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @szOID_ANSI_sAMAccountName, align 4
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i32 @kull_m_rpc_drsr_findPrintMonoAttr(i32* null, i32* %42, i32* %43, i32 %44, i32 %45)
  %47 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @RtlDecryptDES2blocks1DWORD(i32 %48, i32* %5, i32* %14)
  %50 = call i64 @NT_SUCCESS(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %32
  %53 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %54 = call i32 @kull_m_string_wprintf_hex(i32* %14, i32 %53, i32 0)
  br label %57

55:                                               ; preds = %32
  %56 = call i32 @PRINT_ERROR(i8* bitcast ([27 x i32]* @.str.2 to i8*))
  br label %57

57:                                               ; preds = %55, %52
  %58 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.3 to i8*))
  br label %59

59:                                               ; preds = %57, %26, %20, %2
  %60 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %60)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @kull_m_rpc_drsr_findMonoAttr(i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32* @GetSidSubAuthority(i32, i64) #2

declare dso_local i64* @GetSidSubAuthorityCount(i32) #2

declare dso_local i32 @kprintf(i8*, ...) #2

declare dso_local i32 @kull_m_rpc_drsr_findPrintMonoAttr(i32*, i32*, i32*, i32, i32) #2

declare dso_local i64 @NT_SUCCESS(i32) #2

declare dso_local i32 @RtlDecryptDES2blocks1DWORD(i32, i32*, i32*) #2

declare dso_local i32 @kull_m_string_wprintf_hex(i32*, i32, i32) #2

declare dso_local i32 @PRINT_ERROR(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
