; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_check.c_DH_check.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_check.c_DH_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i64, i64 }

@DH_NOT_SUITABLE_GENERATOR = common dso_local global i32 0, align 4
@DH_CHECK_Q_NOT_PRIME = common dso_local global i32 0, align 4
@DH_CHECK_INVALID_Q_VALUE = common dso_local global i32 0, align 4
@DH_CHECK_INVALID_J_VALUE = common dso_local global i32 0, align 4
@DH_CHECK_P_NOT_PRIME = common dso_local global i32 0, align 4
@DH_CHECK_P_NOT_SAFE_PRIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DH_check(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @DH_check_params(%struct.TYPE_4__* %11, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %199

16:                                               ; preds = %2
  %17 = call i32* (...) @BN_CTX_new()
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %193

21:                                               ; preds = %16
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @BN_CTX_start(i32* %22)
  %24 = load i32*, i32** %8, align 8
  %25 = call i32* @BN_CTX_get(i32* %24)
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32* @BN_CTX_get(i32* %26)
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %193

31:                                               ; preds = %21
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %145

36:                                               ; preds = %31
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = call i32* (...) @BN_value_one()
  %41 = call i64 @BN_cmp(i64 %39, i32* %40)
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i32, i32* @DH_NOT_SUITABLE_GENERATOR, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  br label %88

48:                                               ; preds = %36
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @BN_cmp(i64 %51, i32* %54)
  %56 = icmp sge i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load i32, i32* @DH_NOT_SUITABLE_GENERATOR, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  br label %87

62:                                               ; preds = %48
  %63 = load i32*, i32** %9, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @BN_mod_exp(i32* %63, i64 %66, i32* %69, i32* %72, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %62
  br label %193

77:                                               ; preds = %62
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @BN_is_one(i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @DH_NOT_SUITABLE_GENERATOR, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %81, %77
  br label %87

87:                                               ; preds = %86, %57
  br label %88

88:                                               ; preds = %87, %43
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @BN_check_prime(i32* %91, i32* %92, i32* null)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %193

97:                                               ; preds = %88
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* @DH_CHECK_Q_NOT_PRIME, align 4
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %101
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %100, %97
  %106 = load i32*, i32** %9, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = call i32 @BN_div(i32* %106, i32* %107, i32* %110, i32* %113, i32* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %105
  br label %193

118:                                              ; preds = %105
  %119 = load i32*, i32** %10, align 8
  %120 = call i32 @BN_is_one(i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* @DH_CHECK_INVALID_Q_VALUE, align 4
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %123
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %122, %118
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %127
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = call i64 @BN_cmp(i64 %135, i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %132
  %140 = load i32, i32* @DH_CHECK_INVALID_J_VALUE, align 4
  %141 = load i32*, i32** %5, align 8
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %140
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %139, %132, %127
  br label %145

145:                                              ; preds = %144, %31
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i32*, i32** %8, align 8
  %150 = call i32 @BN_check_prime(i32* %148, i32* %149, i32* null)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  br label %193

154:                                              ; preds = %145
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* @DH_CHECK_P_NOT_PRIME, align 4
  %159 = load i32*, i32** %5, align 8
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %158
  store i32 %161, i32* %159, align 4
  br label %192

162:                                              ; preds = %154
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %191, label %167

167:                                              ; preds = %162
  %168 = load i32*, i32** %9, align 8
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @BN_rshift1(i32* %168, i32* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %167
  br label %193

175:                                              ; preds = %167
  %176 = load i32*, i32** %9, align 8
  %177 = load i32*, i32** %8, align 8
  %178 = call i32 @BN_check_prime(i32* %176, i32* %177, i32* null)
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* %7, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  br label %193

182:                                              ; preds = %175
  %183 = load i32, i32* %7, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* @DH_CHECK_P_NOT_SAFE_PRIME, align 4
  %187 = load i32*, i32** %5, align 8
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %186
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %185, %182
  br label %191

191:                                              ; preds = %190, %162
  br label %192

192:                                              ; preds = %191, %157
  store i32 1, i32* %6, align 4
  br label %193

193:                                              ; preds = %192, %181, %174, %153, %117, %96, %76, %30, %20
  %194 = load i32*, i32** %8, align 8
  %195 = call i32 @BN_CTX_end(i32* %194)
  %196 = load i32*, i32** %8, align 8
  %197 = call i32 @BN_CTX_free(i32* %196)
  %198 = load i32, i32* %6, align 4
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %193, %15
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i32 @DH_check_params(%struct.TYPE_4__*, i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i64 @BN_cmp(i64, i32*) #1

declare dso_local i32* @BN_value_one(...) #1

declare dso_local i32 @BN_mod_exp(i32*, i64, i32*, i32*, i32*) #1

declare dso_local i32 @BN_is_one(i32*) #1

declare dso_local i32 @BN_check_prime(i32*, i32*, i32*) #1

declare dso_local i32 @BN_div(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_rshift1(i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
