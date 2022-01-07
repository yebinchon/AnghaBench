; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-mpi-openssl.c_pgp_elgamal_encrypt.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-mpi-openssl.c_pgp_elgamal_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32*, i32* }

@PXE_PGP_MATH_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgp_elgamal_encrypt(%struct.TYPE_7__* %0, i32* %1, i32** %2, i32** %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32** %3, i32*** %8, align 8
  %20 = load i32, i32* @PXE_PGP_MATH_FAILED, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32* @mpi_to_bn(i32* %21)
  store i32* %22, i32** %11, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32* @mpi_to_bn(i32* %27)
  store i32* %28, i32** %12, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32* @mpi_to_bn(i32* %33)
  store i32* %34, i32** %13, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32* @mpi_to_bn(i32* %39)
  store i32* %40, i32** %14, align 8
  %41 = call i32* (...) @BN_new()
  store i32* %41, i32** %15, align 8
  %42 = call i32* (...) @BN_new()
  store i32* %42, i32** %16, align 8
  %43 = call i32* (...) @BN_new()
  store i32* %43, i32** %17, align 8
  %44 = call i32* (...) @BN_new()
  store i32* %44, i32** %18, align 8
  %45 = call i32* (...) @BN_CTX_new()
  store i32* %45, i32** %19, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %72

48:                                               ; preds = %4
  %49 = load i32*, i32** %12, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %72

51:                                               ; preds = %48
  %52 = load i32*, i32** %13, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load i32*, i32** %14, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load i32*, i32** %15, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load i32*, i32** %16, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load i32*, i32** %17, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32*, i32** %18, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32*, i32** %19, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %69, %66, %63, %60, %57, %54, %51, %48, %4
  br label %125

73:                                               ; preds = %69
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @BN_num_bits(i32* %74)
  %76 = call i32 @decide_k_bits(i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32*, i32** %15, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @BN_rand(i32* %77, i32 %78, i32 0, i32 0)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %73
  br label %125

82:                                               ; preds = %73
  %83 = load i32*, i32** %17, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = load i32*, i32** %19, align 8
  %88 = call i32 @BN_mod_exp(i32* %83, i32* %84, i32* %85, i32* %86, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %82
  br label %125

91:                                               ; preds = %82
  %92 = load i32*, i32** %16, align 8
  %93 = load i32*, i32** %14, align 8
  %94 = load i32*, i32** %15, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = load i32*, i32** %19, align 8
  %97 = call i32 @BN_mod_exp(i32* %92, i32* %93, i32* %94, i32* %95, i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %91
  br label %125

100:                                              ; preds = %91
  %101 = load i32*, i32** %18, align 8
  %102 = load i32*, i32** %11, align 8
  %103 = load i32*, i32** %16, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = load i32*, i32** %19, align 8
  %106 = call i32 @BN_mod_mul(i32* %101, i32* %102, i32* %103, i32* %104, i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %100
  br label %125

109:                                              ; preds = %100
  %110 = load i32*, i32** %17, align 8
  %111 = call i32* @bn_to_mpi(i32* %110)
  %112 = load i32**, i32*** %7, align 8
  store i32* %111, i32** %112, align 8
  %113 = load i32*, i32** %18, align 8
  %114 = call i32* @bn_to_mpi(i32* %113)
  %115 = load i32**, i32*** %8, align 8
  store i32* %114, i32** %115, align 8
  %116 = load i32**, i32*** %7, align 8
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %109
  %120 = load i32**, i32*** %8, align 8
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  store i32 0, i32* %9, align 4
  br label %124

124:                                              ; preds = %123, %119, %109
  br label %125

125:                                              ; preds = %124, %108, %99, %90, %81, %72
  %126 = load i32*, i32** %19, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32*, i32** %19, align 8
  %130 = call i32 @BN_CTX_free(i32* %129)
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32*, i32** %18, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32*, i32** %18, align 8
  %136 = call i32 @BN_clear_free(i32* %135)
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i32*, i32** %17, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32*, i32** %17, align 8
  %142 = call i32 @BN_clear_free(i32* %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load i32*, i32** %16, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32*, i32** %16, align 8
  %148 = call i32 @BN_clear_free(i32* %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32*, i32** %15, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32*, i32** %15, align 8
  %154 = call i32 @BN_clear_free(i32* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32*, i32** %14, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32*, i32** %14, align 8
  %160 = call i32 @BN_clear_free(i32* %159)
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i32*, i32** %13, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32*, i32** %13, align 8
  %166 = call i32 @BN_clear_free(i32* %165)
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i32*, i32** %12, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32*, i32** %12, align 8
  %172 = call i32 @BN_clear_free(i32* %171)
  br label %173

173:                                              ; preds = %170, %167
  %174 = load i32*, i32** %11, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32*, i32** %11, align 8
  %178 = call i32 @BN_clear_free(i32* %177)
  br label %179

179:                                              ; preds = %176, %173
  %180 = load i32, i32* %9, align 4
  ret i32 %180
}

declare dso_local i32* @mpi_to_bn(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @decide_k_bits(i32) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @BN_rand(i32*, i32, i32, i32) #1

declare dso_local i32 @BN_mod_exp(i32*, i32*, i32*, i32*, i32*) #1

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
