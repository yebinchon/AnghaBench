; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_asn1_dsa.c_encode_der_length.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_asn1_dsa.c_encode_der_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @encode_der_length(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ugt i64 %6, 65535
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = icmp ugt i64 %10, 255
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @WPACKET_put_bytes_u8(i32* %13, i64 130)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @WPACKET_put_bytes_u16(i32* %17, i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %12
  store i32 0, i32* %3, align 4
  br label %39

22:                                               ; preds = %16
  br label %38

23:                                               ; preds = %9
  %24 = load i64, i64* %5, align 8
  %25 = icmp ugt i64 %24, 127
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @WPACKET_put_bytes_u8(i32* %27, i64 129)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %39

31:                                               ; preds = %26, %23
  %32 = load i32*, i32** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @WPACKET_put_bytes_u8(i32* %32, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %39

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %22
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %36, %30, %21, %8
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @WPACKET_put_bytes_u8(i32*, i64) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
