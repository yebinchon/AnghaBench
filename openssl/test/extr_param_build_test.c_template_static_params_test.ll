; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_param_build_test.c_template_static_params_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_param_build_test.c_template_static_params_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i8*, i32, i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"bn\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"utf8_s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@OSSL_PARAM_UNSIGNED_INTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @template_static_params_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @template_static_params_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1000 x i8], align 16
  %4 = alloca [500 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca [20 x %struct.TYPE_19__], align 16
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %9, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = call i32 @ossl_param_bld_init(i32* %5)
  %14 = call i32 @ossl_param_bld_push_uint(i32* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 6)
  %15 = call i32 @TEST_true(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %140

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call %struct.TYPE_19__* (...) @BN_new()
  br label %25

23:                                               ; preds = %17
  %24 = call %struct.TYPE_19__* (...) @BN_secure_new()
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi %struct.TYPE_19__* [ %22, %21 ], [ %24, %23 ]
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %8, align 8
  %27 = call i32 @TEST_ptr(%struct.TYPE_19__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %140

29:                                               ; preds = %25
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %31 = call i32 @BN_set_word(%struct.TYPE_19__* %30, i32 1337)
  %32 = call i32 @TEST_true(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %140

34:                                               ; preds = %29
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %36 = call i32 @ossl_param_bld_push_BN(i32* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_19__* %35)
  %37 = call i32 @TEST_true(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %140

39:                                               ; preds = %34
  %40 = call i32 @ossl_param_bld_push_utf8_string(i32* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %41 = call i32 @TEST_true(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %140

43:                                               ; preds = %39
  %44 = getelementptr inbounds [20 x %struct.TYPE_19__], [20 x %struct.TYPE_19__]* %6, i64 0, i64 0
  %45 = getelementptr inbounds [20 x %struct.TYPE_19__], [20 x %struct.TYPE_19__]* %6, i64 0, i64 0
  %46 = call i32 @OSSL_NELEM(%struct.TYPE_19__* %45)
  %47 = getelementptr inbounds [1000 x i8], [1000 x i8]* %3, i64 0, i64 0
  %48 = getelementptr inbounds [500 x i8], [500 x i8]* %4, i64 0, i64 0
  %49 = call %struct.TYPE_19__* @ossl_param_bld_to_param_ex(i32* %5, %struct.TYPE_19__* %44, i32 %46, i8* %47, i32 1000, i8* %48, i32 500)
  %50 = call i32 @TEST_ptr(%struct.TYPE_19__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %140

52:                                               ; preds = %43
  %53 = getelementptr inbounds [20 x %struct.TYPE_19__], [20 x %struct.TYPE_19__]* %6, i64 0, i64 0
  %54 = call %struct.TYPE_19__* @OSSL_PARAM_locate(%struct.TYPE_19__* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_19__* %54, %struct.TYPE_19__** %7, align 8
  %55 = call i32 @TEST_ptr(%struct.TYPE_19__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %140

57:                                               ; preds = %52
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %59 = call i32 @OSSL_PARAM_get_uint(%struct.TYPE_19__* %58, i32* %10)
  %60 = call i32 @TEST_true(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %140

62:                                               ; preds = %57
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @TEST_str_eq(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %140

68:                                               ; preds = %62
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @OSSL_PARAM_UNSIGNED_INTEGER, align 4
  %73 = call i32 @TEST_uint_eq(i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %140

75:                                               ; preds = %68
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @TEST_size_t_eq(i32 %78, i32 4)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %140

81:                                               ; preds = %75
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @TEST_uint_eq(i32 %82, i32 6)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %140

85:                                               ; preds = %81
  %86 = getelementptr inbounds [20 x %struct.TYPE_19__], [20 x %struct.TYPE_19__]* %6, i64 0, i64 0
  %87 = call %struct.TYPE_19__* @OSSL_PARAM_locate(%struct.TYPE_19__* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_19__* %87, %struct.TYPE_19__** %7, align 8
  %88 = call i32 @TEST_ptr(%struct.TYPE_19__* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %140

90:                                               ; preds = %85
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %92 = call i32 @OSSL_PARAM_get_BN(%struct.TYPE_19__* %91, %struct.TYPE_19__** %9)
  %93 = call i32 @TEST_true(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %140

95:                                               ; preds = %90
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @TEST_str_eq(i8* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %140

101:                                              ; preds = %95
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @OSSL_PARAM_UNSIGNED_INTEGER, align 4
  %106 = call i32 @TEST_uint_eq(i32 %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %140

108:                                              ; preds = %101
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @TEST_size_t_le(i32 %111, i32 4)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %140

114:                                              ; preds = %108
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %116 = call i64 @BN_get_word(%struct.TYPE_19__* %115)
  %117 = trunc i64 %116 to i32
  %118 = call i32 @TEST_uint_eq(i32 %117, i32 1337)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %114
  %121 = getelementptr inbounds [20 x %struct.TYPE_19__], [20 x %struct.TYPE_19__]* %6, i64 0, i64 0
  %122 = call %struct.TYPE_19__* @OSSL_PARAM_locate(%struct.TYPE_19__* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_19__* %122, %struct.TYPE_19__** %7, align 8
  %123 = call i32 @TEST_ptr(%struct.TYPE_19__* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %120
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @TEST_str_eq(i8* %128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %125
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %133 = call i32 @OSSL_PARAM_get_utf8_string(%struct.TYPE_19__* %132, i8** %11, i32 0)
  %134 = call i32 @TEST_true(i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = load i8*, i8** %11, align 8
  %138 = call i32 @TEST_str_eq(i8* %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %136, %131, %125, %120, %114, %108, %101, %95, %90, %85, %81, %75, %68, %62, %57, %52, %43, %39, %34, %29, %25, %1
  br label %142

141:                                              ; preds = %136
  store i32 1, i32* %12, align 4
  br label %142

142:                                              ; preds = %141, %140
  %143 = load i8*, i8** %11, align 8
  %144 = call i32 @OPENSSL_free(i8* %143)
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %146 = call i32 @BN_free(%struct.TYPE_19__* %145)
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %148 = call i32 @BN_free(%struct.TYPE_19__* %147)
  %149 = load i32, i32* %12, align 4
  ret i32 %149
}

declare dso_local i32 @ossl_param_bld_init(i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @ossl_param_bld_push_uint(i32*, i8*, i32) #1

declare dso_local i32 @TEST_ptr(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @BN_new(...) #1

declare dso_local %struct.TYPE_19__* @BN_secure_new(...) #1

declare dso_local i32 @BN_set_word(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ossl_param_bld_push_BN(i32*, i8*, %struct.TYPE_19__*) #1

declare dso_local i32 @ossl_param_bld_push_utf8_string(i32*, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_19__* @ossl_param_bld_to_param_ex(i32*, %struct.TYPE_19__*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @OSSL_NELEM(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @OSSL_PARAM_locate(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @OSSL_PARAM_get_uint(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @TEST_str_eq(i8*, i8*) #1

declare dso_local i32 @TEST_uint_eq(i32, i32) #1

declare dso_local i32 @TEST_size_t_eq(i32, i32) #1

declare dso_local i32 @OSSL_PARAM_get_BN(%struct.TYPE_19__*, %struct.TYPE_19__**) #1

declare dso_local i32 @TEST_size_t_le(i32, i32) #1

declare dso_local i64 @BN_get_word(%struct.TYPE_19__*) #1

declare dso_local i32 @OSSL_PARAM_get_utf8_string(%struct.TYPE_19__*, i8**, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @BN_free(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
