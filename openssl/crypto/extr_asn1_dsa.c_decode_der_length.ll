; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_asn1_dsa.c_decode_der_length.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_asn1_dsa.c_decode_der_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode_der_length(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @PACKET_get_1(i32* %7, i32* %6)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp ult i32 %12, 128
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = call i32 @PACKET_get_sub_packet(i32* %15, i32* %16, i64 %18)
  store i32 %19, i32* %3, align 4
  br label %35

20:                                               ; preds = %11
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 129
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @PACKET_get_length_prefixed_1(i32* %24, i32* %25)
  store i32 %26, i32* %3, align 4
  br label %35

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 130
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @PACKET_get_length_prefixed_2(i32* %31, i32* %32)
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %30, %23, %14, %10
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @PACKET_get_1(i32*, i32*) #1

declare dso_local i32 @PACKET_get_sub_packet(i32*, i32*, i64) #1

declare dso_local i32 @PACKET_get_length_prefixed_1(i32*, i32*) #1

declare dso_local i32 @PACKET_get_length_prefixed_2(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
