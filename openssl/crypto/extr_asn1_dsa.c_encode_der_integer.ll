; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_asn1_dsa.c_encode_der_integer.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_asn1_dsa.c_encode_der_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ID_INTEGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @encode_der_integer(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i64 @BN_is_negative(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @BN_num_bits(i32* %13)
  %15 = sdiv i32 %14, 8
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %7, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @WPACKET_start_sub_packet(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %12
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @ID_INTEGER, align 4
  %24 = call i32 @WPACKET_put_bytes_u8(i32* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load i32*, i32** %4, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @encode_der_length(i32* %27, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32*, i32** %4, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @WPACKET_allocate_bytes(i32* %32, i64 %33, i8** %6)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @WPACKET_close(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36, %31, %26, %21, %12
  store i32 0, i32* %3, align 4
  br label %55

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32*, i32** %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @BN_bn2binpad(i32* %45, i8* %46, i32 %48)
  %50 = load i64, i64* %7, align 8
  %51 = trunc i64 %50 to i32
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %55

54:                                               ; preds = %44, %41
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %53, %40, %11
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @BN_is_negative(i32*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @WPACKET_start_sub_packet(i32*) #1

declare dso_local i32 @WPACKET_put_bytes_u8(i32*, i32) #1

declare dso_local i32 @encode_der_length(i32*, i64) #1

declare dso_local i32 @WPACKET_allocate_bytes(i32*, i64, i8**) #1

declare dso_local i32 @WPACKET_close(i32*) #1

declare dso_local i32 @BN_bn2binpad(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
