; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_blind.c_BN_BLINDING_create_param.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_blind.c_BN_BLINDING_create_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32*, i32*, i32*, i32*, i32*, i32*)*, i32*, i32*, i32*, i32*, i32* }

@BN_F_BN_BLINDING_CREATE_PARAM = common dso_local global i32 0, align 4
@BN_R_TOO_MANY_ITERATIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @BN_BLINDING_create_param(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32* %3, i32 (i32*, i32*, i32*, i32*, i32*, i32*)* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32 (i32*, i32*, i32*, i32*, i32*, i32*)*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 (i32*, i32*, i32*, i32*, i32*, i32*)* %4, i32 (i32*, i32*, i32*, i32*, i32*, i32*)** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 32, i32* %14, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %15, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = icmp eq %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32*, i32** %10, align 8
  %21 = call %struct.TYPE_6__* @BN_BLINDING_new(i32* null, i32* null, i32* %20)
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %15, align 8
  br label %24

22:                                               ; preds = %6
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %15, align 8
  br label %24

24:                                               ; preds = %22, %19
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %26 = icmp eq %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %211

28:                                               ; preds = %24
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = call i8* (...) @BN_new()
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = icmp eq i32* %35, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %211

40:                                               ; preds = %33, %28
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = call i8* (...) @BN_new()
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  store i32* %47, i32** %49, align 8
  %50 = icmp eq i32* %47, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %211

52:                                               ; preds = %45, %40
  %53 = load i32*, i32** %9, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @BN_free(i32* %58)
  %60 = load i32*, i32** %9, align 8
  %61 = call i32* @BN_dup(i32* %60)
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 5
  store i32* %61, i32** %63, align 8
  br label %64

64:                                               ; preds = %55, %52
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 5
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %211

70:                                               ; preds = %64
  %71 = load i32 (i32*, i32*, i32*, i32*, i32*, i32*)*, i32 (i32*, i32*, i32*, i32*, i32*, i32*)** %12, align 8
  %72 = icmp ne i32 (i32*, i32*, i32*, i32*, i32*, i32*)* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32 (i32*, i32*, i32*, i32*, i32*, i32*)*, i32 (i32*, i32*, i32*, i32*, i32*, i32*)** %12, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 (i32*, i32*, i32*, i32*, i32*, i32*)* %74, i32 (i32*, i32*, i32*, i32*, i32*, i32*)** %76, align 8
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i32*, i32** %13, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32*, i32** %13, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  br label %84

84:                                               ; preds = %80, %77
  br label %85

85:                                               ; preds = %123, %84
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = call i32 @BN_priv_rand_range_ex(i32* %88, i32* %91, i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %85
  br label %211

96:                                               ; preds = %85
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = call i64 @int_bn_mod_inverse(i32* %99, i32* %102, i32* %105, i32* %106, i32* %16)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %96
  br label %124

110:                                              ; preds = %96
  %111 = load i32, i32* %16, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  br label %211

114:                                              ; preds = %110
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %14, align 4
  %117 = icmp eq i32 %115, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i32, i32* @BN_F_BN_BLINDING_CREATE_PARAM, align 4
  %120 = load i32, i32* @BN_R_TOO_MANY_ITERATIONS, align 4
  %121 = call i32 @BNerr(i32 %119, i32 %120)
  br label %211

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122
  br i1 true, label %85, label %124

124:                                              ; preds = %123, %109
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32 (i32*, i32*, i32*, i32*, i32*, i32*)*, i32 (i32*, i32*, i32*, i32*, i32*, i32*)** %126, align 8
  %128 = icmp ne i32 (i32*, i32*, i32*, i32*, i32*, i32*)* %127, null
  br i1 %128, label %129, label %158

129:                                              ; preds = %124
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %158

134:                                              ; preds = %129
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32 (i32*, i32*, i32*, i32*, i32*, i32*)*, i32 (i32*, i32*, i32*, i32*, i32*, i32*)** %136, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 5
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = load i32*, i32** %11, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = call i32 %137(i32* %140, i32* %143, i32* %146, i32* %149, i32* %150, i32* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %134
  br label %211

157:                                              ; preds = %134
  br label %176

158:                                              ; preds = %129, %124
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 5
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = load i32*, i32** %11, align 8
  %172 = call i32 @BN_mod_exp(i32* %161, i32* %164, i32* %167, i32* %170, i32* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %158
  br label %211

175:                                              ; preds = %158
  br label %176

176:                                              ; preds = %175, %157
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %209

181:                                              ; preds = %176
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 3
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 3
  %187 = load i32*, i32** %186, align 8
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load i32*, i32** %11, align 8
  %192 = call i32 @bn_to_mont_fixed_top(i32* %184, i32* %187, i32* %190, i32* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %207

194:                                              ; preds = %181
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load i32*, i32** %11, align 8
  %205 = call i32 @bn_to_mont_fixed_top(i32* %197, i32* %200, i32* %203, i32* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %194, %181
  br label %211

208:                                              ; preds = %194
  br label %209

209:                                              ; preds = %208, %176
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %210, %struct.TYPE_6__** %7, align 8
  br label %219

211:                                              ; preds = %207, %174, %156, %118, %113, %95, %69, %51, %39, %27
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %213 = icmp eq %struct.TYPE_6__* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %216 = call i32 @BN_BLINDING_free(%struct.TYPE_6__* %215)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %15, align 8
  br label %217

217:                                              ; preds = %214, %211
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  store %struct.TYPE_6__* %218, %struct.TYPE_6__** %7, align 8
  br label %219

219:                                              ; preds = %217, %209
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  ret %struct.TYPE_6__* %220
}

declare dso_local %struct.TYPE_6__* @BN_BLINDING_new(i32*, i32*, i32*) #1

declare dso_local i8* @BN_new(...) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32* @BN_dup(i32*) #1

declare dso_local i32 @BN_priv_rand_range_ex(i32*, i32*, i32*) #1

declare dso_local i64 @int_bn_mod_inverse(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i32 @BN_mod_exp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @bn_to_mont_fixed_top(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_BLINDING_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
