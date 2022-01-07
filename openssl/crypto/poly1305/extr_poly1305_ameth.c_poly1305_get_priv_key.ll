; ModuleID = '/home/carl/AnghaBench/openssl/crypto/poly1305/extr_poly1305_ameth.c_poly1305_get_priv_key.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/poly1305/extr_poly1305_ameth.c_poly1305_get_priv_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@POLY1305_KEY_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i64*)* @poly1305_get_priv_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poly1305_get_priv_key(%struct.TYPE_5__* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i64, i64* @POLY1305_KEY_SIZE, align 8
  %18 = load i64*, i64** %7, align 8
  store i64 %17, i64* %18, align 8
  store i32 1, i32* %4, align 4
  br label %37

19:                                               ; preds = %3
  %20 = load i32*, i32** %8, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @POLY1305_KEY_SIZE, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %19
  store i32 0, i32* %4, align 4
  br label %37

28:                                               ; preds = %22
  %29 = load i8*, i8** %6, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @ASN1_STRING_get0_data(i32* %30)
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @ASN1_STRING_length(i32* %32)
  %34 = call i32 @memcpy(i8* %29, i32 %31, i32 %33)
  %35 = load i64, i64* @POLY1305_KEY_SIZE, align 8
  %36 = load i64*, i64** %7, align 8
  store i64 %35, i64* %36, align 8
  store i32 1, i32* %4, align 4
  br label %37

37:                                               ; preds = %28, %27, %16
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ASN1_STRING_get0_data(i32*) #1

declare dso_local i32 @ASN1_STRING_length(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
