; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-mpi-internal.c_pgp_elgamal_encrypt.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-mpi-internal.c_pgp_elgamal_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32*, i32* }

@PXE_PGP_MATH_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgp_elgamal_encrypt(%struct.TYPE_7__* %0, i32* %1, i32** %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  %20 = load i32, i32* @PXE_PGP_MATH_FAILED, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = call i32* @mpi_to_bn(i32* %21)
  store i32* %22, i32** %12, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32* @mpi_to_bn(i32* %27)
  store i32* %28, i32** %13, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32* @mpi_to_bn(i32* %33)
  store i32* %34, i32** %14, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32* @mpi_to_bn(i32* %39)
  store i32* %40, i32** %15, align 8
  %41 = call i32* (...) @mp_new()
  store i32* %41, i32** %16, align 8
  %42 = call i32* (...) @mp_new()
  store i32* %42, i32** %17, align 8
  %43 = call i32* (...) @mp_new()
  store i32* %43, i32** %18, align 8
  %44 = call i32* (...) @mp_new()
  store i32* %44, i32** %19, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %68

47:                                               ; preds = %4
  %48 = load i32*, i32** %13, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = load i32*, i32** %14, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = load i32*, i32** %15, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load i32*, i32** %16, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i32*, i32** %17, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32*, i32** %18, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32*, i32** %19, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %65, %62, %59, %56, %53, %50, %47, %4
  br label %111

69:                                               ; preds = %65
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 @mp_int_count_bits(i32* %70)
  %72 = call i32 @decide_k_bits(i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32*, i32** %16, align 8
  %75 = call i32 @mp_px_rand(i32 %73, i32* %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %5, align 4
  br label %129

80:                                               ; preds = %69
  %81 = load i32*, i32** %14, align 8
  %82 = load i32*, i32** %16, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = load i32*, i32** %18, align 8
  %85 = call i32 @mp_int_exptmod(i32* %81, i32* %82, i32* %83, i32* %84)
  %86 = load i32*, i32** %15, align 8
  %87 = load i32*, i32** %16, align 8
  %88 = load i32*, i32** %13, align 8
  %89 = load i32*, i32** %17, align 8
  %90 = call i32 @mp_int_exptmod(i32* %86, i32* %87, i32* %88, i32* %89)
  %91 = load i32*, i32** %12, align 8
  %92 = load i32*, i32** %17, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = load i32*, i32** %19, align 8
  %95 = call i32 @mp_modmul(i32* %91, i32* %92, i32* %93, i32* %94)
  %96 = load i32*, i32** %18, align 8
  %97 = call i32* @bn_to_mpi(i32* %96)
  %98 = load i32**, i32*** %8, align 8
  store i32* %97, i32** %98, align 8
  %99 = load i32*, i32** %19, align 8
  %100 = call i32* @bn_to_mpi(i32* %99)
  %101 = load i32**, i32*** %9, align 8
  store i32* %100, i32** %101, align 8
  %102 = load i32**, i32*** %8, align 8
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %80
  %106 = load i32**, i32*** %9, align 8
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i32 0, i32* %10, align 4
  br label %110

110:                                              ; preds = %109, %105, %80
  br label %111

111:                                              ; preds = %110, %68
  %112 = load i32*, i32** %19, align 8
  %113 = call i32 @mp_clear_free(i32* %112)
  %114 = load i32*, i32** %18, align 8
  %115 = call i32 @mp_clear_free(i32* %114)
  %116 = load i32*, i32** %17, align 8
  %117 = call i32 @mp_clear_free(i32* %116)
  %118 = load i32*, i32** %16, align 8
  %119 = call i32 @mp_clear_free(i32* %118)
  %120 = load i32*, i32** %15, align 8
  %121 = call i32 @mp_clear_free(i32* %120)
  %122 = load i32*, i32** %14, align 8
  %123 = call i32 @mp_clear_free(i32* %122)
  %124 = load i32*, i32** %13, align 8
  %125 = call i32 @mp_clear_free(i32* %124)
  %126 = load i32*, i32** %12, align 8
  %127 = call i32 @mp_clear_free(i32* %126)
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %5, align 4
  br label %129

129:                                              ; preds = %111, %78
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32* @mpi_to_bn(i32*) #1

declare dso_local i32* @mp_new(...) #1

declare dso_local i32 @decide_k_bits(i32) #1

declare dso_local i32 @mp_int_count_bits(i32*) #1

declare dso_local i32 @mp_px_rand(i32, i32*) #1

declare dso_local i32 @mp_int_exptmod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mp_modmul(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @bn_to_mpi(i32*) #1

declare dso_local i32 @mp_clear_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
