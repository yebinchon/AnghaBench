; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/extr_kuhl_m_dpapi_oe.c_kuhl_m_dpapi_oe_credential_descr.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/extr_kuhl_m_dpapi_oe.c_kuhl_m_dpapi_oe_credential_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [7 x i32] [i32 83, i32 73, i32 68, i32 58, i32 37, i32 115, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 59, i32 0], align 4
@KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_GUID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i32] [i32 71, i32 85, i32 73, i32 68, i32 58, i32 0], align 4
@KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_MD4 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i32] [i32 77, i32 68, i32 52, i32 58, i32 0], align 4
@LM_NTLM_HASH_LENGTH = common dso_local global i32 0, align 4
@KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_SHA1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i32] [i32 83, i32 72, i32 65, i32 49, i32 58, i32 0], align 4
@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_MD4p = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i32] [i32 77, i32 68, i32 52, i32 112, i32 58, i32 0], align 4
@.str.6 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_dpapi_oe_credential_descr(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = icmp ne %struct.TYPE_5__* %3, null
  br i1 %4, label %5, label %85

5:                                                ; preds = %1
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = call i32 (i8*, ...) @kprintf(i8* bitcast ([7 x i32]* @.str to i8*), i64 %15)
  br label %17

17:                                               ; preds = %11, %5
  %18 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_GUID, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = call i32 (i8*, ...) @kprintf(i8* bitcast ([6 x i32]* @.str.2 to i8*))
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  %31 = call i32 @kull_m_string_displayGUID(i32* %30)
  br label %32

32:                                               ; preds = %26, %17
  %33 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_MD4, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %32
  %42 = call i32 (i8*, ...) @kprintf(i8* bitcast ([5 x i32]* @.str.3 to i8*))
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %48 = call i32 @kull_m_string_wprintf_hex(i32 %46, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %41, %32
  %50 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_SHA1, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %49
  %59 = call i32 (i8*, ...) @kprintf(i8* bitcast ([6 x i32]* @.str.4 to i8*))
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %65 = call i32 @kull_m_string_wprintf_hex(i32 %63, i32 %64, i32 0)
  br label %66

66:                                               ; preds = %58, %49
  %67 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_MD4p, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %66
  %76 = call i32 (i8*, ...) @kprintf(i8* bitcast ([6 x i32]* @.str.5 to i8*))
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %82 = call i32 @kull_m_string_wprintf_hex(i32 %80, i32 %81, i32 0)
  br label %83

83:                                               ; preds = %75, %66
  %84 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.6 to i8*))
  br label %85

85:                                               ; preds = %83, %1
  ret void
}

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kull_m_string_displayGUID(i32*) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
