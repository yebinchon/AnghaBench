; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_early_data_tls1_2.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_early_data_tls1_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLS1_2_VERSION = common dso_local global i32 0, align 4
@MSG1 = common dso_local global i32 0, align 4
@SSL_READ_EARLY_DATA_ERROR = common dso_local global i32 0, align 4
@SSL_READ_EARLY_DATA_FINISH = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_NOT_SENT = common dso_local global i32 0, align 4
@MSG2 = common dso_local global i32 0, align 4
@clientpsk = common dso_local global i32* null, align 8
@serverpsk = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_early_data_tls1_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_early_data_tls1_2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [20 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @setupearly_data_test(i32** %3, i32** %4, i32** %5, i32** %6, i32* null, i32 %11)
  %13 = call i32 @TEST_true(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %127

16:                                               ; preds = %1
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @TLS1_2_VERSION, align 4
  %19 = call i32 @SSL_set_max_proto_version(i32* %17, i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @SSL_set_connect_state(i32* %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @MSG1, align 4
  %24 = load i32, i32* @MSG1, align 4
  %25 = call i32 @strlen(i32 %24)
  %26 = call i32 @SSL_write_ex(i32* %22, i32 %23, i32 %25, i64* %10)
  %27 = call i32 @TEST_false(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %16
  br label %127

30:                                               ; preds = %16
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %33 = call i32 @SSL_read_early_data(i32* %31, i8* %32, i32 20, i64* %9)
  %34 = load i32, i32* @SSL_READ_EARLY_DATA_ERROR, align 4
  %35 = call i32 @TEST_int_eq(i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %127

38:                                               ; preds = %30
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @MSG1, align 4
  %41 = load i32, i32* @MSG1, align 4
  %42 = call i32 @strlen(i32 %41)
  %43 = call i32 @SSL_write_ex(i32* %39, i32 %40, i32 %42, i64* %10)
  %44 = call i32 @TEST_false(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %38
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %49 = call i32 @SSL_read_early_data(i32* %47, i8* %48, i32 20, i64* %9)
  %50 = load i32, i32* @SSL_READ_EARLY_DATA_FINISH, align 4
  %51 = call i32 @TEST_int_eq(i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @TEST_size_t_eq(i64 %54, i32 0)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @SSL_get_early_data_status(i32* %58)
  %60 = load i32, i32* @SSL_EARLY_DATA_NOT_SENT, align 4
  %61 = call i32 @TEST_int_eq(i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57, %53, %46, %38
  br label %127

64:                                               ; preds = %57
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @MSG1, align 4
  %67 = load i32, i32* @MSG1, align 4
  %68 = call i32 @strlen(i32 %67)
  %69 = call i32 @SSL_write_ex(i32* %65, i32 %66, i32 %68, i64* %10)
  %70 = call i32 @TEST_true(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %125

72:                                               ; preds = %64
  %73 = load i64, i64* %10, align 8
  %74 = load i32, i32* @MSG1, align 4
  %75 = call i32 @strlen(i32 %74)
  %76 = call i32 @TEST_size_t_eq(i64 %73, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %125

78:                                               ; preds = %72
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @SSL_get_early_data_status(i32* %79)
  %81 = load i32, i32* @SSL_EARLY_DATA_NOT_SENT, align 4
  %82 = call i32 @TEST_int_eq(i32 %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %125

84:                                               ; preds = %78
  %85 = load i32*, i32** %6, align 8
  %86 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %87 = call i32 @SSL_read_ex(i32* %85, i8* %86, i32 20, i64* %9)
  %88 = call i32 @TEST_true(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %125

90:                                               ; preds = %84
  %91 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %92 = load i64, i64* %9, align 8
  %93 = load i32, i32* @MSG1, align 4
  %94 = load i32, i32* @MSG1, align 4
  %95 = call i32 @strlen(i32 %94)
  %96 = call i32 @TEST_mem_eq(i8* %91, i64 %92, i32 %93, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %125

98:                                               ; preds = %90
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* @MSG2, align 4
  %101 = load i32, i32* @MSG2, align 4
  %102 = call i32 @strlen(i32 %101)
  %103 = call i32 @SSL_write_ex(i32* %99, i32 %100, i32 %102, i64* %10)
  %104 = call i32 @TEST_true(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %98
  %107 = load i64, i64* %10, align 8
  %108 = load i32, i32* @MSG2, align 4
  %109 = call i32 @strlen(i32 %108)
  %110 = call i32 @TEST_size_t_eq(i64 %107, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %106
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %115 = call i32 @SSL_read_ex(i32* %113, i8* %114, i32 20, i64* %9)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %119 = load i64, i64* %9, align 8
  %120 = load i32, i32* @MSG2, align 4
  %121 = load i32, i32* @MSG2, align 4
  %122 = call i32 @strlen(i32 %121)
  %123 = call i32 @TEST_mem_eq(i8* %118, i64 %119, i32 %120, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %117, %112, %106, %98, %90, %84, %78, %72, %64
  br label %127

126:                                              ; preds = %117
  store i32 1, i32* %7, align 4
  br label %127

127:                                              ; preds = %126, %125, %63, %37, %29, %15
  %128 = load i32*, i32** @clientpsk, align 8
  %129 = call i32 @SSL_SESSION_free(i32* %128)
  %130 = load i32*, i32** @serverpsk, align 8
  %131 = call i32 @SSL_SESSION_free(i32* %130)
  store i32* null, i32** @serverpsk, align 8
  store i32* null, i32** @clientpsk, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = call i32 @SSL_free(i32* %132)
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @SSL_free(i32* %134)
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @SSL_CTX_free(i32* %136)
  %138 = load i32*, i32** %3, align 8
  %139 = call i32 @SSL_CTX_free(i32* %138)
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @setupearly_data_test(i32**, i32**, i32**, i32**, i32*, i32) #1

declare dso_local i32 @SSL_set_max_proto_version(i32*, i32) #1

declare dso_local i32 @SSL_set_connect_state(i32*) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i32 @SSL_write_ex(i32*, i32, i32, i64*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @SSL_read_early_data(i32*, i8*, i32, i64*) #1

declare dso_local i32 @TEST_size_t_eq(i64, i32) #1

declare dso_local i32 @SSL_get_early_data_status(i32*) #1

declare dso_local i32 @SSL_read_ex(i32*, i8*, i32, i64*) #1

declare dso_local i32 @TEST_mem_eq(i8*, i64, i32, i32) #1

declare dso_local i32 @SSL_SESSION_free(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
