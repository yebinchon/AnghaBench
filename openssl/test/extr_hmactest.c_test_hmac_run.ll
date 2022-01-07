; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_hmactest.c_test_hmac_run.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_hmactest.c_test_hmac_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32* }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@test = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_hmac_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_hmac_run() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  %7 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %11 = call i32* (...) @HMAC_CTX_new()
  store i32* %11, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @HMAC_CTX_reset(i32* %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @TEST_ptr(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %0
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @HMAC_CTX_get_md(i32* %18)
  %20 = call i32 @TEST_ptr_null(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %17
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @HMAC_Init_ex(i32* %23, i32* null, i32 0, i32* null, i32* null)
  %25 = call i32 @TEST_false(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %22
  %28 = load i32*, i32** %2, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 4
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @HMAC_Update(i32* %28, i32 %32, i32 %36)
  %38 = call i32 @TEST_false(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %27
  %41 = load i32*, i32** %2, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = call i32* (...) @EVP_sha1()
  %47 = call i32 @HMAC_Init_ex(i32* %41, i32* %45, i32 -1, i32* %46, i32* null)
  %48 = call i32 @TEST_false(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %40, %27, %22, %17, %0
  br label %196

51:                                               ; preds = %40
  %52 = load i32*, i32** %2, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 4
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 4
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32* (...) @EVP_sha1()
  %62 = call i32 @HMAC_Init_ex(i32* %52, i32* %56, i32 %60, i32* %61, i32* null)
  %63 = call i32 @TEST_true(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %51
  %66 = load i32*, i32** %2, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 4
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 4
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @HMAC_Update(i32* %66, i32 %70, i32 %74)
  %76 = call i32 @TEST_true(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %65
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @HMAC_Final(i32* %79, i8* %10, i32* %5)
  %81 = call i32 @TEST_true(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78, %65, %51
  br label %196

84:                                               ; preds = %78
  %85 = load i32, i32* %5, align 4
  %86 = call i8* @pt(i8* %10, i32 %85)
  store i8* %86, i8** %1, align 8
  %87 = load i8*, i8** %1, align 8
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 4
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @TEST_str_eq(i8* %87, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %84
  br label %196

95:                                               ; preds = %84
  %96 = load i32*, i32** %2, align 8
  %97 = call i32* (...) @EVP_sha256()
  %98 = call i32 @HMAC_Init_ex(i32* %96, i32* null, i32 0, i32* %97, i32* null)
  %99 = call i32 @TEST_false(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %95
  br label %196

102:                                              ; preds = %95
  %103 = load i32*, i32** %2, align 8
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 5
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 5
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32* (...) @EVP_sha256()
  %113 = call i32 @HMAC_Init_ex(i32* %103, i32* %107, i32 %111, i32* %112, i32* null)
  %114 = call i32 @TEST_true(i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %140

116:                                              ; preds = %102
  %117 = load i32*, i32** %2, align 8
  %118 = call i32 @HMAC_CTX_get_md(i32* %117)
  %119 = call i32* (...) @EVP_sha256()
  %120 = call i32 @TEST_ptr_eq(i32 %118, i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %116
  %123 = load i32*, i32** %2, align 8
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 5
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 5
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @HMAC_Update(i32* %123, i32 %127, i32 %131)
  %133 = call i32 @TEST_true(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %122
  %136 = load i32*, i32** %2, align 8
  %137 = call i32 @HMAC_Final(i32* %136, i8* %10, i32* %5)
  %138 = call i32 @TEST_true(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %135, %122, %116, %102
  br label %196

141:                                              ; preds = %135
  %142 = load i32, i32* %5, align 4
  %143 = call i8* @pt(i8* %10, i32 %142)
  store i8* %143, i8** %1, align 8
  %144 = load i8*, i8** %1, align 8
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 5
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @TEST_str_eq(i8* %144, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %141
  br label %196

152:                                              ; preds = %141
  %153 = load i32*, i32** %2, align 8
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 6
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 6
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @HMAC_Init_ex(i32* %153, i32* %157, i32 %161, i32* null, i32* null)
  %163 = call i32 @TEST_true(i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %183

165:                                              ; preds = %152
  %166 = load i32*, i32** %2, align 8
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 6
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i64 6
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @HMAC_Update(i32* %166, i32 %170, i32 %174)
  %176 = call i32 @TEST_true(i32 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %165
  %179 = load i32*, i32** %2, align 8
  %180 = call i32 @HMAC_Final(i32* %179, i8* %10, i32* %5)
  %181 = call i32 @TEST_true(i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %178, %165, %152
  br label %196

184:                                              ; preds = %178
  %185 = load i32, i32* %5, align 4
  %186 = call i8* @pt(i8* %10, i32 %185)
  store i8* %186, i8** %1, align 8
  %187 = load i8*, i8** %1, align 8
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** @test, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i64 6
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @TEST_str_eq(i8* %187, i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %184
  br label %196

195:                                              ; preds = %184
  store i32 1, i32* %6, align 4
  br label %196

196:                                              ; preds = %195, %194, %183, %151, %140, %101, %94, %83, %50
  %197 = load i32*, i32** %2, align 8
  %198 = call i32 @HMAC_CTX_free(i32* %197)
  %199 = load i32, i32* %6, align 4
  %200 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %200)
  ret i32 %199
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @HMAC_CTX_new(...) #2

declare dso_local i32 @HMAC_CTX_reset(i32*) #2

declare dso_local i32 @TEST_ptr(i32*) #2

declare dso_local i32 @TEST_ptr_null(i32) #2

declare dso_local i32 @HMAC_CTX_get_md(i32*) #2

declare dso_local i32 @TEST_false(i32) #2

declare dso_local i32 @HMAC_Init_ex(i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @HMAC_Update(i32*, i32, i32) #2

declare dso_local i32* @EVP_sha1(...) #2

declare dso_local i32 @TEST_true(i32) #2

declare dso_local i32 @HMAC_Final(i32*, i8*, i32*) #2

declare dso_local i8* @pt(i8*, i32) #2

declare dso_local i32 @TEST_str_eq(i8*, i32) #2

declare dso_local i32* @EVP_sha256(...) #2

declare dso_local i32 @TEST_ptr_eq(i32, i32*) #2

declare dso_local i32 @HMAC_CTX_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
