; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_int.c_asn1_string_to_bn.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_int.c_asn1_string_to_bn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@V_ASN1_NEG = common dso_local global i32 0, align 4
@ASN1_F_ASN1_STRING_TO_BN = common dso_local global i32 0, align 4
@ASN1_R_WRONG_INTEGER_TYPE = common dso_local global i32 0, align 4
@ASN1_R_BN_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32*, i32)* @asn1_string_to_bn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @asn1_string_to_bn(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @V_ASN1_NEG, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @ASN1_F_ASN1_STRING_TO_BN, align 4
  %19 = load i32, i32* @ASN1_R_WRONG_INTEGER_TYPE, align 4
  %20 = call i32 @ASN1err(i32 %18, i32 %19)
  store i32* null, i32** %4, align 8
  br label %48

21:                                               ; preds = %3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = call i32* @BN_bin2bn(i32 %24, i32 %27, i32* %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load i32, i32* @ASN1_F_ASN1_STRING_TO_BN, align 4
  %34 = load i32, i32* @ASN1_R_BN_LIB, align 4
  %35 = call i32 @ASN1err(i32 %33, i32 %34)
  store i32* null, i32** %4, align 8
  br label %48

36:                                               ; preds = %21
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @V_ASN1_NEG, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @BN_set_negative(i32* %44, i32 1)
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i32*, i32** %8, align 8
  store i32* %47, i32** %4, align 8
  br label %48

48:                                               ; preds = %46, %32, %17
  %49 = load i32*, i32** %4, align 8
  ret i32* %49
}

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32* @BN_bin2bn(i32, i32, i32*) #1

declare dso_local i32 @BN_set_negative(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
