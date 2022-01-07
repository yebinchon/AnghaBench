; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_utl.c_asn1_get_enc_ptr.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_utl.c_asn1_get_enc_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@ASN1_AFLG_ENCODING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_4__*)* @asn1_get_enc_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @asn1_get_enc_ptr(i32** %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32** %0, i32*** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %7 = load i32**, i32*** %4, align 8
  %8 = icmp eq i32** %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32**, i32*** %4, align 8
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  store i32* null, i32** %3, align 8
  br label %35

14:                                               ; preds = %9
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %6, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = icmp eq %struct.TYPE_5__* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ASN1_AFLG_ENCODING, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %14
  store i32* null, i32** %3, align 8
  br label %35

28:                                               ; preds = %20
  %29 = load i32**, i32*** %4, align 8
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32* @offset2ptr(i32* %30, i32 %33)
  store i32* %34, i32** %3, align 8
  br label %35

35:                                               ; preds = %28, %27, %13
  %36 = load i32*, i32** %3, align 8
  ret i32* %36
}

declare dso_local i32* @offset2ptr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
