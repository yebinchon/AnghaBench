; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_type.c_ASN1_TYPE_pack_sequence.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_type.c_ASN1_TYPE_pack_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ASN1_TYPE_pack_sequence(i32* %0, i8* %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32** %2, i32*** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32* @ASN1_item_pack(i8* %10, i32* %11, i32* null)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %46

16:                                               ; preds = %3
  %17 = load i32**, i32*** %7, align 8
  %18 = icmp ne i32** %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32**, i32*** %7, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32**, i32*** %7, align 8
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %9, align 8
  br label %40

26:                                               ; preds = %19, %16
  %27 = call i32* (...) @ASN1_TYPE_new()
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @ASN1_OCTET_STRING_free(i32* %31)
  store i32* null, i32** %4, align 8
  br label %46

33:                                               ; preds = %26
  %34 = load i32**, i32*** %7, align 8
  %35 = icmp ne i32** %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32*, i32** %9, align 8
  %38 = load i32**, i32*** %7, align 8
  store i32* %37, i32** %38, align 8
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %23
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @ASN1_TYPE_set(i32* %41, i32 %42, i32* %43)
  %45 = load i32*, i32** %9, align 8
  store i32* %45, i32** %4, align 8
  br label %46

46:                                               ; preds = %40, %30, %15
  %47 = load i32*, i32** %4, align 8
  ret i32* %47
}

declare dso_local i32* @ASN1_item_pack(i8*, i32*, i32*) #1

declare dso_local i32* @ASN1_TYPE_new(...) #1

declare dso_local i32 @ASN1_OCTET_STRING_free(i32*) #1

declare dso_local i32 @ASN1_TYPE_set(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
