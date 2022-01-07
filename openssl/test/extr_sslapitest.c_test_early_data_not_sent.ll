; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_early_data_not_sent.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sslapitest.c_test_early_data_not_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG1 = common dso_local global i32 0, align 4
@SSL_READ_EARLY_DATA_FINISH = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_NOT_SENT = common dso_local global i32 0, align 4
@MSG2 = common dso_local global i32 0, align 4
@clientpsk = common dso_local global i32* null, align 8
@serverpsk = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_early_data_not_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_early_data_not_sent(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [20 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @setupearly_data_test(i32** %3, i32** %4, i32** %5, i32** %6, i32** %8, i32 %12)
  %14 = call i32 @TEST_true(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %110

17:                                               ; preds = %1
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @SSL_set_connect_state(i32* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @MSG1, align 4
  %22 = load i32, i32* @MSG1, align 4
  %23 = call i32 @strlen(i32 %22)
  %24 = call i32 @SSL_write_ex(i32* %20, i32 %21, i32 %23, i64* %11)
  %25 = call i32 @TEST_false(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  br label %110

28:                                               ; preds = %17
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %31 = call i32 @SSL_read_early_data(i32* %29, i8* %30, i32 20, i64* %10)
  %32 = load i32, i32* @SSL_READ_EARLY_DATA_FINISH, align 4
  %33 = call i32 @TEST_int_eq(i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %28
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @TEST_size_t_eq(i64 %36, i32 0)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @SSL_get_early_data_status(i32* %40)
  %42 = load i32, i32* @SSL_EARLY_DATA_NOT_SENT, align 4
  %43 = call i32 @TEST_int_eq(i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @SSL_get_early_data_status(i32* %46)
  %48 = load i32, i32* @SSL_EARLY_DATA_NOT_SENT, align 4
  %49 = call i32 @TEST_int_eq(i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45, %39, %35, %28
  br label %110

52:                                               ; preds = %45
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @MSG1, align 4
  %55 = load i32, i32* @MSG1, align 4
  %56 = call i32 @strlen(i32 %55)
  %57 = call i32 @SSL_write_ex(i32* %53, i32 %54, i32 %56, i64* %11)
  %58 = call i32 @TEST_true(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %93

60:                                               ; preds = %52
  %61 = load i64, i64* %11, align 8
  %62 = load i32, i32* @MSG1, align 4
  %63 = call i32 @strlen(i32 %62)
  %64 = call i32 @TEST_size_t_eq(i64 %61, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %93

66:                                               ; preds = %60
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %69 = call i32 @SSL_read_ex(i32* %67, i8* %68, i32 20, i64* %10)
  %70 = call i32 @TEST_true(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %66
  %73 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %74 = load i64, i64* %10, align 8
  %75 = load i32, i32* @MSG1, align 4
  %76 = load i32, i32* @MSG1, align 4
  %77 = call i32 @strlen(i32 %76)
  %78 = call i32 @TEST_mem_eq(i8* %73, i64 %74, i32 %75, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %72
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* @MSG2, align 4
  %83 = load i32, i32* @MSG2, align 4
  %84 = call i32 @strlen(i32 %83)
  %85 = call i32 @SSL_write_ex(i32* %81, i32 %82, i32 %84, i64* %11)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load i64, i64* %11, align 8
  %89 = load i32, i32* @MSG2, align 4
  %90 = call i32 @strlen(i32 %89)
  %91 = call i32 @TEST_size_t_eq(i64 %88, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87, %80, %72, %66, %60, %52
  br label %110

94:                                               ; preds = %87
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %97 = call i32 @SSL_read_ex(i32* %95, i8* %96, i32 20, i64* %10)
  %98 = call i32 @TEST_true(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %94
  %101 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %102 = load i64, i64* %10, align 8
  %103 = load i32, i32* @MSG2, align 4
  %104 = load i32, i32* @MSG2, align 4
  %105 = call i32 @strlen(i32 %104)
  %106 = call i32 @TEST_mem_eq(i8* %101, i64 %102, i32 %103, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %100, %94
  br label %110

109:                                              ; preds = %100
  store i32 1, i32* %7, align 4
  br label %110

110:                                              ; preds = %109, %108, %93, %51, %27, %16
  %111 = load i32*, i32** %8, align 8
  %112 = call i32 @SSL_SESSION_free(i32* %111)
  %113 = load i32*, i32** @clientpsk, align 8
  %114 = call i32 @SSL_SESSION_free(i32* %113)
  %115 = load i32*, i32** @serverpsk, align 8
  %116 = call i32 @SSL_SESSION_free(i32* %115)
  store i32* null, i32** @serverpsk, align 8
  store i32* null, i32** @clientpsk, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @SSL_free(i32* %117)
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @SSL_free(i32* %119)
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @SSL_CTX_free(i32* %121)
  %123 = load i32*, i32** %3, align 8
  %124 = call i32 @SSL_CTX_free(i32* %123)
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @setupearly_data_test(i32**, i32**, i32**, i32**, i32**, i32) #1

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
