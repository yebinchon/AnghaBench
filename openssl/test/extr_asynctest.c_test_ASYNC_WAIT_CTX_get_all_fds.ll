; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_asynctest.c_test_ASYNC_WAIT_CTX_get_all_fds.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_asynctest.c_test_ASYNC_WAIT_CTX_get_all_fds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OSSL_BAD_ASYNC_FD = common dso_local global i64 0, align 8
@waitfd = common dso_local global i32 0, align 4
@ASYNC_PAUSE = common dso_local global i64 0, align 8
@MAGIC_WAIT_FD = common dso_local global i64 0, align 8
@ASYNC_FINISH = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"test_ASYNC_get_wait_fd() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_ASYNC_WAIT_CTX_get_all_fds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_ASYNC_WAIT_CTX_get_all_fds() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %4, align 8
  %9 = load i64, i64* @OSSL_BAD_ASYNC_FD, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* @OSSL_BAD_ASYNC_FD, align 8
  store i64 %10, i64* %6, align 8
  %11 = call i32 @ASYNC_init_thread(i32 1, i32 0)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %137

13:                                               ; preds = %0
  %14 = call i32* (...) @ASYNC_WAIT_CTX_new()
  store i32* %14, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %137, label %16

16:                                               ; preds = %13
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @waitfd, align 4
  %19 = call i64 @ASYNC_start_job(i32** %2, i32* %17, i32* %3, i32 %18, i32* null, i32 0)
  %20 = load i64, i64* @ASYNC_PAUSE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %137, label %22

22:                                               ; preds = %16
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @ASYNC_WAIT_CTX_get_all_fds(i32* %23, i64* null, i64* %7)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %137

26:                                               ; preds = %22
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %137, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @ASYNC_WAIT_CTX_get_changed_fds(i32* %30, i64* null, i64* %7, i64* null, i64* %8)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %137

33:                                               ; preds = %29
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %137, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %137, label %39

39:                                               ; preds = %36
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* @waitfd, align 4
  %42 = call i64 @ASYNC_start_job(i32** %2, i32* %40, i32* %3, i32 %41, i32* null, i32 0)
  %43 = load i64, i64* @ASYNC_PAUSE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %137, label %45

45:                                               ; preds = %39
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @ASYNC_WAIT_CTX_get_all_fds(i32* %46, i64* null, i64* %7)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %137

49:                                               ; preds = %45
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 1
  br i1 %51, label %137, label %52

52:                                               ; preds = %49
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @ASYNC_WAIT_CTX_get_all_fds(i32* %53, i64* %5, i64* %7)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %137

56:                                               ; preds = %52
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @MAGIC_WAIT_FD, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %137, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* @OSSL_BAD_ASYNC_FD, align 8
  store i64 %61, i64* %5, align 8
  br i1 false, label %137, label %62

62:                                               ; preds = %60
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @ASYNC_WAIT_CTX_get_changed_fds(i32* %63, i64* null, i64* %7, i64* null, i64* %8)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %137

66:                                               ; preds = %62
  %67 = load i64, i64* %7, align 8
  %68 = icmp ne i64 %67, 1
  br i1 %68, label %137, label %69

69:                                               ; preds = %66
  %70 = load i64, i64* %8, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %137, label %72

72:                                               ; preds = %69
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @ASYNC_WAIT_CTX_get_changed_fds(i32* %73, i64* %5, i64* %7, i64* null, i64* %8)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %137

76:                                               ; preds = %72
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* @MAGIC_WAIT_FD, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %137, label %80

80:                                               ; preds = %76
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* @waitfd, align 4
  %83 = call i64 @ASYNC_start_job(i32** %2, i32* %81, i32* %3, i32 %82, i32* null, i32 0)
  %84 = load i64, i64* @ASYNC_PAUSE, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %137, label %86

86:                                               ; preds = %80
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @ASYNC_WAIT_CTX_get_all_fds(i32* %87, i64* null, i64* %7)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %137

90:                                               ; preds = %86
  %91 = load i64, i64* %7, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %137, label %93

93:                                               ; preds = %90
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @ASYNC_WAIT_CTX_get_changed_fds(i32* %94, i64* null, i64* %7, i64* null, i64* %8)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %137

97:                                               ; preds = %93
  %98 = load i64, i64* %7, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %137, label %100

100:                                              ; preds = %97
  %101 = load i64, i64* %8, align 8
  %102 = icmp ne i64 %101, 1
  br i1 %102, label %137, label %103

103:                                              ; preds = %100
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @ASYNC_WAIT_CTX_get_changed_fds(i32* %104, i64* null, i64* %7, i64* %6, i64* %8)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %137

107:                                              ; preds = %103
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* @MAGIC_WAIT_FD, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %137, label %111

111:                                              ; preds = %107
  %112 = load i32*, i32** %4, align 8
  %113 = load i32, i32* @waitfd, align 4
  %114 = call i64 @ASYNC_start_job(i32** %2, i32* %112, i32* %3, i32 %113, i32* null, i32 0)
  %115 = load i64, i64* @ASYNC_FINISH, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %137, label %117

117:                                              ; preds = %111
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @ASYNC_WAIT_CTX_get_all_fds(i32* %118, i64* null, i64* %7)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %117
  %122 = load i64, i64* %7, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %137, label %124

124:                                              ; preds = %121
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @ASYNC_WAIT_CTX_get_changed_fds(i32* %125, i64* null, i64* %7, i64* null, i64* %8)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %124
  %129 = load i64, i64* %7, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %128
  %132 = load i64, i64* %8, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %3, align 4
  %136 = icmp ne i32 %135, 1
  br i1 %136, label %137, label %143

137:                                              ; preds = %134, %131, %128, %124, %121, %117, %111, %107, %103, %100, %97, %93, %90, %86, %80, %76, %72, %69, %66, %62, %60, %56, %52, %49, %45, %39, %36, %33, %29, %26, %22, %16, %13, %0
  %138 = load i32, i32* @stderr, align 4
  %139 = call i32 @fprintf(i32 %138, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 @ASYNC_WAIT_CTX_free(i32* %140)
  %142 = call i32 (...) @ASYNC_cleanup_thread()
  store i32 0, i32* %1, align 4
  br label %147

143:                                              ; preds = %134
  %144 = load i32*, i32** %4, align 8
  %145 = call i32 @ASYNC_WAIT_CTX_free(i32* %144)
  %146 = call i32 (...) @ASYNC_cleanup_thread()
  store i32 1, i32* %1, align 4
  br label %147

147:                                              ; preds = %143, %137
  %148 = load i32, i32* %1, align 4
  ret i32 %148
}

declare dso_local i32 @ASYNC_init_thread(i32, i32) #1

declare dso_local i32* @ASYNC_WAIT_CTX_new(...) #1

declare dso_local i64 @ASYNC_start_job(i32**, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ASYNC_WAIT_CTX_get_all_fds(i32*, i64*, i64*) #1

declare dso_local i32 @ASYNC_WAIT_CTX_get_changed_fds(i32*, i64*, i64*, i64*, i64*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @ASYNC_WAIT_CTX_free(i32*) #1

declare dso_local i32 @ASYNC_cleanup_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
