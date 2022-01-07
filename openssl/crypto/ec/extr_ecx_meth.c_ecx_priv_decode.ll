; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecx_meth.c_ecx_priv_decode.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecx_meth.c_ecx_priv_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@KEY_OP_PRIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @ecx_priv_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecx_priv_decode(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @PKCS8_pkey_get0(i32* null, i8** %6, i32* %7, i32** %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = call i32* @d2i_ASN1_OCTET_STRING(i32* null, i8** %6, i32 %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %26

21:                                               ; preds = %15
  %22 = load i32*, i32** %8, align 8
  %23 = call i8* @ASN1_STRING_get0_data(i32* %22)
  store i8* %23, i8** %6, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @ASN1_STRING_length(i32* %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %21, %20
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @KEY_OP_PRIVATE, align 4
  %37 = call i32 @ecx_key_op(%struct.TYPE_6__* %27, i32 %32, i32* %33, i8* %34, i32 %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @ASN1_STRING_clear_free(i32* %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %26, %14
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @PKCS8_pkey_get0(i32*, i8**, i32*, i32**, i32*) #1

declare dso_local i32* @d2i_ASN1_OCTET_STRING(i32*, i8**, i32) #1

declare dso_local i8* @ASN1_STRING_get0_data(i32*) #1

declare dso_local i32 @ASN1_STRING_length(i32*) #1

declare dso_local i32 @ecx_key_op(%struct.TYPE_6__*, i32, i32*, i8*, i32, i32) #1

declare dso_local i32 @ASN1_STRING_clear_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
