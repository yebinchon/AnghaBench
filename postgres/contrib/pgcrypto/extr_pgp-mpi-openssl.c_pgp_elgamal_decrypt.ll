; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-mpi-openssl.c_pgp_elgamal_decrypt.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-mpi-openssl.c_pgp_elgamal_decrypt.c"
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
  %17 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32** %3, i32*** %8, align 8
  %18 = load i32, i32* @PXE_PGP_MATH_FAILED, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32* @mpi_to_bn(i32* %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32* @mpi_to_bn(i32* %21)
  store i32* %22, i32** %11, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32* @mpi_to_bn(i32* %27)
  store i32* %28, i32** %12, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32* @mpi_to_bn(i32* %33)
  store i32* %34, i32** %13, align 8
  %35 = call i32* (...) @BN_new()
  store i32* %35, i32** %14, align 8
  %36 = call i32* (...) @BN_new()
  store i32* %36, i32** %15, align 8
  %37 = call i32* (...) @BN_new()
  store i32* %37, i32** %16, align 8
  %38 = call i32* (...) @BN_CTX_new()
  store i32* %38, i32** %17, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %4
  %42 = load i32*, i32** %11, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %62

44:                                               ; preds = %41
  %45 = load i32*, i32** %12, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = load i32*, i32** %13, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load i32*, i32** %14, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load i32*, i32** %15, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32*, i32** %16, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32*, i32** %17, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %59, %56, %53, %50, %47, %44, %41, %4
  br label %98

63:                                               ; preds = %59
  %64 = load i32*, i32** %14, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = load i32*, i32** %17, align 8
  %69 = call i32 @BN_mod_exp(i32* %64, i32* %65, i32* %66, i32* %67, i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %98

72:                                               ; preds = %63
  %73 = load i32*, i32** %15, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = load i32*, i32** %17, align 8
  %77 = call i32 @BN_mod_inverse(i32* %73, i32* %74, i32* %75, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  br label %98

80:                                               ; preds = %72
  %81 = load i32*, i32** %16, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = load i32*, i32** %17, align 8
  %86 = call i32 @BN_mod_mul(i32* %81, i32* %82, i32* %83, i32* %84, i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %80
  br label %98

89:                                               ; preds = %80
  %90 = load i32*, i32** %16, align 8
  %91 = call i32* @bn_to_mpi(i32* %90)
  %92 = load i32**, i32*** %8, align 8
  store i32* %91, i32** %92, align 8
  %93 = load i32**, i32*** %8, align 8
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %96, %89
  br label %98

98:                                               ; preds = %97, %88, %79, %71, %62
  %99 = load i32*, i32** %17, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32*, i32** %17, align 8
  %103 = call i32 @BN_CTX_free(i32* %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32*, i32** %16, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32*, i32** %16, align 8
  %109 = call i32 @BN_clear_free(i32* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i32*, i32** %15, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32*, i32** %15, align 8
  %115 = call i32 @BN_clear_free(i32* %114)
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32*, i32** %14, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32*, i32** %14, align 8
  %121 = call i32 @BN_clear_free(i32* %120)
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32*, i32** %13, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32*, i32** %13, align 8
  %127 = call i32 @BN_clear_free(i32* %126)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i32*, i32** %12, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32*, i32** %12, align 8
  %133 = call i32 @BN_clear_free(i32* %132)
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32*, i32** %11, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32*, i32** %11, align 8
  %139 = call i32 @BN_clear_free(i32* %138)
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i32*, i32** %10, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i32*, i32** %10, align 8
  %145 = call i32 @BN_clear_free(i32* %144)
  br label %146

146:                                              ; preds = %143, %140
  %147 = load i32, i32* %9, align 4
  ret i32 %147
}

declare dso_local i32* @mpi_to_bn(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_mod_exp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_inverse(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_mul(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @bn_to_mpi(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @BN_clear_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
