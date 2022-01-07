; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_asn1.c_dsa_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dsa/extr_dsa_asn1.c_dsa_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_OP_NEW_PRE = common dso_local global i32 0, align 4
@ASN1_OP_FREE_PRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32**, i32*, i8*)* @dsa_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_cb(i32 %0, i32** %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @ASN1_OP_NEW_PRE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = call i64 (...) @DSA_new()
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32**, i32*** %7, align 8
  store i32* %15, i32** %16, align 8
  %17 = load i32**, i32*** %7, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 2, i32* %5, align 4
  br label %33

21:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %33

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @ASN1_OP_FREE_PRE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32**, i32*** %7, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @DSA_free(i32* %28)
  %30 = load i32**, i32*** %7, align 8
  store i32* null, i32** %30, align 8
  store i32 2, i32* %5, align 4
  br label %33

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %26, %21, %20
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i64 @DSA_new(...) #1

declare dso_local i32 @DSA_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
