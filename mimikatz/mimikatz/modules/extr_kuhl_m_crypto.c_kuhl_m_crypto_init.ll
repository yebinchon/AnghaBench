; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_crypto.c_kuhl_m_crypto_init.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_crypto.c_kuhl_m_crypto_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUS_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i32] [i32 114, i32 115, i32 97, i32 101, i32 110, i32 104, i32 0], align 4
@kuhl_m_crypto_hRsaEnh = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"CPExportKey\00", align 1
@K_CPExportKey = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_crypto_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @STATUS_NOT_FOUND, align 4
  store i32 %2, i32* %1, align 4
  %3 = call i32 @LoadLibrary(i8* bitcast ([7 x i32]* @.str to i8*))
  store i32 %3, i32* @kuhl_m_crypto_hRsaEnh, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = load i32, i32* @kuhl_m_crypto_hRsaEnh, align 4
  %7 = call i64 @GetProcAddress(i32 %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i64 %7, i64* @K_CPExportKey, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %10, i32* %1, align 4
  br label %11

11:                                               ; preds = %9, %5
  br label %12

12:                                               ; preds = %11, %0
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i32 @LoadLibrary(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
