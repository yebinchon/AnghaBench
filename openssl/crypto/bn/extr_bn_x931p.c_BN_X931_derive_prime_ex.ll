; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_x931p.c_BN_X931_derive_prime_ex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_x931p.c_BN_X931_derive_prime_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_X931_derive_prime_ex(%struct.TYPE_37__* %0, %struct.TYPE_37__* %1, %struct.TYPE_37__* %2, %struct.TYPE_37__* %3, %struct.TYPE_37__* %4, %struct.TYPE_37__* %5, %struct.TYPE_37__* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_37__*, align 8
  %12 = alloca %struct.TYPE_37__*, align 8
  %13 = alloca %struct.TYPE_37__*, align 8
  %14 = alloca %struct.TYPE_37__*, align 8
  %15 = alloca %struct.TYPE_37__*, align 8
  %16 = alloca %struct.TYPE_37__*, align 8
  %17 = alloca %struct.TYPE_37__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_37__*, align 8
  %22 = alloca %struct.TYPE_37__*, align 8
  %23 = alloca %struct.TYPE_37__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %11, align 8
  store %struct.TYPE_37__* %1, %struct.TYPE_37__** %12, align 8
  store %struct.TYPE_37__* %2, %struct.TYPE_37__** %13, align 8
  store %struct.TYPE_37__* %3, %struct.TYPE_37__** %14, align 8
  store %struct.TYPE_37__* %4, %struct.TYPE_37__** %15, align 8
  store %struct.TYPE_37__* %5, %struct.TYPE_37__** %16, align 8
  store %struct.TYPE_37__* %6, %struct.TYPE_37__** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32 0, i32* %20, align 4
  %26 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %27 = call i32 @BN_is_odd(%struct.TYPE_37__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %9
  store i32 0, i32* %10, align 4
  br label %201

30:                                               ; preds = %9
  %31 = load i32*, i32** %18, align 8
  %32 = call i32 @BN_CTX_start(i32* %31)
  %33 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %34 = icmp eq %struct.TYPE_37__* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32*, i32** %18, align 8
  %37 = call %struct.TYPE_37__* @BN_CTX_get(i32* %36)
  store %struct.TYPE_37__* %37, %struct.TYPE_37__** %12, align 8
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %40 = icmp eq %struct.TYPE_37__* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32*, i32** %18, align 8
  %43 = call %struct.TYPE_37__* @BN_CTX_get(i32* %42)
  store %struct.TYPE_37__* %43, %struct.TYPE_37__** %13, align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32*, i32** %18, align 8
  %46 = call %struct.TYPE_37__* @BN_CTX_get(i32* %45)
  store %struct.TYPE_37__* %46, %struct.TYPE_37__** %21, align 8
  %47 = load i32*, i32** %18, align 8
  %48 = call %struct.TYPE_37__* @BN_CTX_get(i32* %47)
  store %struct.TYPE_37__* %48, %struct.TYPE_37__** %22, align 8
  %49 = load i32*, i32** %18, align 8
  %50 = call %struct.TYPE_37__* @BN_CTX_get(i32* %49)
  store %struct.TYPE_37__* %50, %struct.TYPE_37__** %23, align 8
  %51 = load %struct.TYPE_37__*, %struct.TYPE_37__** %23, align 8
  %52 = icmp eq %struct.TYPE_37__* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %197

54:                                               ; preds = %44
  %55 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %56 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %57 = load i32*, i32** %18, align 8
  %58 = load i32*, i32** %19, align 8
  %59 = call i32 @bn_x931_derive_pi(%struct.TYPE_37__* %55, %struct.TYPE_37__* %56, i32* %57, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %197

62:                                               ; preds = %54
  %63 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %64 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %65 = load i32*, i32** %18, align 8
  %66 = load i32*, i32** %19, align 8
  %67 = call i32 @bn_x931_derive_pi(%struct.TYPE_37__* %63, %struct.TYPE_37__* %64, i32* %65, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %62
  br label %197

70:                                               ; preds = %62
  %71 = load %struct.TYPE_37__*, %struct.TYPE_37__** %22, align 8
  %72 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %73 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %74 = load i32*, i32** %18, align 8
  %75 = call i32 @BN_mul(%struct.TYPE_37__* %71, %struct.TYPE_37__* %72, %struct.TYPE_37__* %73, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  br label %197

78:                                               ; preds = %70
  %79 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %80 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %81 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %82 = load i32*, i32** %18, align 8
  %83 = call i32 @BN_mod_inverse(%struct.TYPE_37__* %79, %struct.TYPE_37__* %80, %struct.TYPE_37__* %81, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %78
  br label %197

86:                                               ; preds = %78
  %87 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %88 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %89 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %90 = load i32*, i32** %18, align 8
  %91 = call i32 @BN_mul(%struct.TYPE_37__* %87, %struct.TYPE_37__* %88, %struct.TYPE_37__* %89, i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  br label %197

94:                                               ; preds = %86
  %95 = load %struct.TYPE_37__*, %struct.TYPE_37__** %21, align 8
  %96 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %97 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %98 = load i32*, i32** %18, align 8
  %99 = call i32 @BN_mod_inverse(%struct.TYPE_37__* %95, %struct.TYPE_37__* %96, %struct.TYPE_37__* %97, i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %94
  br label %197

102:                                              ; preds = %94
  %103 = load %struct.TYPE_37__*, %struct.TYPE_37__** %21, align 8
  %104 = load %struct.TYPE_37__*, %struct.TYPE_37__** %21, align 8
  %105 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %106 = load i32*, i32** %18, align 8
  %107 = call i32 @BN_mul(%struct.TYPE_37__* %103, %struct.TYPE_37__* %104, %struct.TYPE_37__* %105, i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %102
  br label %197

110:                                              ; preds = %102
  %111 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %112 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %113 = load %struct.TYPE_37__*, %struct.TYPE_37__** %21, align 8
  %114 = call i32 @BN_sub(%struct.TYPE_37__* %111, %struct.TYPE_37__* %112, %struct.TYPE_37__* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %110
  br label %197

117:                                              ; preds = %110
  %118 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %124 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %125 = load %struct.TYPE_37__*, %struct.TYPE_37__** %22, align 8
  %126 = call i32 @BN_add(%struct.TYPE_37__* %123, %struct.TYPE_37__* %124, %struct.TYPE_37__* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %122
  br label %197

129:                                              ; preds = %122, %117
  %130 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %131 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %132 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %133 = load %struct.TYPE_37__*, %struct.TYPE_37__** %22, align 8
  %134 = load i32*, i32** %18, align 8
  %135 = call i32 @BN_mod_sub(%struct.TYPE_37__* %130, %struct.TYPE_37__* %131, %struct.TYPE_37__* %132, %struct.TYPE_37__* %133, i32* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %129
  br label %197

138:                                              ; preds = %129
  %139 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %140 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %141 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %142 = call i32 @BN_add(%struct.TYPE_37__* %139, %struct.TYPE_37__* %140, %struct.TYPE_37__* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %138
  br label %197

145:                                              ; preds = %138
  br label %146

146:                                              ; preds = %193, %145
  store i32 1, i32* %24, align 4
  %147 = load i32*, i32** %19, align 8
  %148 = load i32, i32* %24, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %24, align 4
  %150 = call i32 @BN_GENCB_call(i32* %147, i32 0, i32 %148)
  %151 = load %struct.TYPE_37__*, %struct.TYPE_37__** %23, align 8
  %152 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %153 = call i32 @BN_copy(%struct.TYPE_37__* %151, %struct.TYPE_37__* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %146
  br label %197

156:                                              ; preds = %146
  %157 = load %struct.TYPE_37__*, %struct.TYPE_37__** %23, align 8
  %158 = call i32 @BN_sub_word(%struct.TYPE_37__* %157, i32 1)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %156
  br label %197

161:                                              ; preds = %156
  %162 = load %struct.TYPE_37__*, %struct.TYPE_37__** %21, align 8
  %163 = load %struct.TYPE_37__*, %struct.TYPE_37__** %23, align 8
  %164 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %165 = load i32*, i32** %18, align 8
  %166 = call i32 @BN_gcd(%struct.TYPE_37__* %162, %struct.TYPE_37__* %163, %struct.TYPE_37__* %164, i32* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %161
  br label %197

169:                                              ; preds = %161
  %170 = load %struct.TYPE_37__*, %struct.TYPE_37__** %21, align 8
  %171 = call i64 @BN_is_one(%struct.TYPE_37__* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %169
  %174 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %175 = load i32*, i32** %18, align 8
  %176 = load i32*, i32** %19, align 8
  %177 = call i32 @BN_check_prime(%struct.TYPE_37__* %174, i32* %175, i32* %176)
  store i32 %177, i32* %25, align 4
  %178 = load i32, i32* %25, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  br label %197

181:                                              ; preds = %173
  %182 = load i32, i32* %25, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  br label %194

185:                                              ; preds = %181
  br label %186

186:                                              ; preds = %185, %169
  %187 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %188 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %189 = load %struct.TYPE_37__*, %struct.TYPE_37__** %22, align 8
  %190 = call i32 @BN_add(%struct.TYPE_37__* %187, %struct.TYPE_37__* %188, %struct.TYPE_37__* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %186
  br label %197

193:                                              ; preds = %186
  br label %146

194:                                              ; preds = %184
  %195 = load i32*, i32** %19, align 8
  %196 = call i32 @BN_GENCB_call(i32* %195, i32 3, i32 0)
  store i32 1, i32* %20, align 4
  br label %197

197:                                              ; preds = %194, %192, %180, %168, %160, %155, %144, %137, %128, %116, %109, %101, %93, %85, %77, %69, %61, %53
  %198 = load i32*, i32** %18, align 8
  %199 = call i32 @BN_CTX_end(i32* %198)
  %200 = load i32, i32* %20, align 4
  store i32 %200, i32* %10, align 4
  br label %201

201:                                              ; preds = %197, %29
  %202 = load i32, i32* %10, align 4
  ret i32 %202
}

declare dso_local i32 @BN_is_odd(%struct.TYPE_37__*) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local %struct.TYPE_37__* @BN_CTX_get(i32*) #1

declare dso_local i32 @bn_x931_derive_pi(%struct.TYPE_37__*, %struct.TYPE_37__*, i32*, i32*) #1

declare dso_local i32 @BN_mul(%struct.TYPE_37__*, %struct.TYPE_37__*, %struct.TYPE_37__*, i32*) #1

declare dso_local i32 @BN_mod_inverse(%struct.TYPE_37__*, %struct.TYPE_37__*, %struct.TYPE_37__*, i32*) #1

declare dso_local i32 @BN_sub(%struct.TYPE_37__*, %struct.TYPE_37__*, %struct.TYPE_37__*) #1

declare dso_local i32 @BN_add(%struct.TYPE_37__*, %struct.TYPE_37__*, %struct.TYPE_37__*) #1

declare dso_local i32 @BN_mod_sub(%struct.TYPE_37__*, %struct.TYPE_37__*, %struct.TYPE_37__*, %struct.TYPE_37__*, i32*) #1

declare dso_local i32 @BN_GENCB_call(i32*, i32, i32) #1

declare dso_local i32 @BN_copy(%struct.TYPE_37__*, %struct.TYPE_37__*) #1

declare dso_local i32 @BN_sub_word(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @BN_gcd(%struct.TYPE_37__*, %struct.TYPE_37__*, %struct.TYPE_37__*, i32*) #1

declare dso_local i64 @BN_is_one(%struct.TYPE_37__*) #1

declare dso_local i32 @BN_check_prime(%struct.TYPE_37__*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
