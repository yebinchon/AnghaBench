; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_int.c_ASN1_ENUMERATED_get.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_int.c_ASN1_ENUMERATED_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@V_ASN1_NEG = common dso_local global i32 0, align 4
@V_ASN1_ENUMERATED = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i64 0, align 8
@LONG_MIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ASN1_ENUMERATED_get(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = icmp eq %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %42

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @V_ASN1_NEG, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = load i32, i32* @V_ASN1_ENUMERATED, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store i64 -1, i64* %2, align 8
  br label %42

19:                                               ; preds = %9
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 8
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i64 4294967295, i64* %2, align 8
  br label %42

25:                                               ; preds = %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = call i32 @ASN1_ENUMERATED_get_int64(i64* %5, %struct.TYPE_4__* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i64 -1, i64* %2, align 8
  br label %42

31:                                               ; preds = %25
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @LONG_MAX, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @LONG_MIN, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %31
  store i64 -1, i64* %2, align 8
  br label %42

40:                                               ; preds = %35
  %41 = load i64, i64* %5, align 8
  store i64 %41, i64* %2, align 8
  br label %42

42:                                               ; preds = %40, %39, %30, %24, %18, %8
  %43 = load i64, i64* %2, align 8
  ret i64 %43
}

declare dso_local i32 @ASN1_ENUMERATED_get_int64(i64*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
