; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_test_rand_drbg_prediction_resistance.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_test_rand_drbg_prediction_resistance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_rand_drbg_prediction_resistance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_rand_drbg_prediction_resistance() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca [51 x i8], align 16
  %5 = alloca [51 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %1, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = call %struct.TYPE_10__* @RAND_DRBG_new(i32 0, i32 0, %struct.TYPE_10__* null)
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %1, align 8
  %11 = call i32 @TEST_ptr(%struct.TYPE_10__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %15 = call i32 @disable_crngt(%struct.TYPE_10__* %14)
  %16 = call i32 @TEST_true(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %13
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %20 = call i32 @RAND_DRBG_instantiate(%struct.TYPE_10__* %19, i32* null, i32 0)
  %21 = call i32 @TEST_true(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %18
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %25 = call %struct.TYPE_10__* @RAND_DRBG_new(i32 0, i32 0, %struct.TYPE_10__* %24)
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %2, align 8
  %26 = call i32 @TEST_ptr(%struct.TYPE_10__* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = call i32 @RAND_DRBG_instantiate(%struct.TYPE_10__* %29, i32* null, i32 0)
  %31 = call i32 @TEST_true(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = call %struct.TYPE_10__* @RAND_DRBG_new(i32 0, i32 0, %struct.TYPE_10__* %34)
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %3, align 8
  %36 = call i32 @TEST_ptr(%struct.TYPE_10__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = call i32 @RAND_DRBG_instantiate(%struct.TYPE_10__* %39, i32* null, i32 0)
  %41 = call i32 @TEST_true(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38, %33, %28, %23, %18, %13, %0
  br label %226

44:                                               ; preds = %38
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  store i32 %48, i32* %7, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  store i32 %52, i32* %8, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = call i32 @RAND_DRBG_reseed(%struct.TYPE_10__* %56, i32* null, i32 0, i32 0)
  %58 = call i32 @TEST_true(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %44
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @TEST_int_eq(i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %60
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @TEST_int_eq(i32 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @TEST_int_gt(i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %74, %67, %60, %44
  br label %226

82:                                               ; preds = %74
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %9, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %87 = call i32 @RAND_DRBG_reseed(%struct.TYPE_10__* %86, i32* null, i32 0, i32 1)
  %88 = call i32 @TEST_true(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %82
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @TEST_int_gt(i32 %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %90
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @TEST_int_gt(i32 %100, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %97
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @TEST_int_gt(i32 %107, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %104, %97, %90, %82
  br label %226

112:                                              ; preds = %104
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  store i32 %116, i32* %7, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  store i32 %120, i32* %8, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %9, align 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %125 = getelementptr inbounds [51 x i8], [51 x i8]* %4, i64 0, i64 0
  %126 = call i32 @RAND_DRBG_generate(%struct.TYPE_10__* %124, i8* %125, i32 51, i32 0, i32* null, i32 0)
  %127 = call i32 @TEST_true(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %150

129:                                              ; preds = %112
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @TEST_int_eq(i32 %132, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %150

136:                                              ; preds = %129
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @TEST_int_eq(i32 %139, i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %136
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @TEST_int_gt(i32 %146, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %143, %136, %129, %112
  br label %226

151:                                              ; preds = %143
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %9, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %156 = getelementptr inbounds [51 x i8], [51 x i8]* %5, i64 0, i64 0
  %157 = call i32 @RAND_DRBG_generate(%struct.TYPE_10__* %155, i8* %156, i32 51, i32 1, i32* null, i32 0)
  %158 = call i32 @TEST_true(i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %186

160:                                              ; preds = %151
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @TEST_int_gt(i32 %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %186

167:                                              ; preds = %160
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @TEST_int_gt(i32 %170, i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %167
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %9, align 4
  %179 = call i32 @TEST_int_gt(i32 %177, i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %174
  %182 = getelementptr inbounds [51 x i8], [51 x i8]* %4, i64 0, i64 0
  %183 = getelementptr inbounds [51 x i8], [51 x i8]* %5, i64 0, i64 0
  %184 = call i32 @TEST_mem_ne(i8* %182, i32 51, i8* %183, i32 51)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %181, %174, %167, %160, %151
  br label %226

187:                                              ; preds = %181
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 4
  store i32 %191, i32* %7, align 4
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 4
  store i32 %195, i32* %8, align 4
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %9, align 4
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %200 = call i32 @RAND_DRBG_reseed(%struct.TYPE_10__* %199, i32* null, i32 0, i32 0)
  %201 = call i32 @TEST_true(i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %224

203:                                              ; preds = %187
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %7, align 4
  %208 = call i32 @TEST_int_eq(i32 %206, i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %224

210:                                              ; preds = %203
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %8, align 4
  %215 = call i32 @TEST_int_eq(i32 %213, i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %210
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %9, align 4
  %222 = call i32 @TEST_int_gt(i32 %220, i32 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %217, %210, %203, %187
  br label %226

225:                                              ; preds = %217
  store i32 1, i32* %6, align 4
  br label %226

226:                                              ; preds = %225, %224, %186, %150, %111, %81, %43
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %228 = call i32 @RAND_DRBG_free(%struct.TYPE_10__* %227)
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %230 = call i32 @RAND_DRBG_free(%struct.TYPE_10__* %229)
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %232 = call i32 @RAND_DRBG_free(%struct.TYPE_10__* %231)
  %233 = load i32, i32* %6, align 4
  ret i32 %233
}

declare dso_local i32 @TEST_ptr(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @RAND_DRBG_new(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @disable_crngt(%struct.TYPE_10__*) #1

declare dso_local i32 @RAND_DRBG_instantiate(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @RAND_DRBG_reseed(%struct.TYPE_10__*, i32*, i32, i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @TEST_int_gt(i32, i32) #1

declare dso_local i32 @RAND_DRBG_generate(%struct.TYPE_10__*, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @TEST_mem_ne(i8*, i32, i8*, i32) #1

declare dso_local i32 @RAND_DRBG_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
