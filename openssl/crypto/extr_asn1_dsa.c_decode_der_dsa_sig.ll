; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_asn1_dsa.c_decode_der_dsa_sig.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_asn1_dsa.c_decode_der_dsa_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ID_SEQUENCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decode_der_dsa_sig(i32* %0, i32* %1, i8** %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8**, i8*** %8, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @PACKET_buf_init(i32* %11, i8* %15, i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %4
  %20 = call i32 @PACKET_get_1(i32* %11, i32* %13)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @ID_SEQUENCE, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %40, label %26

26:                                               ; preds = %22
  %27 = call i32 @decode_der_length(i32* %11, i32* %12)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @decode_der_integer(i32* %12, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @decode_der_integer(i32* %12, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = call i64 @PACKET_remaining(i32* %12)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %33, %29, %26, %22, %19, %4
  store i64 0, i64* %5, align 8
  br label %53

41:                                               ; preds = %37
  %42 = call i8* @PACKET_data(i32* %11)
  %43 = load i8**, i8*** %8, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = ptrtoint i8* %42 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i8**, i8*** %8, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 %48
  store i8* %51, i8** %49, align 8
  %52 = load i64, i64* %10, align 8
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %41, %40
  %54 = load i64, i64* %5, align 8
  ret i64 %54
}

declare dso_local i32 @PACKET_buf_init(i32*, i8*, i64) #1

declare dso_local i32 @PACKET_get_1(i32*, i32*) #1

declare dso_local i32 @decode_der_length(i32*, i32*) #1

declare dso_local i32 @decode_der_integer(i32*, i32*) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i8* @PACKET_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
