; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_group_check_discriminant.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_group_check_discriminant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i32, i32* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32*, i32, i32*)* }

@EC_F_EC_GFP_SIMPLE_GROUP_CHECK_DISCRIMINANT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_simple_group_check_discriminant(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32* @BN_CTX_new_ex(i32 %21)
  store i32* %22, i32** %12, align 8
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i32, i32* @EC_F_EC_GFP_SIMPLE_GROUP_CHECK_DISCRIMINANT, align 4
  %27 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %28 = call i32 @ECerr(i32 %26, i32 %27)
  br label %168

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @BN_CTX_start(i32* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32* @BN_CTX_get(i32* %33)
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32* @BN_CTX_get(i32* %35)
  store i32* %36, i32** %7, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i32* @BN_CTX_get(i32* %37)
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32* @BN_CTX_get(i32* %39)
  store i32* %40, i32** %10, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i32* @BN_CTX_get(i32* %41)
  store i32* %42, i32** %8, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  br label %168

46:                                               ; preds = %30
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_7__*, i32*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32, i32*)** %50, align 8
  %52 = icmp ne i32 (%struct.TYPE_7__*, i32*, i32, i32*)* %51, null
  br i1 %52, label %53, label %84

53:                                               ; preds = %46
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32 (%struct.TYPE_7__*, i32*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32, i32*)** %57, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 %58(%struct.TYPE_7__* %59, i32* %60, i32 %63, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %53
  br label %168

68:                                               ; preds = %53
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_7__*, i32*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32, i32*)** %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 %73(%struct.TYPE_7__* %74, i32* %75, i32 %78, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %68
  br label %168

83:                                               ; preds = %68
  br label %101

84:                                               ; preds = %46
  %85 = load i32*, i32** %6, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @BN_copy(i32* %85, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  br label %168

92:                                               ; preds = %84
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @BN_copy(i32* %93, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %92
  br label %168

100:                                              ; preds = %92
  br label %101

101:                                              ; preds = %100, %83
  %102 = load i32*, i32** %6, align 8
  %103 = call i64 @BN_is_zero(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i32*, i32** %7, align 8
  %107 = call i64 @BN_is_zero(i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %168

110:                                              ; preds = %105
  br label %167

111:                                              ; preds = %101
  %112 = load i32*, i32** %7, align 8
  %113 = call i64 @BN_is_zero(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %166, label %115

115:                                              ; preds = %111
  %116 = load i32*, i32** %9, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = load i32*, i32** %11, align 8
  %119 = load i32*, i32** %4, align 8
  %120 = call i32 @BN_mod_sqr(i32* %116, i32* %117, i32* %118, i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %115
  br label %168

123:                                              ; preds = %115
  %124 = load i32*, i32** %10, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = load i32*, i32** %6, align 8
  %127 = load i32*, i32** %11, align 8
  %128 = load i32*, i32** %4, align 8
  %129 = call i32 @BN_mod_mul(i32* %124, i32* %125, i32* %126, i32* %127, i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %123
  br label %168

132:                                              ; preds = %123
  %133 = load i32*, i32** %9, align 8
  %134 = load i32*, i32** %10, align 8
  %135 = call i32 @BN_lshift(i32* %133, i32* %134, i32 2)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %132
  br label %168

138:                                              ; preds = %132
  %139 = load i32*, i32** %10, align 8
  %140 = load i32*, i32** %7, align 8
  %141 = load i32*, i32** %11, align 8
  %142 = load i32*, i32** %4, align 8
  %143 = call i32 @BN_mod_sqr(i32* %139, i32* %140, i32* %141, i32* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %138
  br label %168

146:                                              ; preds = %138
  %147 = load i32*, i32** %10, align 8
  %148 = call i32 @BN_mul_word(i32* %147, i32 27)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  br label %168

151:                                              ; preds = %146
  %152 = load i32*, i32** %6, align 8
  %153 = load i32*, i32** %9, align 8
  %154 = load i32*, i32** %10, align 8
  %155 = load i32*, i32** %11, align 8
  %156 = load i32*, i32** %4, align 8
  %157 = call i32 @BN_mod_add(i32* %152, i32* %153, i32* %154, i32* %155, i32* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %151
  br label %168

160:                                              ; preds = %151
  %161 = load i32*, i32** %6, align 8
  %162 = call i64 @BN_is_zero(i32* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  br label %168

165:                                              ; preds = %160
  br label %166

166:                                              ; preds = %165, %111
  br label %167

167:                                              ; preds = %166, %110
  store i32 1, i32* %5, align 4
  br label %168

168:                                              ; preds = %167, %164, %159, %150, %145, %137, %131, %122, %109, %99, %91, %82, %67, %45, %25
  %169 = load i32*, i32** %4, align 8
  %170 = call i32 @BN_CTX_end(i32* %169)
  %171 = load i32*, i32** %12, align 8
  %172 = call i32 @BN_CTX_free(i32* %171)
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local i32* @BN_CTX_new_ex(i32) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_copy(i32*, i32) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @BN_mod_sqr(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_mul(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_lshift(i32*, i32*, i32) #1

declare dso_local i32 @BN_mul_word(i32*, i32) #1

declare dso_local i32 @BN_mod_add(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
