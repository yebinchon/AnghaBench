; ModuleID = '/home/carl/AnghaBench/openssl/engines/extr_e_capi_err.c_ERR_load_CAPI_strings.c'
source_filename = "/home/carl/AnghaBench/openssl/engines/extr_e_capi_err.c_ERR_load_CAPI_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lib_code = common dso_local global i64 0, align 8
@error_loaded = common dso_local global i32 0, align 4
@CAPI_str_reasons = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ERR_load_CAPI_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ERR_load_CAPI_strings() #0 {
  %1 = load i64, i64* @lib_code, align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i64 (...) @ERR_get_next_error_library()
  store i64 %4, i64* @lib_code, align 8
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i32, i32* @error_loaded, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = load i64, i64* @lib_code, align 8
  %10 = load i32, i32* @CAPI_str_reasons, align 4
  %11 = call i32 @ERR_load_strings(i64 %9, i32 %10)
  store i32 1, i32* @error_loaded, align 4
  br label %12

12:                                               ; preds = %8, %5
  ret i32 1
}

declare dso_local i64 @ERR_get_next_error_library(...) #1

declare dso_local i32 @ERR_load_strings(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
