; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_crypto.c_kuhl_m_crypto_hash.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_crypto.c_kuhl_m_crypto_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@LM_NTLM_HASH_LENGTH = common dso_local global i32 0, align 4
@MD5_DIGEST_LENGTH = common dso_local global i32 0, align 4
@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i32] [i32 112, i32 97, i32 115, i32 115, i32 119, i32 111, i32 114, i32 100, i32 0], align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 117, i32 115, i32 101, i32 114, i32 0], align 4
@.str.2 = private unnamed_addr constant [6 x i32] [i32 99, i32 111, i32 117, i32 110, i32 116, i32 0], align 4
@.str.3 = private unnamed_addr constant [7 x i32] [i32 78, i32 84, i32 76, i32 77, i32 58, i32 32, i32 0], align 4
@.str.4 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [7 x i32] [i32 68, i32 67, i32 67, i32 49, i32 58, i32 32, i32 0], align 4
@.str.6 = private unnamed_addr constant [7 x i32] [i32 68, i32 67, i32 67, i32 50, i32 58, i32 32, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i32] [i32 76, i32 77, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@CALG_MD5 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i32] [i32 77, i32 68, i32 53, i32 32, i32 58, i32 32, i32 0], align 4
@CALG_SHA1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i32] [i32 83, i32 72, i32 65, i32 49, i32 58, i32 32, i32 0], align 4
@CALG_SHA_256 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i32] [i32 83, i32 72, i32 65, i32 50, i32 58, i32 32, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_crypto_hash(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__, align 4
  %9 = alloca %struct.TYPE_9__, align 4
  %10 = alloca %struct.TYPE_10__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca [32 x i32], align 16
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 10240, i32* %11, align 4
  %18 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  %25 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  %28 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %16, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32**, i32*** %4, align 8
  %33 = call i64 @kull_m_string_args_byName(i32 %31, i32** %32, i8* bitcast ([9 x i32]* @.str to i8*), i32** %6, i32* null)
  %34 = load i32, i32* %3, align 4
  %35 = load i32**, i32*** %4, align 8
  %36 = call i64 @kull_m_string_args_byName(i32 %34, i32** %35, i8* bitcast ([5 x i32]* @.str.1 to i8*), i32** %7, i32* null)
  %37 = load i32, i32* %3, align 4
  %38 = load i32**, i32*** %4, align 8
  %39 = call i64 @kull_m_string_args_byName(i32 %37, i32** %38, i8* bitcast ([6 x i32]* @.str.2 to i8*), i32** %5, i32* null)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %2
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @wcstoul(i32* %42, i32* null, i32 0)
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %41, %2
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @RtlInitUnicodeString(%struct.TYPE_9__* %8, i32* %45)
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @RtlInitUnicodeString(%struct.TYPE_9__* %9, i32* %47)
  %49 = call i32 @RtlDigestNTLM(%struct.TYPE_9__* %8, i32* %21)
  %50 = call i64 @NT_SUCCESS(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %80

52:                                               ; preds = %44
  %53 = call i32 @kprintf(i8* bitcast ([7 x i32]* @.str.3 to i8*))
  %54 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %55 = call i32 @kull_m_string_wprintf_hex(i32* %21, i32 %54, i32 0)
  %56 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %57 = load i32*, i32** %7, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %79

59:                                               ; preds = %52
  %60 = call i32 @kull_m_crypto_get_dcc(i32* %24, i32* %21, %struct.TYPE_9__* %9, i32 0)
  %61 = call i64 @NT_SUCCESS(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = call i32 @kprintf(i8* bitcast ([7 x i32]* @.str.5 to i8*))
  %65 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %66 = call i32 @kull_m_string_wprintf_hex(i32* %24, i32 %65, i32 0)
  %67 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @kull_m_crypto_get_dcc(i32* %24, i32* %21, %struct.TYPE_9__* %9, i32 %68)
  %70 = call i64 @NT_SUCCESS(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %63
  %73 = call i32 @kprintf(i8* bitcast ([7 x i32]* @.str.6 to i8*))
  %74 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %75 = call i32 @kull_m_string_wprintf_hex(i32* %24, i32 %74, i32 0)
  %76 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  br label %77

77:                                               ; preds = %72, %63
  br label %78

78:                                               ; preds = %77, %59
  br label %79

79:                                               ; preds = %78, %52
  br label %80

80:                                               ; preds = %79, %44
  %81 = load i32, i32* @TRUE, align 4
  %82 = call i32 @RtlUpcaseUnicodeStringToOemString(%struct.TYPE_10__* %10, %struct.TYPE_9__* %8, i32 %81)
  %83 = call i64 @NT_SUCCESS(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @RtlDigestLM(i32 %87, i32* %21)
  %89 = call i64 @NT_SUCCESS(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = call i32 @kprintf(i8* bitcast ([7 x i32]* @.str.7 to i8*))
  %93 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %94 = call i32 @kull_m_string_wprintf_hex(i32* %21, i32 %93, i32 0)
  %95 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  br label %96

96:                                               ; preds = %91, %85
  %97 = call i32 @RtlFreeOemString(%struct.TYPE_10__* %10)
  br label %98

98:                                               ; preds = %96, %80
  %99 = load i32, i32* @CALG_MD5, align 4
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %105 = call i64 @kull_m_crypto_hash(i32 %99, i32 %101, i32 %103, i32* %27, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = call i32 @kprintf(i8* bitcast ([7 x i32]* @.str.8 to i8*))
  br label %109

109:                                              ; preds = %107, %98
  %110 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %111 = call i32 @kull_m_string_wprintf_hex(i32* %27, i32 %110, i32 0)
  %112 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %113 = load i32, i32* @CALG_SHA1, align 4
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %119 = call i64 @kull_m_crypto_hash(i32 %113, i32 %115, i32 %117, i32* %30, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %109
  %122 = call i32 @kprintf(i8* bitcast ([7 x i32]* @.str.9 to i8*))
  br label %123

123:                                              ; preds = %121, %109
  %124 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %125 = call i32 @kull_m_string_wprintf_hex(i32* %30, i32 %124, i32 0)
  %126 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %127 = load i32, i32* @CALG_SHA_256, align 4
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 0
  %133 = call i64 @kull_m_crypto_hash(i32 %127, i32 %129, i32 %131, i32* %132, i32 32)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %123
  %136 = call i32 @kprintf(i8* bitcast ([7 x i32]* @.str.10 to i8*))
  br label %137

137:                                              ; preds = %135, %123
  %138 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 0
  %139 = call i32 @kull_m_string_wprintf_hex(i32* %138, i32 32, i32 0)
  %140 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.4 to i8*))
  %141 = load i32, i32* @STATUS_SUCCESS, align 4
  %142 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %142)
  ret i32 %141
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i32**, i32*) #2

declare dso_local i32 @wcstoul(i32*, i32*, i32) #2

declare dso_local i32 @RtlInitUnicodeString(%struct.TYPE_9__*, i32*) #2

declare dso_local i64 @NT_SUCCESS(i32) #2

declare dso_local i32 @RtlDigestNTLM(%struct.TYPE_9__*, i32*) #2

declare dso_local i32 @kprintf(i8*) #2

declare dso_local i32 @kull_m_string_wprintf_hex(i32*, i32, i32) #2

declare dso_local i32 @kull_m_crypto_get_dcc(i32*, i32*, %struct.TYPE_9__*, i32) #2

declare dso_local i32 @RtlUpcaseUnicodeStringToOemString(%struct.TYPE_10__*, %struct.TYPE_9__*, i32) #2

declare dso_local i32 @RtlDigestLM(i32, i32*) #2

declare dso_local i32 @RtlFreeOemString(%struct.TYPE_10__*) #2

declare dso_local i64 @kull_m_crypto_hash(i32, i32, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
