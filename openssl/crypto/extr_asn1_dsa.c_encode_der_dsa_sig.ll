; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_asn1_dsa.c_encode_der_dsa_sig.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_asn1_dsa.c_encode_der_dsa_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ID_SEQUENCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @encode_der_dsa_sig(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @WPACKET_is_null_buf(i32* %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @WPACKET_start_sub_packet(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %88

18:                                               ; preds = %3
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = call i32 @WPACKET_init_null(i32* %8, i32 0)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %88

25:                                               ; preds = %21
  store i32* %8, i32** %9, align 8
  br label %28

26:                                               ; preds = %18
  %27 = load i32*, i32** %5, align 8
  store i32* %27, i32** %9, align 8
  br label %28

28:                                               ; preds = %26, %25
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @encode_der_integer(i32* %29, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @encode_der_integer(i32* %34, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @WPACKET_get_length(i32* %39, i64* %10)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %42
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @WPACKET_finish(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %45, %38, %33, %28
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @WPACKET_cleanup(i32* %53)
  br label %55

55:                                               ; preds = %52, %49
  store i32 0, i32* %4, align 4
  br label %88

56:                                               ; preds = %45, %42
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* @ID_SEQUENCE, align 4
  %59 = call i32 @WPACKET_put_bytes_u8(i32* %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %56
  %62 = load i32*, i32** %5, align 8
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @encode_der_length(i32* %62, i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %61
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = load i32*, i32** %5, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @encode_der_integer(i32* %70, i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %69, %66
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = load i32*, i32** %5, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @encode_der_integer(i32* %78, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77, %74
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @WPACKET_close(i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82, %77, %69, %61, %56
  store i32 0, i32* %4, align 4
  br label %88

87:                                               ; preds = %82
  store i32 1, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %86, %55, %24, %17
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @WPACKET_is_null_buf(i32*) #1

declare dso_local i32 @WPACKET_start_sub_packet(i32*) #1

declare dso_local i32 @WPACKET_init_null(i32*, i32) #1

declare dso_local i32 @encode_der_integer(i32*, i32*) #1

declare dso_local i32 @WPACKET_get_length(i32*, i64*) #1

declare dso_local i32 @WPACKET_finish(i32*) #1

declare dso_local i32 @WPACKET_cleanup(i32*) #1

declare dso_local i32 @WPACKET_put_bytes_u8(i32*, i32) #1

declare dso_local i32 @encode_der_length(i32*, i64) #1

declare dso_local i32 @WPACKET_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
