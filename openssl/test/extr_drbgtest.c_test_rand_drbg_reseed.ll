; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_test_rand_drbg_reseed.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_drbgtest.c_test_rand_drbg_reseed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32 }

@master_ctx = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@public_ctx = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@private_ctx = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_rand_drbg_reseed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_rand_drbg_reseed() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 0, i32* %6, align 4
  %8 = call i32 (...) @RAND_get_rand_method()
  %9 = call %struct.TYPE_24__* (...) @RAND_OpenSSL()
  %10 = call i32 @TEST_ptr_eq(i32 %8, %struct.TYPE_24__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %178

13:                                               ; preds = %0
  %14 = call %struct.TYPE_24__* (...) @RAND_DRBG_get0_master()
  store %struct.TYPE_24__* %14, %struct.TYPE_24__** %2, align 8
  %15 = call i32 @TEST_ptr(%struct.TYPE_24__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = call %struct.TYPE_24__* (...) @RAND_DRBG_get0_public()
  store %struct.TYPE_24__* %18, %struct.TYPE_24__** %3, align 8
  %19 = call i32 @TEST_ptr(%struct.TYPE_24__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = call %struct.TYPE_24__* (...) @RAND_DRBG_get0_private()
  store %struct.TYPE_24__* %22, %struct.TYPE_24__** %4, align 8
  %23 = call i32 @TEST_ptr(%struct.TYPE_24__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %17, %13
  store i32 0, i32* %1, align 4
  br label %178

26:                                               ; preds = %21
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %29 = call i32 @TEST_ptr_ne(%struct.TYPE_24__* %27, %struct.TYPE_24__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %26
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %34 = call i32 @TEST_ptr_ne(%struct.TYPE_24__* %32, %struct.TYPE_24__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %31
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %39 = call i32 @TEST_ptr_ne(%struct.TYPE_24__* %37, %struct.TYPE_24__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %46 = call i32 @TEST_ptr_eq(i32 %44, %struct.TYPE_24__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %53 = call i32 @TEST_ptr_eq(i32 %51, %struct.TYPE_24__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48, %41, %36, %31, %26
  store i32 0, i32* %1, align 4
  br label %178

56:                                               ; preds = %48
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %58 = call i32 @disable_crngt(%struct.TYPE_24__* %57)
  %59 = call i32 @TEST_true(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  store i32 0, i32* %1, align 4
  br label %178

62:                                               ; preds = %56
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %64 = call i32 @RAND_DRBG_uninstantiate(%struct.TYPE_24__* %63)
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %66 = call i32 @RAND_DRBG_uninstantiate(%struct.TYPE_24__* %65)
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %68 = call i32 @RAND_DRBG_uninstantiate(%struct.TYPE_24__* %67)
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %70 = call i32 @hook_drbg(%struct.TYPE_24__* %69, %struct.TYPE_25__* @master_ctx)
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %72 = call i32 @hook_drbg(%struct.TYPE_24__* %71, %struct.TYPE_25__* @public_ctx)
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %74 = call i32 @hook_drbg(%struct.TYPE_24__* %73, %struct.TYPE_25__* @private_ctx)
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %78 = call i32 @test_drbg_reseed(i32 1, %struct.TYPE_24__* %75, %struct.TYPE_24__* %76, %struct.TYPE_24__* %77, i32 1, i32 1, i32 1, i64 0)
  %79 = call i32 @TEST_true(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %62
  br label %170

82:                                               ; preds = %62
  %83 = call i32 (...) @reset_drbg_hook_ctx()
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %87 = call i32 @test_drbg_reseed(i32 1, %struct.TYPE_24__* %84, %struct.TYPE_24__* %85, %struct.TYPE_24__* %86, i32 0, i32 0, i32 0, i64 0)
  %88 = call i32 @TEST_true(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %82
  br label %170

91:                                               ; preds = %82
  %92 = call i32 (...) @reset_drbg_hook_ctx()
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %100 = call i32 @test_drbg_reseed(i32 1, %struct.TYPE_24__* %97, %struct.TYPE_24__* %98, %struct.TYPE_24__* %99, i32 0, i32 1, i32 1, i64 0)
  %101 = call i32 @TEST_true(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %91
  br label %170

104:                                              ; preds = %91
  %105 = call i32 (...) @reset_drbg_hook_ctx()
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %117 = call i32 @test_drbg_reseed(i32 1, %struct.TYPE_24__* %114, %struct.TYPE_24__* %115, %struct.TYPE_24__* %116, i32 0, i32 1, i32 0, i64 0)
  %118 = call i32 @TEST_true(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %104
  br label %170

121:                                              ; preds = %104
  %122 = call i32 (...) @reset_drbg_hook_ctx()
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %134 = call i32 @test_drbg_reseed(i32 1, %struct.TYPE_24__* %131, %struct.TYPE_24__* %132, %struct.TYPE_24__* %133, i32 0, i32 0, i32 1, i64 0)
  %135 = call i32 @TEST_true(i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %121
  br label %170

138:                                              ; preds = %121
  %139 = call i32 (...) @reset_drbg_hook_ctx()
  %140 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %141 = call i32 @memset(i8* %140, i8 signext 114, i32 256)
  %142 = call i64 @time(i32* null)
  store i64 %142, i64* %7, align 8
  %143 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %144 = call i32 @RAND_add(i8* %143, i32 256, i32 256)
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %148 = load i64, i64* %7, align 8
  %149 = call i32 @test_drbg_reseed(i32 1, %struct.TYPE_24__* %145, %struct.TYPE_24__* %146, %struct.TYPE_24__* %147, i32 1, i32 1, i32 1, i64 %148)
  %150 = call i32 @TEST_true(i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %138
  br label %170

153:                                              ; preds = %138
  %154 = call i32 (...) @reset_drbg_hook_ctx()
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @master_ctx, i32 0, i32 0), align 4
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  %159 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %160 = call i32 @RAND_add(i8* %159, i32 256, i32 256)
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %164 = call i32 @test_drbg_reseed(i32 0, %struct.TYPE_24__* %161, %struct.TYPE_24__* %162, %struct.TYPE_24__* %163, i32 0, i32 0, i32 0, i64 0)
  %165 = call i32 @TEST_true(i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %153
  br label %170

168:                                              ; preds = %153
  %169 = call i32 (...) @reset_drbg_hook_ctx()
  store i32 1, i32* %6, align 4
  br label %170

170:                                              ; preds = %168, %167, %152, %137, %120, %103, %90, %81
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %172 = call i32 @unhook_drbg(%struct.TYPE_24__* %171)
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %174 = call i32 @unhook_drbg(%struct.TYPE_24__* %173)
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %176 = call i32 @unhook_drbg(%struct.TYPE_24__* %175)
  %177 = load i32, i32* %6, align 4
  store i32 %177, i32* %1, align 4
  br label %178

178:                                              ; preds = %170, %61, %55, %25, %12
  %179 = load i32, i32* %1, align 4
  ret i32 %179
}

declare dso_local i32 @TEST_ptr_eq(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @RAND_get_rand_method(...) #1

declare dso_local %struct.TYPE_24__* @RAND_OpenSSL(...) #1

declare dso_local i32 @TEST_ptr(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @RAND_DRBG_get0_master(...) #1

declare dso_local %struct.TYPE_24__* @RAND_DRBG_get0_public(...) #1

declare dso_local %struct.TYPE_24__* @RAND_DRBG_get0_private(...) #1

declare dso_local i32 @TEST_ptr_ne(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @disable_crngt(%struct.TYPE_24__*) #1

declare dso_local i32 @RAND_DRBG_uninstantiate(%struct.TYPE_24__*) #1

declare dso_local i32 @hook_drbg(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @test_drbg_reseed(i32, %struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32, i32, i32, i64) #1

declare dso_local i32 @reset_drbg_hook_ctx(...) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @RAND_add(i8*, i32, i32) #1

declare dso_local i32 @unhook_drbg(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
