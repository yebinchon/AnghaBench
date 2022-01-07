; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcsync_decrypt.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcsync_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@LM_NTLM_HASH_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i32] [i32 32, i32 32, i32 32, i32 32, i32 37, i32 115, i32 45, i32 37, i32 50, i32 117, i32 58, i32 32, i32 0], align 4
@.str.1 = private unnamed_addr constant [12 x i32] [i32 32, i32 32, i32 72, i32 97, i32 115, i32 104, i32 32, i32 37, i32 115, i32 58, i32 32, i32 0], align 4
@.str.2 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [27 x i32] [i32 82, i32 116, i32 108, i32 68, i32 101, i32 99, i32 114, i32 121, i32 112, i32 116, i32 68, i32 69, i32 83, i32 50, i32 98, i32 108, i32 111, i32 99, i32 107, i32 115, i32 49, i32 68, i32 87, i32 79, i32 82, i32 68, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kuhl_m_lsadump_dcsync_decrypt(i64 %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %12, align 8
  %16 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %52, %5
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %20
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = call i32 @RtlDecryptDES2blocks1DWORD(i64 %28, i32* %8, i32* %19)
  %30 = call i64 @NT_SUCCESS(i32 %29)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %24
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %40 = sdiv i32 %38, %39
  %41 = call i32 (i8*, ...) @kprintf(i8* bitcast ([13 x i32]* @.str to i8*), i32 %37, i32 %40)
  br label %45

42:                                               ; preds = %33
  %43 = load i32, i32* %9, align 4
  %44 = call i32 (i8*, ...) @kprintf(i8* bitcast ([12 x i32]* @.str.1 to i8*), i32 %43)
  br label %45

45:                                               ; preds = %42, %36
  %46 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %47 = call i32 @kull_m_string_wprintf_hex(i32* %19, i32 %46, i32 0)
  %48 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.2 to i8*))
  br label %51

49:                                               ; preds = %24
  %50 = call i32 @PRINT_ERROR(i8* bitcast ([27 x i32]* @.str.3 to i8*))
  br label %51

51:                                               ; preds = %49, %45
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %20

56:                                               ; preds = %20
  %57 = load i64, i64* %12, align 8
  %58 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %58)
  ret i64 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @NT_SUCCESS(i32) #2

declare dso_local i32 @RtlDecryptDES2blocks1DWORD(i64, i32*, i32*) #2

declare dso_local i32 @kprintf(i8*, ...) #2

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
