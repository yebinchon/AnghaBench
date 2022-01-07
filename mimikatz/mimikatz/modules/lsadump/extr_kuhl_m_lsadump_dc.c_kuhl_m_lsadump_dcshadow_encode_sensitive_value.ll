; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_encode_sensitive_value.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/lsadump/extr_kuhl_m_lsadump_dc.c_kuhl_m_lsadump_dcshadow_encode_sensitive_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@LM_NTLM_HASH_LENGTH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i32] [i32 82, i32 116, i32 108, i32 69, i32 110, i32 99, i32 114, i32 121, i32 112, i32 116, i32 68, i32 69, i32 83, i32 50, i32 98, i32 108, i32 111, i32 99, i32 107, i32 115, i32 49, i32 68, i32 87, i32 79, i32 82, i32 68, i32 0], align 4
@.str.1 = private unnamed_addr constant [26 x i32] [i32 85, i32 110, i32 101, i32 120, i32 112, i32 101, i32 99, i32 116, i32 101, i32 100, i32 32, i32 104, i32 97, i32 115, i32 104, i32 32, i32 108, i32 101, i32 110, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kuhl_m_lsadump_dcshadow_encode_sensitive_value(i64 %0, i64 %1, %struct.TYPE_4__* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %74

20:                                               ; preds = %4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %25 = srem i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %68, label %27

27:                                               ; preds = %20
  %28 = load i64, i64* @TRUE, align 8
  store i64 %28, i64* %12, align 8
  store i64 0, i64* %9, align 8
  br label %29

29:                                               ; preds = %62, %27
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %30, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i64, i64* %12, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %36, %29
  %40 = phi i1 [ false, %29 ], [ %38, %36 ]
  br i1 %40, label %41, label %67

41:                                               ; preds = %39
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @RtlEncryptDES2blocks1DWORD(i64 %46, i64* %6, i32* %16)
  %48 = call i64 @NT_SUCCESS(i32 %47)
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %41
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %58 = call i32 @RtlCopyMemory(i64 %56, i32* %16, i32 %57)
  br label %61

59:                                               ; preds = %41
  %60 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([27 x i32]* @.str to i8*))
  br label %61

61:                                               ; preds = %59, %51
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %9, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* %9, align 8
  br label %29

67:                                               ; preds = %39
  br label %73

68:                                               ; preds = %20
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([26 x i32]* @.str.1 to i8*), i32 %71)
  br label %73

73:                                               ; preds = %68, %67
  br label %74

74:                                               ; preds = %73, %4
  %75 = load i64, i64* %5, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i64, i64* %12, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77, %74
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i64 @kull_m_rpc_drsr_CreateGetNCChangesReply_encrypt(%struct.TYPE_4__* %81, i32 %82)
  store i64 %83, i64* %12, align 8
  br label %84

84:                                               ; preds = %80, %77
  %85 = load i64, i64* %12, align 8
  %86 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %86)
  ret i64 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @NT_SUCCESS(i32) #2

declare dso_local i32 @RtlEncryptDES2blocks1DWORD(i64, i64*, i32*) #2

declare dso_local i32 @RtlCopyMemory(i64, i32*, i32) #2

declare dso_local i32 @PRINT_ERROR(i8*, ...) #2

declare dso_local i64 @kull_m_rpc_drsr_CreateGetNCChangesReply_encrypt(%struct.TYPE_4__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
