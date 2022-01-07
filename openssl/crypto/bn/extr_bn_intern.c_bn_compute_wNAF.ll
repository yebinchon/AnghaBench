; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_intern.c_bn_compute_wNAF.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_intern.c_bn_compute_wNAF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i64 }

@BN_F_BN_COMPUTE_WNAF = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bn_compute_wNAF(%struct.TYPE_7__* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i8* null, i8** %9, align 8
  store i32 1, i32* %10, align 4
  store i64 0, i64* %14, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = call i64 @BN_is_zero(%struct.TYPE_7__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %3
  %21 = call i8* @OPENSSL_malloc(i64 1)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* @BN_F_BN_COMPUTE_WNAF, align 4
  %26 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %27 = call i32 @BNerr(i32 %25, i32 %26)
  br label %207

28:                                               ; preds = %20
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  store i8 0, i8* %30, align 1
  %31 = load i64*, i64** %7, align 8
  store i64 1, i64* %31, align 8
  %32 = load i8*, i8** %9, align 8
  store i8* %32, i8** %4, align 8
  br label %210

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = icmp sgt i32 %37, 7
  br i1 %38, label %39, label %43

39:                                               ; preds = %36, %33
  %40 = load i32, i32* @BN_F_BN_COMPUTE_WNAF, align 4
  %41 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %42 = call i32 @BNerr(i32 %40, i32 %41)
  br label %207

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = shl i32 1, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = shl i32 %46, 1
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = call i64 @BN_is_negative(%struct.TYPE_7__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 -1, i32* %10, align 4
  br label %54

54:                                               ; preds = %53, %43
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59, %54
  %65 = load i32, i32* @BN_F_BN_COMPUTE_WNAF, align 4
  %66 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %67 = call i32 @BNerr(i32 %65, i32 %66)
  br label %207

68:                                               ; preds = %59
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = call i64 @BN_num_bits(%struct.TYPE_7__* %69)
  store i64 %70, i64* %14, align 8
  %71 = load i64, i64* %14, align 8
  %72 = add i64 %71, 1
  %73 = call i8* @OPENSSL_malloc(i64 %72)
  store i8* %73, i8** %9, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load i32, i32* @BN_F_BN_COMPUTE_WNAF, align 4
  %78 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %79 = call i32 @BNerr(i32 %77, i32 %78)
  br label %207

80:                                               ; preds = %68
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %13, align 4
  %87 = and i32 %85, %86
  store i32 %87, i32* %8, align 4
  store i64 0, i64* %15, align 8
  br label %88

88:                                               ; preds = %193, %80
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %88
  %92 = load i64, i64* %15, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = add i64 %92, %94
  %96 = add i64 %95, 1
  %97 = load i64, i64* %14, align 8
  %98 = icmp ult i64 %96, %97
  br label %99

99:                                               ; preds = %91, %88
  %100 = phi i1 [ true, %88 ], [ %98, %91 ]
  br i1 %100, label %101, label %194

101:                                              ; preds = %99
  store i32 0, i32* %16, align 4
  %102 = load i32, i32* %8, align 4
  %103 = and i32 %102, 1
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %165

105:                                              ; preds = %101
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %11, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %105
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %12, align 4
  %113 = sub nsw i32 %111, %112
  store i32 %113, i32* %16, align 4
  %114 = load i64, i64* %15, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = add i64 %114, %116
  %118 = add i64 %117, 1
  %119 = load i64, i64* %14, align 8
  %120 = icmp uge i64 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %110
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %13, align 4
  %124 = ashr i32 %123, 1
  %125 = and i32 %122, %124
  store i32 %125, i32* %16, align 4
  br label %126

126:                                              ; preds = %121, %110
  br label %129

127:                                              ; preds = %105
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %16, align 4
  br label %129

129:                                              ; preds = %127, %126
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %11, align 4
  %132 = sub nsw i32 0, %131
  %133 = icmp sle i32 %130, %132
  br i1 %133, label %142, label %134

134:                                              ; preds = %129
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %11, align 4
  %137 = icmp sge i32 %135, %136
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %16, align 4
  %140 = and i32 %139, 1
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %138, %134, %129
  %143 = load i32, i32* @BN_F_BN_COMPUTE_WNAF, align 4
  %144 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %145 = call i32 @BNerr(i32 %143, i32 %144)
  br label %207

146:                                              ; preds = %138
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %8, align 4
  %149 = sub nsw i32 %148, %147
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %146
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %152
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i32, i32* @BN_F_BN_COMPUTE_WNAF, align 4
  %162 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %163 = call i32 @BNerr(i32 %161, i32 %162)
  br label %207

164:                                              ; preds = %156, %152, %146
  br label %165

165:                                              ; preds = %164, %101
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %16, align 4
  %168 = mul nsw i32 %166, %167
  %169 = trunc i32 %168 to i8
  %170 = load i8*, i8** %9, align 8
  %171 = load i64, i64* %15, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %15, align 8
  %173 = getelementptr inbounds i8, i8* %170, i64 %171
  store i8 %169, i8* %173, align 1
  %174 = load i32, i32* %8, align 4
  %175 = ashr i32 %174, 1
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %178 = load i64, i64* %15, align 8
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = add i64 %178, %180
  %182 = call i32 @BN_is_bit_set(%struct.TYPE_7__* %177, i64 %181)
  %183 = mul nsw i32 %176, %182
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %12, align 4
  %188 = icmp sgt i32 %186, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %165
  %190 = load i32, i32* @BN_F_BN_COMPUTE_WNAF, align 4
  %191 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %192 = call i32 @BNerr(i32 %190, i32 %191)
  br label %207

193:                                              ; preds = %165
  br label %88

194:                                              ; preds = %99
  %195 = load i64, i64* %15, align 8
  %196 = load i64, i64* %14, align 8
  %197 = add i64 %196, 1
  %198 = icmp ugt i64 %195, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load i32, i32* @BN_F_BN_COMPUTE_WNAF, align 4
  %201 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %202 = call i32 @BNerr(i32 %200, i32 %201)
  br label %207

203:                                              ; preds = %194
  %204 = load i64, i64* %15, align 8
  %205 = load i64*, i64** %7, align 8
  store i64 %204, i64* %205, align 8
  %206 = load i8*, i8** %9, align 8
  store i8* %206, i8** %4, align 8
  br label %210

207:                                              ; preds = %199, %189, %160, %142, %76, %64, %39, %24
  %208 = load i8*, i8** %9, align 8
  %209 = call i32 @OPENSSL_free(i8* %208)
  store i8* null, i8** %4, align 8
  br label %210

210:                                              ; preds = %207, %203, %28
  %211 = load i8*, i8** %4, align 8
  ret i8* %211
}

declare dso_local i64 @BN_is_zero(%struct.TYPE_7__*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i64 @BN_is_negative(%struct.TYPE_7__*) #1

declare dso_local i64 @BN_num_bits(%struct.TYPE_7__*) #1

declare dso_local i32 @BN_is_bit_set(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
