; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pkcs7/extr_pk7_attr.c_PKCS7_add_attrib_content_type.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pkcs7/extr_pk7_attr.c_PKCS7_add_attrib_content_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_pkcs9_contentType = common dso_local global i32 0, align 4
@NID_pkcs7_data = common dso_local global i32 0, align 4
@V_ASN1_OBJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PKCS7_add_attrib_content_type(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* @NID_pkcs9_contentType, align 4
  %8 = call i64 @PKCS7_get_signed_attribute(i32* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @NID_pkcs7_data, align 4
  %16 = call i32* @OBJ_nid2obj(i32 %15)
  store i32* %16, i32** %5, align 8
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @NID_pkcs9_contentType, align 4
  %20 = load i32, i32* @V_ASN1_OBJECT, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @PKCS7_add_signed_attribute(i32* %18, i32 %19, i32 %20, i32* %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %17, %10
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i64 @PKCS7_get_signed_attribute(i32*, i32) #1

declare dso_local i32* @OBJ_nid2obj(i32) #1

declare dso_local i32 @PKCS7_add_signed_attribute(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
