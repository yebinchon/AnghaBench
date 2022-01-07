; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_v3.c_X509_EXTENSION_create_by_NID.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_v3.c_X509_EXTENSION_create_by_NID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509_F_X509_EXTENSION_CREATE_BY_NID = common dso_local global i32 0, align 4
@X509_R_UNKNOWN_NID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @X509_EXTENSION_create_by_NID(i32** %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32* @OBJ_nid2obj(i32 %12)
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* @X509_F_X509_EXTENSION_CREATE_BY_NID, align 4
  %18 = load i32, i32* @X509_R_UNKNOWN_NID, align 4
  %19 = call i32 @X509err(i32 %17, i32 %18)
  store i32* null, i32** %5, align 8
  br label %33

20:                                               ; preds = %4
  %21 = load i32**, i32*** %6, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = call i32* @X509_EXTENSION_create_by_OBJ(i32** %21, i32* %22, i32 %23, i32* %24)
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @ASN1_OBJECT_free(i32* %29)
  br label %31

31:                                               ; preds = %28, %20
  %32 = load i32*, i32** %11, align 8
  store i32* %32, i32** %5, align 8
  br label %33

33:                                               ; preds = %31, %16
  %34 = load i32*, i32** %5, align 8
  ret i32* %34
}

declare dso_local i32* @OBJ_nid2obj(i32) #1

declare dso_local i32 @X509err(i32, i32) #1

declare dso_local i32* @X509_EXTENSION_create_by_OBJ(i32**, i32*, i32, i32*) #1

declare dso_local i32 @ASN1_OBJECT_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
