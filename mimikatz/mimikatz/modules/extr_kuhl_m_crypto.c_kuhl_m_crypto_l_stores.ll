; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_crypto.c_kuhl_m_crypto_l_stores.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_crypto.c_kuhl_m_crypto_l_stores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i32] [i32 115, i32 121, i32 115, i32 116, i32 101, i32 109, i32 115, i32 116, i32 111, i32 114, i32 101, i32 0], align 4
@.str.1 = private unnamed_addr constant [13 x i32] [i32 67, i32 85, i32 82, i32 82, i32 69, i32 78, i32 84, i32 95, i32 85, i32 83, i32 69, i32 82, i32 0], align 4
@.str.2 = private unnamed_addr constant [39 x i32] [i32 65, i32 115, i32 107, i32 105, i32 110, i32 103, i32 32, i32 102, i32 111, i32 114, i32 32, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 32, i32 83, i32 116, i32 111, i32 114, i32 101, i32 32, i32 39, i32 37, i32 115, i32 39, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 56, i32 120, i32 41, i32 10, i32 0], align 4
@kuhl_m_crypto_l_stores_enumCallback_print = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i32] [i32 67, i32 101, i32 114, i32 116, i32 69, i32 110, i32 117, i32 109, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 83, i32 116, i32 111, i32 114, i32 101, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_crypto_l_stores(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32**, i32*** %4, align 8
  %10 = call i32 @kull_m_string_args_byName(i32 %8, i32** %9, i8* bitcast ([12 x i32]* @.str to i8*), i32* %7, i8* bitcast ([13 x i32]* @.str.1 to i8*))
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @kull_m_crypto_system_store_to_dword(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @kprintf(i8* bitcast ([39 x i32]* @.str.2 to i8*), i32 %13, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @kuhl_m_crypto_l_stores_enumCallback_print, align 4
  %18 = call i32 @CertEnumSystemStore(i32 %16, i32* null, i32* %6, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([20 x i32]* @.str.3 to i8*))
  br label %22

22:                                               ; preds = %20, %2
  %23 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %23
}

declare dso_local i32 @kull_m_string_args_byName(i32, i32**, i8*, i32*, i8*) #1

declare dso_local i32 @kull_m_crypto_system_store_to_dword(i32) #1

declare dso_local i32 @kprintf(i8*, i32, i32) #1

declare dso_local i32 @CertEnumSystemStore(i32, i32*, i32*, i32) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
