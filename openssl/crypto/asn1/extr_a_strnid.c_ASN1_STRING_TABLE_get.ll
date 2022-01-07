; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_strnid.c_ASN1_STRING_TABLE_get.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_strnid.c_ASN1_STRING_TABLE_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@OPENSSL_INIT_LOAD_CONFIG = common dso_local global i32 0, align 4
@stable = common dso_local global i64 0, align 8
@tbl_standard = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @ASN1_STRING_TABLE_get(i32 %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @OPENSSL_INIT_LOAD_CONFIG, align 4
  %7 = call i32 @OPENSSL_init_crypto(i32 %6, i32* null)
  %8 = load i32, i32* %3, align 4
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %8, i32* %9, align 4
  %10 = load i64, i64* @stable, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load i64, i64* @stable, align 8
  %14 = call i32 @sk_ASN1_STRING_TABLE_find(i64 %13, %struct.TYPE_7__* %5)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i64, i64* @stable, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.TYPE_7__* @sk_ASN1_STRING_TABLE_value(i64 %18, i32 %19)
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %2, align 8
  br label %27

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %1
  %23 = load i32, i32* @tbl_standard, align 4
  %24 = load i32, i32* @tbl_standard, align 4
  %25 = call i32 @OSSL_NELEM(i32 %24)
  %26 = call %struct.TYPE_7__* @OBJ_bsearch_table(%struct.TYPE_7__* %5, i32 %23, i32 %25)
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %2, align 8
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %28
}

declare dso_local i32 @OPENSSL_init_crypto(i32, i32*) #1

declare dso_local i32 @sk_ASN1_STRING_TABLE_find(i64, %struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @sk_ASN1_STRING_TABLE_value(i64, i32) #1

declare dso_local %struct.TYPE_7__* @OBJ_bsearch_table(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @OSSL_NELEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
