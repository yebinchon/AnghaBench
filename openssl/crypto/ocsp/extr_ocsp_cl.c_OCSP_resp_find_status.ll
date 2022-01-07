; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_cl.c_OCSP_resp_find_status.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ocsp/extr_ocsp_cl.c_OCSP_resp_find_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OCSP_resp_find_status(i32* %0, i32* %1, i32* %2, i32* %3, i32** %4, i32** %5, i32** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32** %4, i32*** %13, align 8
  store i32** %5, i32*** %14, align 8
  store i32** %6, i32*** %15, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @OCSP_resp_find(i32* %18, i32* %19, i32 -1)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %40

24:                                               ; preds = %7
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %16, align 4
  %27 = call i32* @OCSP_resp_get0(i32* %25, i32 %26)
  store i32* %27, i32** %17, align 8
  %28 = load i32*, i32** %17, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = load i32**, i32*** %13, align 8
  %31 = load i32**, i32*** %14, align 8
  %32 = load i32**, i32*** %15, align 8
  %33 = call i32 @OCSP_single_get0_status(i32* %28, i32* %29, i32** %30, i32** %31, i32** %32)
  store i32 %33, i32* %16, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* %16, align 4
  %38 = load i32*, i32** %11, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %24
  store i32 1, i32* %8, align 4
  br label %40

40:                                               ; preds = %39, %23
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local i32 @OCSP_resp_find(i32*, i32*, i32) #1

declare dso_local i32* @OCSP_resp_get0(i32*, i32) #1

declare dso_local i32 @OCSP_single_get0_status(i32*, i32*, i32**, i32**, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
