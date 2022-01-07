; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_rfc7919.c_DH_get_nid.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_rfc7919.c_DH_get_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32 }

@NID_undef = common dso_local global i32 0, align 4
@_bignum_ffdhe2048_p = common dso_local global i32 0, align 4
@NID_ffdhe2048 = common dso_local global i32 0, align 4
@_bignum_ffdhe3072_p = common dso_local global i32 0, align 4
@NID_ffdhe3072 = common dso_local global i32 0, align 4
@_bignum_ffdhe4096_p = common dso_local global i32 0, align 4
@NID_ffdhe4096 = common dso_local global i32 0, align 4
@_bignum_ffdhe6144_p = common dso_local global i32 0, align 4
@NID_ffdhe6144 = common dso_local global i32 0, align 4
@_bignum_ffdhe8192_p = common dso_local global i32 0, align 4
@NID_ffdhe8192 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DH_get_nid(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @BN_get_word(i32 %8)
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @NID_undef, align 4
  store i32 %12, i32* %2, align 4
  br label %90

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @BN_cmp(i32* %16, i32* @_bignum_ffdhe2048_p)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @NID_ffdhe2048, align 4
  store i32 %20, i32* %4, align 4
  br label %59

21:                                               ; preds = %13
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @BN_cmp(i32* %24, i32* @_bignum_ffdhe3072_p)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @NID_ffdhe3072, align 4
  store i32 %28, i32* %4, align 4
  br label %58

29:                                               ; preds = %21
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @BN_cmp(i32* %32, i32* @_bignum_ffdhe4096_p)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @NID_ffdhe4096, align 4
  store i32 %36, i32* %4, align 4
  br label %57

37:                                               ; preds = %29
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @BN_cmp(i32* %40, i32* @_bignum_ffdhe6144_p)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @NID_ffdhe6144, align 4
  store i32 %44, i32* %4, align 4
  br label %56

45:                                               ; preds = %37
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @BN_cmp(i32* %48, i32* @_bignum_ffdhe8192_p)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @NID_ffdhe8192, align 4
  store i32 %52, i32* %4, align 4
  br label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @NID_undef, align 4
  store i32 %54, i32* %2, align 4
  br label %90

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55, %43
  br label %57

57:                                               ; preds = %56, %35
  br label %58

58:                                               ; preds = %57, %27
  br label %59

59:                                               ; preds = %58, %19
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %88

64:                                               ; preds = %59
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32* @BN_dup(i32* %67)
  store i32* %68, i32** %5, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %83, label %71

71:                                               ; preds = %64
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @BN_rshift1(i32* %72, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @BN_cmp(i32* %79, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %76, %71, %64
  %84 = load i32, i32* @NID_undef, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %76
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @BN_free(i32* %86)
  br label %88

88:                                               ; preds = %85, %59
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %53, %11
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @BN_get_word(i32) #1

declare dso_local i32 @BN_cmp(i32*, i32*) #1

declare dso_local i32* @BN_dup(i32*) #1

declare dso_local i32 @BN_rshift1(i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
