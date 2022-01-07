; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/extr_kuhl_m_dpapi.c_kuhl_m_dpapi_display_CredHist.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/extr_kuhl_m_dpapi.c_kuhl_m_dpapi_display_CredHist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [4 x i32] [i32 32, i32 32, i32 32, i32 0], align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 32, i32 45, i32 45, i32 32, i32 0], align 4
@.str.2 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [12 x i32] [i32 32, i32 32, i32 32, i32 62, i32 32, i32 78, i32 84, i32 76, i32 77, i32 58, i32 32, i32 0], align 4
@LM_NTLM_HASH_LENGTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i32] [i32 32, i32 32, i32 32, i32 62, i32 32, i32 83, i32 72, i32 65, i32 49, i32 58, i32 32, i32 0], align 4
@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_dpapi_display_CredHist(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 @kprintf(i8* bitcast ([4 x i32]* @.str to i8*))
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @kull_m_string_displaySID(i32 %11)
  %13 = call i32 @kprintf(i8* bitcast ([5 x i32]* @.str.1 to i8*))
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = call i32 @kull_m_string_displayGUID(i32* %16)
  %18 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %19 = call i32 @kprintf(i8* bitcast ([12 x i32]* @.str.3 to i8*))
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @LM_NTLM_HASH_LENGTH, align 4
  %22 = call i32 @kull_m_string_wprintf_hex(i32 %20, i32 %21, i32 0)
  %23 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %24 = call i32 @kprintf(i8* bitcast ([12 x i32]* @.str.4 to i8*))
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %27 = call i32 @kull_m_string_wprintf_hex(i32 %25, i32 %26, i32 0)
  %28 = call i32 @kprintf(i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ConvertSidToStringSid(i32 %31, i32* %7)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %3
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @kuhl_m_dpapi_oe_credential_add(i32 %35, i32* %38, i32 %39, i32 %40, i32* null, i32* null)
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @LocalFree(i32 %42)
  br label %44

44:                                               ; preds = %34, %3
  ret void
}

declare dso_local i32 @kprintf(i8*) #1

declare dso_local i32 @kull_m_string_displaySID(i32) #1

declare dso_local i32 @kull_m_string_displayGUID(i32*) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i32, i32, i32) #1

declare dso_local i64 @ConvertSidToStringSid(i32, i32*) #1

declare dso_local i32 @kuhl_m_dpapi_oe_credential_add(i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @LocalFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
