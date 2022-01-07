; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_key.c_ec_key_public_range_check.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_key.c_ec_key_public_range_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@NID_X9_62_prime_field = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @ec_key_public_range_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_key_public_range_check(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @BN_CTX_start(i32* %9)
  %11 = load i32*, i32** %3, align 8
  %12 = call i32* @BN_CTX_get(i32* %11)
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32* @BN_CTX_get(i32* %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %85

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @EC_POINT_get_affine_coordinates(%struct.TYPE_6__* %21, i32 %24, i32* %25, i32* %26, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %18
  br label %85

31:                                               ; preds = %18
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @EC_METHOD_get_field_type(i32 %36)
  %38 = load i64, i64* @NID_X9_62_prime_field, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %31
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @BN_is_negative(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %40
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @BN_cmp(i32* %45, i32 %50)
  %52 = icmp sge i64 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %44
  %54 = load i32*, i32** %7, align 8
  %55 = call i64 @BN_is_negative(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %53
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @BN_cmp(i32* %58, i32 %63)
  %65 = icmp sge i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57, %53, %44, %40
  br label %85

67:                                               ; preds = %57
  br label %84

68:                                               ; preds = %31
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = call i32 @EC_GROUP_get_degree(%struct.TYPE_6__* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @BN_num_bits(i32* %73)
  %75 = load i32, i32* %8, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %68
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @BN_num_bits(i32* %78)
  %80 = load i32, i32* %8, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77, %68
  br label %85

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %67
  store i32 1, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %82, %66, %30, %17
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @BN_CTX_end(i32* %86)
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates(%struct.TYPE_6__*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @EC_METHOD_get_field_type(i32) #1

declare dso_local i64 @BN_is_negative(i32*) #1

declare dso_local i64 @BN_cmp(i32*, i32) #1

declare dso_local i32 @EC_GROUP_get_degree(%struct.TYPE_6__*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
