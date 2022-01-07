; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_int.c_c2i_uint64_int.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_int.c_c2i_uint64_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_F_C2I_UINT64_INT = common dso_local global i32 0, align 4
@ASN1_R_TOO_LARGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c2i_uint64_int(i32* %0, i32* %1, i8** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca [4 x i8], align 1
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8**, i8*** %8, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i64, i64* %9, align 8
  %15 = call i64 @c2i_ibuf(i8* null, i32* null, i8* %13, i64 %14)
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %37

19:                                               ; preds = %4
  %20 = load i64, i64* %11, align 8
  %21 = icmp ugt i64 %20, 4
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @ASN1_F_C2I_UINT64_INT, align 4
  %24 = load i32, i32* @ASN1_R_TOO_LARGE, align 4
  %25 = call i32 @ASN1err(i32 %23, i32 %24)
  store i32 0, i32* %5, align 4
  br label %37

26:                                               ; preds = %19
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %28 = load i32*, i32** %7, align 8
  %29 = load i8**, i8*** %8, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @c2i_ibuf(i8* %27, i32* %28, i8* %30, i64 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @asn1_get_uint64(i32* %33, i8* %34, i64 %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %26, %22, %18
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i64 @c2i_ibuf(i8*, i32*, i8*, i64) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @asn1_get_uint64(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
