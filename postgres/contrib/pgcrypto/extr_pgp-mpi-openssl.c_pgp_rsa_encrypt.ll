; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-mpi-openssl.c_pgp_rsa_encrypt.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-mpi-openssl.c_pgp_rsa_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32* }

@PXE_PGP_MATH_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgp_rsa_encrypt(%struct.TYPE_7__* %0, i32* %1, i32** %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32** %2, i32*** %6, align 8
  %13 = load i32, i32* @PXE_PGP_MATH_FAILED, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @mpi_to_bn(i32* %14)
  store i32* %15, i32** %8, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32* @mpi_to_bn(i32* %20)
  store i32* %21, i32** %9, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32* @mpi_to_bn(i32* %26)
  store i32* %27, i32** %10, align 8
  %28 = call i32* (...) @BN_new()
  store i32* %28, i32** %11, align 8
  %29 = call i32* (...) @BN_CTX_new()
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %3
  %33 = load i32*, i32** %9, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32*, i32** %10, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32*, i32** %11, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32*, i32** %12, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %38, %35, %32, %3
  br label %63

45:                                               ; preds = %41
  %46 = load i32*, i32** %11, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = call i32 @BN_mod_exp(i32* %46, i32* %47, i32* %48, i32* %49, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  br label %63

54:                                               ; preds = %45
  %55 = load i32*, i32** %11, align 8
  %56 = call i32* @bn_to_mpi(i32* %55)
  %57 = load i32**, i32*** %6, align 8
  store i32* %56, i32** %57, align 8
  %58 = load i32**, i32*** %6, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %61, %54
  br label %63

63:                                               ; preds = %62, %53, %44
  %64 = load i32*, i32** %12, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @BN_CTX_free(i32* %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32*, i32** %11, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @BN_clear_free(i32* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32*, i32** %10, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @BN_clear_free(i32* %79)
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32*, i32** %9, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @BN_clear_free(i32* %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32*, i32** %8, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @BN_clear_free(i32* %91)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32* @mpi_to_bn(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_mod_exp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @bn_to_mpi(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @BN_clear_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
