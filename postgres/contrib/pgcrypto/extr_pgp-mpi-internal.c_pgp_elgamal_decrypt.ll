; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-mpi-internal.c_pgp_elgamal_decrypt.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-mpi-internal.c_pgp_elgamal_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@PXE_PGP_MATH_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgp_elgamal_decrypt(%struct.TYPE_11__* %0, i32* %1, i32* %2, i32** %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32** %3, i32*** %8, align 8
  %17 = load i32, i32* @PXE_PGP_MATH_FAILED, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @mpi_to_bn(i32* %18)
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32* @mpi_to_bn(i32* %20)
  store i32* %21, i32** %11, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32* @mpi_to_bn(i32* %26)
  store i32* %27, i32** %12, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32* @mpi_to_bn(i32* %32)
  store i32* %33, i32** %13, align 8
  %34 = call i32* (...) @mp_new()
  store i32* %34, i32** %14, align 8
  %35 = call i32* (...) @mp_new()
  store i32* %35, i32** %15, align 8
  %36 = call i32* (...) @mp_new()
  store i32* %36, i32** %16, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %57

39:                                               ; preds = %4
  %40 = load i32*, i32** %11, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load i32*, i32** %12, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %42
  %46 = load i32*, i32** %13, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i32*, i32** %14, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32*, i32** %15, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32*, i32** %16, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %54, %51, %48, %45, %42, %39, %4
  br label %81

58:                                               ; preds = %54
  %59 = load i32*, i32** %10, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = call i32 @mp_int_exptmod(i32* %59, i32* %60, i32* %61, i32* %62)
  %64 = load i32*, i32** %14, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = call i32 @mp_int_invmod(i32* %64, i32* %65, i32* %66)
  %68 = load i32*, i32** %11, align 8
  %69 = load i32*, i32** %15, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = load i32*, i32** %16, align 8
  %72 = call i32 @mp_modmul(i32* %68, i32* %69, i32* %70, i32* %71)
  %73 = load i32*, i32** %16, align 8
  %74 = call i32* @bn_to_mpi(i32* %73)
  %75 = load i32**, i32*** %8, align 8
  store i32* %74, i32** %75, align 8
  %76 = load i32**, i32*** %8, align 8
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %79, %58
  br label %81

81:                                               ; preds = %80, %57
  %82 = load i32*, i32** %16, align 8
  %83 = call i32 @mp_clear_free(i32* %82)
  %84 = load i32*, i32** %15, align 8
  %85 = call i32 @mp_clear_free(i32* %84)
  %86 = load i32*, i32** %14, align 8
  %87 = call i32 @mp_clear_free(i32* %86)
  %88 = load i32*, i32** %13, align 8
  %89 = call i32 @mp_clear_free(i32* %88)
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @mp_clear_free(i32* %90)
  %92 = load i32*, i32** %11, align 8
  %93 = call i32 @mp_clear_free(i32* %92)
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @mp_clear_free(i32* %94)
  %96 = load i32, i32* %9, align 4
  ret i32 %96
}

declare dso_local i32* @mpi_to_bn(i32*) #1

declare dso_local i32* @mp_new(...) #1

declare dso_local i32 @mp_int_exptmod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mp_int_invmod(i32*, i32*, i32*) #1

declare dso_local i32 @mp_modmul(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @bn_to_mpi(i32*) #1

declare dso_local i32 @mp_clear_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
