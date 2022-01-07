; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_key.c_generate_key.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_key.c_generate_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32*, i32, i32, i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32*, i32, i32*, i32, i32*, i32*)* }

@OPENSSL_DH_MAX_MODULUS_BITS = common dso_local global i32 0, align 4
@DH_F_GENERATE_KEY = common dso_local global i32 0, align 4
@DH_R_MODULUS_TOO_LARGE = common dso_local global i32 0, align 4
@DH_MIN_MODULUS_BITS = common dso_local global i32 0, align 4
@DH_R_MODULUS_TOO_SMALL = common dso_local global i32 0, align 4
@DH_FLAG_CACHE_MONT_P = common dso_local global i32 0, align 4
@BN_RAND_TOP_ONE = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ANY = common dso_local global i32 0, align 4
@DH_GENERATOR_2 = common dso_local global i32 0, align 4
@BN_FLG_CONSTTIME = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @generate_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_key(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @BN_num_bits(i32 %14)
  %16 = load i32, i32* @OPENSSL_DH_MAX_MODULUS_BITS, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @DH_F_GENERATE_KEY, align 4
  %20 = load i32, i32* @DH_R_MODULUS_TOO_LARGE, align 4
  %21 = call i32 @DHerr(i32 %19, i32 %20)
  store i32 0, i32* %2, align 4
  br label %237

22:                                               ; preds = %1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @BN_num_bits(i32 %25)
  %27 = load i32, i32* @DH_MIN_MODULUS_BITS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, i32* @DH_F_GENERATE_KEY, align 4
  %31 = load i32, i32* @DH_R_MODULUS_TOO_SMALL, align 4
  %32 = call i32 @DHerr(i32 %30, i32 %31)
  store i32 0, i32* %2, align 4
  br label %237

33:                                               ; preds = %22
  %34 = call i32* (...) @BN_CTX_new()
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %208

38:                                               ; preds = %33
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = call i32* (...) @BN_secure_new()
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %208

48:                                               ; preds = %43
  store i32 1, i32* %5, align 4
  br label %53

49:                                               ; preds = %38
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %10, align 8
  br label %53

53:                                               ; preds = %49, %48
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = call i32* (...) @BN_new()
  store i32* %59, i32** %9, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %208

63:                                               ; preds = %58
  br label %68

64:                                               ; preds = %53
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %9, align 8
  br label %68

68:                                               ; preds = %64, %63
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @DH_FLAG_CACHE_MONT_P, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %68
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 10
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = call i32* @BN_MONT_CTX_set_locked(i32* %77, i32 %80, i32 %83, i32* %84)
  store i32* %85, i32** %8, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %75
  br label %208

89:                                               ; preds = %75
  br label %90

90:                                               ; preds = %89, %68
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %164

93:                                               ; preds = %90
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %119

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %116, %98
  %100 = load i32*, i32** %10, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @BN_priv_rand_range(i32* %100, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %99
  br label %208

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107
  %109 = load i32*, i32** %10, align 8
  %110 = call i64 @BN_is_zero(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i32*, i32** %10, align 8
  %114 = call i64 @BN_is_one(i32* %113)
  %115 = icmp ne i64 %114, 0
  br label %116

116:                                              ; preds = %112, %108
  %117 = phi i1 [ true, %108 ], [ %115, %112 ]
  br i1 %117, label %99, label %118

118:                                              ; preds = %116
  br label %163

119:                                              ; preds = %93
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  br label %134

128:                                              ; preds = %119
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @BN_num_bits(i32 %131)
  %133 = sub nsw i32 %132, 1
  br label %134

134:                                              ; preds = %128, %124
  %135 = phi i32 [ %127, %124 ], [ %133, %128 ]
  store i32 %135, i32* %6, align 4
  %136 = load i32*, i32** %10, align 8
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @BN_RAND_TOP_ONE, align 4
  %139 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %140 = call i32 @BN_priv_rand(i32* %136, i32 %137, i32 %138, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %134
  br label %208

143:                                              ; preds = %134
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @DH_GENERATOR_2, align 4
  %148 = call i64 @BN_is_word(i32 %146, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %143
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @BN_is_bit_set(i32 %153, i32 2)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %150
  %157 = load i32*, i32** %10, align 8
  %158 = call i32 @BN_clear_bit(i32* %157, i32 0)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %156
  br label %208

161:                                              ; preds = %156
  br label %162

162:                                              ; preds = %161, %150, %143
  br label %163

163:                                              ; preds = %162, %118
  br label %164

164:                                              ; preds = %163, %90
  %165 = call i32* (...) @BN_new()
  store i32* %165, i32** %11, align 8
  %166 = load i32*, i32** %11, align 8
  %167 = icmp eq i32* %166, null
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  br label %208

169:                                              ; preds = %164
  %170 = load i32*, i32** %11, align 8
  %171 = load i32*, i32** %10, align 8
  %172 = load i32, i32* @BN_FLG_CONSTTIME, align 4
  %173 = call i32 @BN_with_flags(i32* %170, i32* %171, i32 %172)
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 7
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = load i32 (%struct.TYPE_6__*, i32*, i32, i32*, i32, i32*, i32*)*, i32 (%struct.TYPE_6__*, i32*, i32, i32*, i32, i32*, i32*)** %177, align 8
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %180 = load i32*, i32** %9, align 8
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = load i32*, i32** %11, align 8
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %7, align 8
  %189 = load i32*, i32** %8, align 8
  %190 = call i32 %178(%struct.TYPE_6__* %179, i32* %180, i32 %183, i32* %184, i32 %187, i32* %188, i32* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %169
  %193 = load i32*, i32** %11, align 8
  %194 = call i32 @BN_clear_free(i32* %193)
  br label %208

195:                                              ; preds = %169
  %196 = load i32*, i32** %11, align 8
  %197 = call i32 @BN_clear_free(i32* %196)
  %198 = load i32*, i32** %9, align 8
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 3
  store i32* %198, i32** %200, align 8
  %201 = load i32*, i32** %10, align 8
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 2
  store i32* %201, i32** %203, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 8
  store i32 1, i32* %4, align 4
  br label %208

208:                                              ; preds = %195, %192, %168, %160, %142, %106, %88, %62, %47, %37
  %209 = load i32, i32* %4, align 4
  %210 = icmp ne i32 %209, 1
  br i1 %210, label %211, label %215

211:                                              ; preds = %208
  %212 = load i32, i32* @DH_F_GENERATE_KEY, align 4
  %213 = load i32, i32* @ERR_R_BN_LIB, align 4
  %214 = call i32 @DHerr(i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %211, %208
  %216 = load i32*, i32** %9, align 8
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 3
  %219 = load i32*, i32** %218, align 8
  %220 = icmp ne i32* %216, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %215
  %222 = load i32*, i32** %9, align 8
  %223 = call i32 @BN_free(i32* %222)
  br label %224

224:                                              ; preds = %221, %215
  %225 = load i32*, i32** %10, align 8
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = icmp ne i32* %225, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %224
  %231 = load i32*, i32** %10, align 8
  %232 = call i32 @BN_free(i32* %231)
  br label %233

233:                                              ; preds = %230, %224
  %234 = load i32*, i32** %7, align 8
  %235 = call i32 @BN_CTX_free(i32* %234)
  %236 = load i32, i32* %4, align 4
  store i32 %236, i32* %2, align 4
  br label %237

237:                                              ; preds = %233, %29, %18
  %238 = load i32, i32* %2, align 4
  ret i32 %238
}

declare dso_local i32 @BN_num_bits(i32) #1

declare dso_local i32 @DHerr(i32, i32) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @BN_secure_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32* @BN_MONT_CTX_set_locked(i32*, i32, i32, i32*) #1

declare dso_local i32 @BN_priv_rand_range(i32*, i32) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i64 @BN_is_one(i32*) #1

declare dso_local i32 @BN_priv_rand(i32*, i32, i32, i32) #1

declare dso_local i64 @BN_is_word(i32, i32) #1

declare dso_local i32 @BN_is_bit_set(i32, i32) #1

declare dso_local i32 @BN_clear_bit(i32*, i32) #1

declare dso_local i32 @BN_with_flags(i32*, i32*, i32) #1

declare dso_local i32 @BN_clear_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
