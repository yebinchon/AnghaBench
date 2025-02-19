; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_key.c_ec_key_simple_generate_key.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_key.c_ec_key_simple_generate_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_key_simple_generate_key(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %7, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32* @BN_CTX_secure_new_ex(i32 %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %84

19:                                               ; preds = %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = call i32* (...) @BN_secure_new()
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %84

29:                                               ; preds = %24
  br label %34

30:                                               ; preds = %19
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %4, align 8
  br label %34

34:                                               ; preds = %30, %29
  %35 = load i32*, i32** %7, align 8
  %36 = call i32* @EC_GROUP_get0_order(i32* %35)
  store i32* %36, i32** %5, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %84

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %49, %40
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @BN_priv_rand_range_ex(i32* %42, i32* %43, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %84

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48
  %50 = load i32*, i32** %4, align 8
  %51 = call i64 @BN_is_zero(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %41, label %53

53:                                               ; preds = %49
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i32*, i32** %7, align 8
  %60 = call i32* @EC_POINT_new(i32* %59)
  store i32* %60, i32** %6, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %84

64:                                               ; preds = %58
  br label %69

65:                                               ; preds = %53
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %6, align 8
  br label %69

69:                                               ; preds = %65, %64
  %70 = load i32*, i32** %7, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @EC_POINT_mul(i32* %70, i32* %71, i32* %72, i32* null, i32* null, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  br label %84

77:                                               ; preds = %69
  %78 = load i32*, i32** %4, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store i32* %78, i32** %80, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32* %81, i32** %83, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %6, align 8
  store i32 1, i32* %3, align 4
  br label %84

84:                                               ; preds = %77, %76, %63, %47, %39, %28, %18
  %85 = load i32, i32* %3, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %84
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @BN_clear(i32* %90)
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %87
  %97 = load i32*, i32** %7, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @EC_POINT_set_to_infinity(i32* %97, i32* %100)
  br label %102

102:                                              ; preds = %96, %87
  br label %103

103:                                              ; preds = %102, %84
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @EC_POINT_free(i32* %104)
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 @BN_clear_free(i32* %106)
  %108 = load i32*, i32** %8, align 8
  %109 = call i32 @BN_CTX_free(i32* %108)
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32* @BN_CTX_secure_new_ex(i32) #1

declare dso_local i32* @BN_secure_new(...) #1

declare dso_local i32* @EC_GROUP_get0_order(i32*) #1

declare dso_local i32 @BN_priv_rand_range_ex(i32*, i32*, i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32 @EC_POINT_mul(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_clear(i32*) #1

declare dso_local i32 @EC_POINT_set_to_infinity(i32*, i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @BN_clear_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
