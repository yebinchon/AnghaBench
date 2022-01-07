; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_asn1_item_list.c_ASN1_ITEM_lookup.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_asn1_item_list.c_ASN1_ITEM_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@asn1_item_list = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @ASN1_ITEM_lookup(i8* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %26, %1
  %7 = load i64, i64* %4, align 8
  %8 = load i32*, i32** @asn1_item_list, align 8
  %9 = call i64 @OSSL_NELEM(i32* %8)
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %6
  %12 = load i32*, i32** @asn1_item_list, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_4__* @ASN1_ITEM_ptr(i32 %15)
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %5, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @strcmp(i32 %19, i8* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %2, align 8
  br label %30

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %4, align 8
  br label %6

29:                                               ; preds = %6
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %31
}

declare dso_local i64 @OSSL_NELEM(i32*) #1

declare dso_local %struct.TYPE_4__* @ASN1_ITEM_ptr(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
