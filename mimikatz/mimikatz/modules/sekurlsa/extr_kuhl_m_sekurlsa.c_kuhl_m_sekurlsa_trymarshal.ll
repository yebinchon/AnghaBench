; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/extr_kuhl_m_sekurlsa.c_kuhl_m_sekurlsa_trymarshal.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/extr_kuhl_m_sekurlsa.c_kuhl_m_sekurlsa_trymarshal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@LPTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i32] [i32 10, i32 9, i32 32, i32 42, i32 32, i32 77, i32 97, i32 114, i32 115, i32 104, i32 97, i32 108, i32 101, i32 100, i32 58, i32 32, i32 0], align 4
@.str.1 = private unnamed_addr constant [13 x i32] [i32 91, i32 67, i32 101, i32 114, i32 116, i32 93, i32 32, i32 83, i32 72, i32 65, i32 49, i32 58, i32 0], align 4
@CERT_HASH_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i32] [i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 45, i32 62, i32 99, i32 98, i32 83, i32 105, i32 122, i32 101, i32 32, i32 105, i32 115, i32 32, i32 37, i32 117, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [21 x i32] [i32 91, i32 85, i32 115, i32 101, i32 114, i32 110, i32 97, i32 109, i32 101, i32 84, i32 97, i32 114, i32 103, i32 101, i32 116, i32 93, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [14 x i32] [i32 91, i32 66, i32 105, i32 110, i32 97, i32 114, i32 121, i32 66, i32 108, i32 111, i32 98, i32 93, i32 32, i32 0], align 4
@.str.5 = private unnamed_addr constant [22 x i32] [i32 91, i32 85, i32 115, i32 101, i32 114, i32 110, i32 97, i32 109, i32 101, i32 70, i32 111, i32 114, i32 80, i32 97, i32 99, i32 107, i32 101, i32 100, i32 93, i32 32, i32 63, i32 0], align 4
@.str.6 = private unnamed_addr constant [6 x i32] [i32 91, i32 63, i32 93, i32 32, i32 63, i32 0], align 4
@.str.7 = private unnamed_addr constant [24 x i32] [i32 67, i32 114, i32 101, i32 100, i32 85, i32 110, i32 109, i32 97, i32 114, i32 115, i32 104, i32 97, i32 108, i32 67, i32 114, i32 101, i32 100, i32 101, i32 110, i32 116, i32 105, i32 97, i32 108, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_sekurlsa_trymarshal(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %100

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %100

16:                                               ; preds = %11
  %17 = load i32, i32* @LPTR, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %20, 4
  %22 = call i64 @LocalAlloc(i32 %17, i64 %21)
  store i64 %22, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %99

24:                                               ; preds = %16
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @RtlCopyMemory(i64 %25, i64 %28, i64 %31)
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @CredIsMarshaledCredential(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %96

36:                                               ; preds = %24
  %37 = call i32 (i8*, ...) @kprintf(i8* bitcast ([17 x i32]* @.str to i8*))
  %38 = load i64, i64* %4, align 8
  %39 = call i64 @CredUnmarshalCredential(i64 %38, i32* %5, i32* %6)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %93

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  switch i32 %42, label %90 [
    i32 130, label %43
    i32 128, label %68
    i32 131, label %75
    i32 129, label %88
  ]

43:                                               ; preds = %41
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to %struct.TYPE_8__*
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp eq i64 %49, 4
  br i1 %50, label %51, label %60

51:                                               ; preds = %43
  %52 = call i32 (i8*, ...) @kprintf(i8* bitcast ([13 x i32]* @.str.1 to i8*))
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to %struct.TYPE_8__*
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CERT_HASH_LENGTH, align 4
  %59 = call i32 @kull_m_string_wprintf_hex(i32 %57, i32 %58, i32 0)
  br label %67

60:                                               ; preds = %43
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to %struct.TYPE_8__*
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @PRINT_ERROR(i8* bitcast ([26 x i32]* @.str.2 to i8*), i32 %65)
  br label %67

67:                                               ; preds = %60, %51
  br label %92

68:                                               ; preds = %41
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to %struct.TYPE_6__*
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, ...) @kprintf(i8* bitcast ([21 x i32]* @.str.3 to i8*), i32 %73)
  br label %92

75:                                               ; preds = %41
  %76 = call i32 (i8*, ...) @kprintf(i8* bitcast ([14 x i32]* @.str.4 to i8*))
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to %struct.TYPE_9__*
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to %struct.TYPE_9__*
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @kull_m_string_wprintf_hex(i32 %81, i32 %86, i32 1)
  br label %92

88:                                               ; preds = %41
  %89 = call i32 (i8*, ...) @kprintf(i8* bitcast ([22 x i32]* @.str.5 to i8*))
  br label %92

90:                                               ; preds = %41
  %91 = call i32 (i8*, ...) @kprintf(i8* bitcast ([6 x i32]* @.str.6 to i8*))
  br label %92

92:                                               ; preds = %90, %88, %75, %68, %67
  br label %95

93:                                               ; preds = %36
  %94 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([24 x i32]* @.str.7 to i8*))
  br label %95

95:                                               ; preds = %93, %92
  br label %96

96:                                               ; preds = %95, %24
  %97 = load i64, i64* %4, align 8
  %98 = call i32 @LocalFree(i64 %97)
  br label %99

99:                                               ; preds = %96, %16
  br label %100

100:                                              ; preds = %99, %11, %1
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i64 @LocalAlloc(i32, i64) #1

declare dso_local i32 @RtlCopyMemory(i64, i64, i64) #1

declare dso_local i64 @CredIsMarshaledCredential(i64) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i64 @CredUnmarshalCredential(i64, i32*, i32*) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i32, i32, i32) #1

declare dso_local i32 @PRINT_ERROR(i8*, i32) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i32 @LocalFree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
