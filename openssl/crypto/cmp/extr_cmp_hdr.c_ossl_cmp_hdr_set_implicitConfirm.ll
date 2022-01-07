; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_hdr.c_ossl_cmp_hdr_set_implicitConfirm.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_hdr.c_ossl_cmp_hdr_set_implicitConfirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_id_it_implicitConfirm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_cmp_hdr_set_implicitConfirm(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @ossl_assert(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = call i64 (...) @ASN1_NULL_new()
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %37

18:                                               ; preds = %12
  %19 = load i32, i32* @NID_id_it_implicitConfirm, align 4
  %20 = call i32 @OBJ_nid2obj(i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* @OSSL_CMP_ITAV_create(i32 %20, i32* %21)
  store i32* %22, i32** %4, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %32

25:                                               ; preds = %18
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @ossl_cmp_hdr_generalInfo_push0_item(i32* %26, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %32

31:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %37

32:                                               ; preds = %30, %24
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @ASN1_TYPE_free(i32* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @OSSL_CMP_ITAV_free(i32* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %32, %31, %17, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i64 @ASN1_NULL_new(...) #1

declare dso_local i32* @OSSL_CMP_ITAV_create(i32, i32*) #1

declare dso_local i32 @OBJ_nid2obj(i32) #1

declare dso_local i32 @ossl_cmp_hdr_generalInfo_push0_item(i32*, i32*) #1

declare dso_local i32 @ASN1_TYPE_free(i32*) #1

declare dso_local i32 @OSSL_CMP_ITAV_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
