; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_asn1.c_EC_GROUP_get_basis_type.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_asn1.c_EC_GROUP_get_basis_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64* }

@NID_X9_62_characteristic_two_field = common dso_local global i64 0, align 8
@NID_X9_62_ppBasis = common dso_local global i32 0, align 4
@NID_X9_62_tpBasis = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EC_GROUP_get_basis_type(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = call i32 @EC_GROUP_method_of(%struct.TYPE_4__* %5)
  %7 = call i64 @EC_METHOD_get_field_type(i32 %6)
  %8 = load i64, i64* @NID_X9_62_characteristic_two_field, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %32, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = call i64 @OSSL_NELEM(i64* %16)
  %18 = trunc i64 %17 to i32
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %12
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %20, %12
  %30 = phi i1 [ false, %12 ], [ %28, %20 ]
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %12

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @NID_X9_62_ppBasis, align 4
  store i32 %39, i32* %2, align 4
  br label %46

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @NID_X9_62_tpBasis, align 4
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %43, %38, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @EC_METHOD_get_field_type(i32) #1

declare dso_local i32 @EC_GROUP_method_of(%struct.TYPE_4__*) #1

declare dso_local i64 @OSSL_NELEM(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
