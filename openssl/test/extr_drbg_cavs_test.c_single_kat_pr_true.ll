; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_drbg_cavs_test.c_single_kat_pr_true.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_drbg_cavs_test.c_single_kat_pr_true.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbg_kat = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.drbg_kat_pr_true = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@USE_DF = common dso_local global i32 0, align 4
@RAND_DRBG_FLAG_CTR_NO_DF = common dso_local global i32 0, align 4
@USE_HMAC = common dso_local global i32 0, align 4
@RAND_DRBG_FLAG_HMAC = common dso_local global i32 0, align 4
@kat_entropy = common dso_local global i32 0, align 4
@kat_nonce = common dso_local global i32 0, align 4
@app_data_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbg_kat*)* @single_kat_pr_true to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @single_kat_pr_true(%struct.drbg_kat* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drbg_kat*, align 8
  %4 = alloca %struct.drbg_kat_pr_true*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 4
  store %struct.drbg_kat* %0, %struct.drbg_kat** %3, align 8
  %10 = load %struct.drbg_kat*, %struct.drbg_kat** %3, align 8
  %11 = getelementptr inbounds %struct.drbg_kat, %struct.drbg_kat* %10, i32 0, i32 7
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.drbg_kat_pr_true*
  store %struct.drbg_kat_pr_true* %13, %struct.drbg_kat_pr_true** %4, align 8
  store i32* null, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.drbg_kat*, %struct.drbg_kat** %3, align 8
  %15 = getelementptr inbounds %struct.drbg_kat, %struct.drbg_kat* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @USE_DF, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @RAND_DRBG_FLAG_CTR_NO_DF, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.drbg_kat*, %struct.drbg_kat** %3, align 8
  %26 = getelementptr inbounds %struct.drbg_kat, %struct.drbg_kat* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @USE_HMAC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* @RAND_DRBG_FLAG_HMAC, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %24
  %36 = load %struct.drbg_kat*, %struct.drbg_kat** %3, align 8
  %37 = getelementptr inbounds %struct.drbg_kat, %struct.drbg_kat* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32* @RAND_DRBG_new(i32 %38, i32 %39, i32* null)
  store i32* %40, i32** %5, align 8
  %41 = call i32 @TEST_ptr(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %177

44:                                               ; preds = %35
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @kat_entropy, align 4
  %47 = load i32, i32* @kat_nonce, align 4
  %48 = call i32 @RAND_DRBG_set_callbacks(i32* %45, i32 %46, i32* null, i32 %47, i32* null)
  %49 = call i32 @TEST_true(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %167

54:                                               ; preds = %44
  %55 = call i32 @memset(%struct.TYPE_4__* %9, i32 0, i32 16)
  %56 = load %struct.drbg_kat_pr_true*, %struct.drbg_kat_pr_true** %4, align 8
  %57 = getelementptr inbounds %struct.drbg_kat_pr_true, %struct.drbg_kat_pr_true* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  store i32 %58, i32* %59, align 4
  %60 = load %struct.drbg_kat*, %struct.drbg_kat** %3, align 8
  %61 = getelementptr inbounds %struct.drbg_kat, %struct.drbg_kat* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store i32 %62, i32* %63, align 4
  %64 = load %struct.drbg_kat_pr_true*, %struct.drbg_kat_pr_true** %4, align 8
  %65 = getelementptr inbounds %struct.drbg_kat_pr_true, %struct.drbg_kat_pr_true* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  %68 = load %struct.drbg_kat*, %struct.drbg_kat** %3, align 8
  %69 = getelementptr inbounds %struct.drbg_kat, %struct.drbg_kat* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* @app_data_index, align 4
  %74 = call i32 @RAND_DRBG_set_ex_data(i32* %72, i32 %73, %struct.TYPE_4__* %9)
  %75 = load %struct.drbg_kat*, %struct.drbg_kat** %3, align 8
  %76 = getelementptr inbounds %struct.drbg_kat, %struct.drbg_kat* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @OPENSSL_malloc(i32 %77)
  store i8* %78, i8** %6, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %54
  br label %167

82:                                               ; preds = %54
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.drbg_kat_pr_true*, %struct.drbg_kat_pr_true** %4, align 8
  %85 = getelementptr inbounds %struct.drbg_kat_pr_true, %struct.drbg_kat_pr_true* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.drbg_kat*, %struct.drbg_kat** %3, align 8
  %88 = getelementptr inbounds %struct.drbg_kat, %struct.drbg_kat* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @RAND_DRBG_instantiate(i32* %83, i32 %86, i32 %89)
  %91 = call i32 @TEST_true(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %82
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %93, %82
  %97 = load %struct.drbg_kat_pr_true*, %struct.drbg_kat_pr_true** %4, align 8
  %98 = getelementptr inbounds %struct.drbg_kat_pr_true, %struct.drbg_kat_pr_true* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32 %99, i32* %100, align 4
  %101 = load %struct.drbg_kat*, %struct.drbg_kat** %3, align 8
  %102 = getelementptr inbounds %struct.drbg_kat, %struct.drbg_kat* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = load %struct.drbg_kat*, %struct.drbg_kat** %3, align 8
  %108 = getelementptr inbounds %struct.drbg_kat, %struct.drbg_kat* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.drbg_kat_pr_true*, %struct.drbg_kat_pr_true** %4, align 8
  %111 = getelementptr inbounds %struct.drbg_kat_pr_true, %struct.drbg_kat_pr_true* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.drbg_kat*, %struct.drbg_kat** %3, align 8
  %114 = getelementptr inbounds %struct.drbg_kat, %struct.drbg_kat* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @RAND_DRBG_generate(i32* %105, i8* %106, i32 %109, i32 1, i32 %112, i32 %115)
  %117 = call i32 @TEST_true(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %96
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %119, %96
  %123 = load %struct.drbg_kat_pr_true*, %struct.drbg_kat_pr_true** %4, align 8
  %124 = getelementptr inbounds %struct.drbg_kat_pr_true, %struct.drbg_kat_pr_true* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32 %125, i32* %126, align 4
  %127 = load %struct.drbg_kat*, %struct.drbg_kat** %3, align 8
  %128 = getelementptr inbounds %struct.drbg_kat, %struct.drbg_kat* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %129, i32* %130, align 4
  %131 = load i32*, i32** %5, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = load %struct.drbg_kat*, %struct.drbg_kat** %3, align 8
  %134 = getelementptr inbounds %struct.drbg_kat, %struct.drbg_kat* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.drbg_kat_pr_true*, %struct.drbg_kat_pr_true** %4, align 8
  %137 = getelementptr inbounds %struct.drbg_kat_pr_true, %struct.drbg_kat_pr_true* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.drbg_kat*, %struct.drbg_kat** %3, align 8
  %140 = getelementptr inbounds %struct.drbg_kat, %struct.drbg_kat* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @RAND_DRBG_generate(i32* %131, i8* %132, i32 %135, i32 1, i32 %138, i32 %141)
  %143 = call i32 @TEST_true(i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %163

145:                                              ; preds = %122
  %146 = load i32*, i32** %5, align 8
  %147 = call i32 @RAND_DRBG_uninstantiate(i32* %146)
  %148 = call i32 @TEST_true(i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %145
  %151 = load %struct.drbg_kat_pr_true*, %struct.drbg_kat_pr_true** %4, align 8
  %152 = getelementptr inbounds %struct.drbg_kat_pr_true, %struct.drbg_kat_pr_true* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.drbg_kat*, %struct.drbg_kat** %3, align 8
  %155 = getelementptr inbounds %struct.drbg_kat, %struct.drbg_kat* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i8*, i8** %6, align 8
  %158 = load %struct.drbg_kat*, %struct.drbg_kat** %3, align 8
  %159 = getelementptr inbounds %struct.drbg_kat, %struct.drbg_kat* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @TEST_mem_eq(i32 %153, i32 %156, i8* %157, i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %150, %145, %122
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %163, %150
  br label %167

167:                                              ; preds = %166, %81, %51
  %168 = load i8*, i8** %6, align 8
  %169 = call i32 @OPENSSL_free(i8* %168)
  %170 = load i32*, i32** %5, align 8
  %171 = call i32 @RAND_DRBG_uninstantiate(i32* %170)
  %172 = load i32*, i32** %5, align 8
  %173 = call i32 @RAND_DRBG_free(i32* %172)
  %174 = load i32, i32* %8, align 4
  %175 = icmp eq i32 %174, 0
  %176 = zext i1 %175 to i32
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %167, %43
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @RAND_DRBG_new(i32, i32, i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @RAND_DRBG_set_callbacks(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @RAND_DRBG_set_ex_data(i32*, i32, %struct.TYPE_4__*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @RAND_DRBG_instantiate(i32*, i32, i32) #1

declare dso_local i32 @RAND_DRBG_generate(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @RAND_DRBG_uninstantiate(i32*) #1

declare dso_local i32 @TEST_mem_eq(i32, i32, i8*, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @RAND_DRBG_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
