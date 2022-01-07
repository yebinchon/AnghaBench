; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_asn1.c_EC_GROUP_get_trinomial_basis.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_asn1.c_EC_GROUP_get_trinomial_basis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@NID_X9_62_characteristic_two_field = common dso_local global i64 0, align 8
@EC_F_EC_GROUP_GET_TRINOMIAL_BASIS = common dso_local global i32 0, align 4
@ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EC_GROUP_get_trinomial_basis(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = icmp eq %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

9:                                                ; preds = %2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = call i32 @EC_GROUP_method_of(%struct.TYPE_4__* %10)
  %12 = call i64 @EC_METHOD_get_field_type(i32 %11)
  %13 = load i64, i64* @NID_X9_62_characteristic_two_field, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %36, label %15

15:                                               ; preds = %9
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %15
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29, %22, %15, %9
  %37 = load i32, i32* @EC_F_EC_GROUP_GET_TRINOMIAL_BASIS, align 4
  %38 = load i32, i32* @ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED, align 4
  %39 = call i32 @ECerr(i32 %37, i32 %38)
  store i32 0, i32* %3, align 4
  br label %51

40:                                               ; preds = %29
  %41 = load i32*, i32** %5, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %43, %40
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %36, %8
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @EC_METHOD_get_field_type(i32) #1

declare dso_local i32 @EC_GROUP_method_of(%struct.TYPE_4__*) #1

declare dso_local i32 @ECerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
