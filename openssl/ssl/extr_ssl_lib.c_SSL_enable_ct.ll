; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_SSL_enable_ct.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_ssl_lib.c_SSL_enable_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSL_F_SSL_ENABLE_CT = common dso_local global i32 0, align 4
@SSL_R_INVALID_CT_VALIDATION_TYPE = common dso_local global i32 0, align 4
@ct_permissive = common dso_local global i32 0, align 4
@ct_strict = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SSL_enable_ct(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %7 [
    i32 129, label %11
    i32 128, label %15
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @SSL_F_SSL_ENABLE_CT, align 4
  %9 = load i32, i32* @SSL_R_INVALID_CT_VALIDATION_TYPE, align 4
  %10 = call i32 @SSLerr(i32 %8, i32 %9)
  store i32 0, i32* %3, align 4
  br label %19

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @ct_permissive, align 4
  %14 = call i32 @SSL_set_ct_validation_callback(i32* %12, i32 %13, i32* null)
  store i32 %14, i32* %3, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @ct_strict, align 4
  %18 = call i32 @SSL_set_ct_validation_callback(i32* %16, i32 %17, i32* null)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %11, %7
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @SSLerr(i32, i32) #1

declare dso_local i32 @SSL_set_ct_validation_callback(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
