; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_pss_get_param.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_pss_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32 }

@RSA_F_RSA_PSS_GET_PARAM = common dso_local global i32 0, align 4
@RSA_R_INVALID_SALT_LENGTH = common dso_local global i32 0, align 4
@RSA_R_INVALID_TRAILER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsa_pss_get_param(%struct.TYPE_3__* %0, i32** %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = icmp eq %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %70

13:                                               ; preds = %4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @rsa_algor_to_md(i32 %16)
  %18 = load i32**, i32*** %7, align 8
  store i32* %17, i32** %18, align 8
  %19 = load i32**, i32*** %7, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %70

23:                                               ; preds = %13
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32* @rsa_algor_to_md(i32 %26)
  %28 = load i32**, i32*** %8, align 8
  store i32* %27, i32** %28, align 8
  %29 = load i32**, i32*** %8, align 8
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %70

33:                                               ; preds = %23
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @ASN1_INTEGER_get(i64 %41)
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load i32, i32* @RSA_F_RSA_PSS_GET_PARAM, align 4
  %49 = load i32, i32* @RSA_R_INVALID_SALT_LENGTH, align 4
  %50 = call i32 @RSAerr(i32 %48, i32 %49)
  store i32 0, i32* %5, align 4
  br label %70

51:                                               ; preds = %38
  br label %54

52:                                               ; preds = %33
  %53 = load i32*, i32** %9, align 8
  store i32 20, i32* %53, align 4
  br label %54

54:                                               ; preds = %52, %51
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @ASN1_INTEGER_get(i64 %62)
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* @RSA_F_RSA_PSS_GET_PARAM, align 4
  %67 = load i32, i32* @RSA_R_INVALID_TRAILER, align 4
  %68 = call i32 @RSAerr(i32 %66, i32 %67)
  store i32 0, i32* %5, align 4
  br label %70

69:                                               ; preds = %59, %54
  store i32 1, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %65, %47, %32, %22, %12
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32* @rsa_algor_to_md(i32) #1

declare dso_local i32 @ASN1_INTEGER_get(i64) #1

declare dso_local i32 @RSAerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
