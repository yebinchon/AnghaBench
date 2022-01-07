; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_field_format_detailed_cert_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_field_format_detailed_cert_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509_ASN_ENCODING = common dso_local global i32 0, align 4
@CERT_X500_NAME_STR = common dso_local global i32 0, align 4
@CERT_NAME_STR_CRLF_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @field_format_detailed_cert_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @field_format_detailed_cert_name(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %5 = load i32, i32* @X509_ASN_ENCODING, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @CERT_X500_NAME_STR, align 4
  %8 = load i32, i32* @CERT_NAME_STR_CRLF_FLAG, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @CertNameToStrW(i32 %5, i32 %6, i32 %9, i32* null, i32 0)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  %14 = call i32 (...) @GetProcessHeap()
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call i32* @HeapAlloc(i32 %14, i32 0, i32 %18)
  store i32* %19, i32** %3, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %13
  %23 = load i32, i32* @X509_ASN_ENCODING, align 4
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @CERT_X500_NAME_STR, align 4
  %26 = load i32, i32* @CERT_NAME_STR_CRLF_FLAG, align 4
  %27 = or i32 %25, %26
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @CertNameToStrW(i32 %23, i32 %24, i32 %27, i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %22, %13
  br label %32

32:                                               ; preds = %31, %1
  %33 = load i32*, i32** %3, align 8
  ret i32* %33
}

declare dso_local i32 @CertNameToStrW(i32, i32, i32, i32*, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
