; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_cmp_ctx_test.c_execute_CTX_print_errors_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_cmp_ctx_test.c_execute_CTX_print_errors_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }

@CMP_R_MULTIPLE_SAN_SOURCES = common dso_local global i32 0, align 4
@msg_total_size_log_cb = common dso_local global i32* null, align 8
@CMP_R_INVALID_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"INVALID_ARGS\00", align 1
@CMP_R_NULL_ARGUMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"NULL_ARGUMENT\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"data1\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" : data1\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"data2\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" : data2\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"new line\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"\0Anew line\00", align 1
@msg_total_size = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@STR_SEP = common dso_local global i8* null, align 8
@max_str_literal = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @execute_CTX_print_errors_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_CTX_print_errors_test(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %3, align 8
  store i32 1, i32* %6, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = call i32 @OSSL_CMP_CTX_set_log_cb(%struct.TYPE_7__* %10, i32* null)
  %12 = call i32 @TEST_true(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %14, %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @TEST_true(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %15
  %25 = load i32, i32* @CMP_R_MULTIPLE_SAN_SOURCES, align 4
  %26 = call i32 @CMPerr(i32 0, i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = call i32 @OSSL_CMP_CTX_print_errors(%struct.TYPE_7__* %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = load i32*, i32** @msg_total_size_log_cb, align 8
  %31 = call i32 @OSSL_CMP_CTX_set_log_cb(%struct.TYPE_7__* %29, i32* %30)
  %32 = call i32 @TEST_true(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %34, %24
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32*, i32** @msg_total_size_log_cb, align 8
  %40 = icmp eq i32* %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @TEST_true(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %111

45:                                               ; preds = %35
  %46 = load i32, i32* @CMP_R_INVALID_ARGS, align 4
  %47 = call i32 @CMPerr(i32 0, i32 %46)
  %48 = call i32 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @CMP_R_NULL_ARGUMENT, align 4
  %50 = call i32 @CMPerr(i32 0, i32 %49)
  %51 = call i32 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %5, align 4
  %55 = call i32 @ossl_cmp_add_error_data(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %56 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = call i32 @ossl_cmp_add_error_data(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %60 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = call i32 @ossl_cmp_add_error_line(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %64 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = call i32 @OSSL_CMP_CTX_print_errors(%struct.TYPE_7__* %67)
  %69 = load i64, i64* @msg_total_size, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @TEST_int_eq(i64 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %73, %45
  %75 = load i32, i32* @CMP_R_INVALID_ARGS, align 4
  %76 = call i32 @CMPerr(i32 0, i32 %75)
  %77 = call i32 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %78 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %79 = add nsw i32 %77, %78
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %84, %74
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 4096
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load i8*, i8** @STR_SEP, align 8
  %86 = load i8*, i8** @max_str_literal, align 8
  %87 = call i32 @ossl_cmp_add_error_txt(i8* %85, i8* %86)
  %88 = load i8*, i8** @STR_SEP, align 8
  %89 = call i32 @strlen(i8* %88)
  %90 = load i8*, i8** @max_str_literal, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = add nsw i32 %89, %91
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %5, align 4
  br label %81

95:                                               ; preds = %81
  %96 = load i32, i32* %4, align 4
  %97 = load i8*, i8** @STR_SEP, align 8
  %98 = call i32 @strlen(i8* %97)
  %99 = mul nsw i32 2, %98
  %100 = sub nsw i32 %96, %99
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %5, align 4
  store i64 0, i64* @msg_total_size, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %104 = call i32 @OSSL_CMP_CTX_print_errors(%struct.TYPE_7__* %103)
  %105 = load i64, i64* @msg_total_size, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @TEST_int_eq(i64 %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %95
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %109, %95
  br label %111

111:                                              ; preds = %110, %44
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @OSSL_CMP_CTX_set_log_cb(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @CMPerr(i32, i32) #1

declare dso_local i32 @OSSL_CMP_CTX_print_errors(%struct.TYPE_7__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ossl_cmp_add_error_data(i8*) #1

declare dso_local i32 @ossl_cmp_add_error_line(i8*) #1

declare dso_local i32 @TEST_int_eq(i64, i32) #1

declare dso_local i32 @ossl_cmp_add_error_txt(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
