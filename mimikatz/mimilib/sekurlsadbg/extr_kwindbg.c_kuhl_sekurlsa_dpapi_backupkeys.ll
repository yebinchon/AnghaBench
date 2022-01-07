; ModuleID = '/home/carl/AnghaBench/mimikatz/mimilib/sekurlsadbg/extr_kwindbg.c_kuhl_sekurlsa_dpapi_backupkeys.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimilib/sekurlsadbg/extr_kwindbg.c_kuhl_sekurlsa_dpapi_backupkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@NtBuildNumber = common dso_local global i64 0, align 8
@KULL_M_WIN_MIN_BUILD_8 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"lsasrv!g_guidPreferredKey\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"lsasrv!g_pbPreferredKey\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"lsasrv!g_cbPreferredKey\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"lsasrv!g_guidW2KPreferredKey\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"lsasrv!g_pbW2KPreferredKey\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"lsasrv!g_cbW2KPreferredKey\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"lsasrv!g_fSystemCredsInitialized\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"lsasrv!g_rgbSystemCredMachine\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"lsasrv!g_rgbSystemCredUser\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"dpapisrv!g_guidPreferredKey\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"dpapisrv!g_pbPreferredKey\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"dpapisrv!g_cbPreferredKey\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"dpapisrv!g_guidW2KPreferredKey\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"dpapisrv!g_pbW2KPreferredKey\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"dpapisrv!g_cbW2KPreferredKey\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"dpapisrv!g_fSystemCredsInitialized\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"dpapisrv!g_rgbSystemCredMachine\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"dpapisrv!g_rgbSystemCredUser\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"\0ADPAPI Backup keys\0A=================\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"Current prefered key:       \00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Compatibility prefered key: \00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"\0ADPAPI System\0A============\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"full: \00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"\0Am/u : \00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c" / \00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_sekurlsa_dpapi_backupkeys() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %21 = load i64, i64* @NtBuildNumber, align 8
  %22 = load i64, i64* @KULL_M_WIN_MIN_BUILD_8, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %0
  %25 = call i64 @GetExpression(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i64 %25, i64* %4, align 8
  %26 = call i64 @GetExpression(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i64 %26, i64* %5, align 8
  %27 = call i64 @GetExpression(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i64 %27, i64* %6, align 8
  %28 = call i64 @GetExpression(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i64 %28, i64* %7, align 8
  %29 = call i64 @GetExpression(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  store i64 %29, i64* %8, align 8
  %30 = call i64 @GetExpression(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  store i64 %30, i64* %9, align 8
  %31 = call i64 @GetExpression(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  store i64 %31, i64* %1, align 8
  %32 = call i64 @GetExpression(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  store i64 %32, i64* %2, align 8
  %33 = call i64 @GetExpression(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  store i64 %33, i64* %3, align 8
  br label %44

34:                                               ; preds = %0
  %35 = call i64 @GetExpression(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  store i64 %35, i64* %4, align 8
  %36 = call i64 @GetExpression(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  store i64 %36, i64* %5, align 8
  %37 = call i64 @GetExpression(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  store i64 %37, i64* %6, align 8
  %38 = call i64 @GetExpression(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  store i64 %38, i64* %7, align 8
  %39 = call i64 @GetExpression(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  store i64 %39, i64* %8, align 8
  %40 = call i64 @GetExpression(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  store i64 %40, i64* %9, align 8
  %41 = call i64 @GetExpression(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  store i64 %41, i64* %1, align 8
  %42 = call i64 @GetExpression(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0))
  store i64 %42, i64* %2, align 8
  %43 = call i64 @GetExpression(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  store i64 %43, i64* %3, align 8
  br label %44

44:                                               ; preds = %34, %24
  %45 = load i64, i64* %4, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i64, i64* %6, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %50, %47, %44
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59, %50
  %63 = call i32 @dprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0))
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @kuhl_sekurlsa_dpapi_display_backupkey(i64 %64, i64 %65, i64 %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0))
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @kuhl_sekurlsa_dpapi_display_backupkey(i64 %68, i64 %69, i64 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  br label %72

72:                                               ; preds = %62, %59, %56, %53
  %73 = load i64, i64* %1, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %121

75:                                               ; preds = %72
  %76 = load i64, i64* %2, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %121

78:                                               ; preds = %75
  %79 = load i64, i64* %3, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %121

81:                                               ; preds = %78
  %82 = load i64, i64* %1, align 8
  %83 = call i64 @ReadMemory(i64 %82, i64* %10, i32 8, i32* null)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %120

85:                                               ; preds = %81
  %86 = call i32 @dprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0))
  %87 = load i64, i64* %10, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %119

89:                                               ; preds = %85
  %90 = load i64, i64* %2, align 8
  %91 = mul nuw i64 8, %15
  %92 = trunc i64 %91 to i32
  %93 = call i64 @ReadMemory(i64 %90, i64* %17, i32 %92, i32* null)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %118

95:                                               ; preds = %89
  %96 = load i64, i64* %3, align 8
  %97 = mul nuw i64 8, %19
  %98 = trunc i64 %97 to i32
  %99 = call i64 @ReadMemory(i64 %96, i64* %20, i32 %98, i32* null)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %95
  %102 = call i32 @dprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0))
  %103 = mul nuw i64 8, %15
  %104 = trunc i64 %103 to i32
  %105 = call i32 @kull_m_string_dprintf_hex(i64* %17, i32 %104, i32 0)
  %106 = mul nuw i64 8, %19
  %107 = trunc i64 %106 to i32
  %108 = call i32 @kull_m_string_dprintf_hex(i64* %20, i32 %107, i32 0)
  %109 = call i32 @dprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  %110 = mul nuw i64 8, %15
  %111 = trunc i64 %110 to i32
  %112 = call i32 @kull_m_string_dprintf_hex(i64* %17, i32 %111, i32 0)
  %113 = call i32 @dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0))
  %114 = mul nuw i64 8, %19
  %115 = trunc i64 %114 to i32
  %116 = call i32 @kull_m_string_dprintf_hex(i64* %20, i32 %115, i32 0)
  %117 = call i32 @dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  br label %118

118:                                              ; preds = %101, %95, %89
  br label %119

119:                                              ; preds = %118, %85
  br label %120

120:                                              ; preds = %119, %81
  br label %121

121:                                              ; preds = %120, %78, %75, %72
  %122 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %122)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetExpression(i8*) #2

declare dso_local i32 @dprintf(i8*) #2

declare dso_local i32 @kuhl_sekurlsa_dpapi_display_backupkey(i64, i64, i64, i8*) #2

declare dso_local i64 @ReadMemory(i64, i64*, i32, i32*) #2

declare dso_local i32 @kull_m_string_dprintf_hex(i64*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
