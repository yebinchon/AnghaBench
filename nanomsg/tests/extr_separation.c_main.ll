; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_separation.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_separation.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@AF_SP = common dso_local global i32 0, align 4
@NN_PAIR = common dso_local global i32 0, align 4
@SOCKET_ADDRESS_INPROC = common dso_local global i8* null, align 8
@NN_PULL = common dso_local global i32 0, align 4
@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_SNDTIMEO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ABC\00", align 1
@ETIMEDOUT = common dso_local global i64 0, align 8
@SOCKET_ADDRESS_IPC = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @get_test_port(i32 %12, i8** %13)
  %15 = call i32 @test_addr_from(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @AF_SP, align 4
  %17 = load i32, i32* @NN_PAIR, align 4
  %18 = call i32 @test_socket(i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i8*, i8** @SOCKET_ADDRESS_INPROC, align 8
  %21 = call i32 @test_bind(i32 %19, i8* %20)
  %22 = load i32, i32* @AF_SP, align 4
  %23 = load i32, i32* @NN_PULL, align 4
  %24 = call i32 @test_socket(i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i8*, i8** @SOCKET_ADDRESS_INPROC, align 8
  %27 = call i32 @test_connect(i32 %25, i8* %26)
  store i32 100, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @NN_SOL_SOCKET, align 4
  %30 = load i32, i32* @NN_SNDTIMEO, align 4
  %31 = call i32 @test_setsockopt(i32 %28, i32 %29, i32 %30, i32* %9, i32 4)
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @nn_send(i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3, i32 0)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = call i64 (...) @nn_errno()
  %38 = load i64, i64* @ETIMEDOUT, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %36, %2
  %41 = phi i1 [ false, %2 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @errno_assert(i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @test_close(i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @test_close(i32 %46)
  %48 = load i32, i32* @AF_SP, align 4
  %49 = load i32, i32* @NN_PULL, align 4
  %50 = call i32 @test_socket(i32 %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i8*, i8** @SOCKET_ADDRESS_INPROC, align 8
  %53 = call i32 @test_connect(i32 %51, i8* %52)
  %54 = load i32, i32* @AF_SP, align 4
  %55 = load i32, i32* @NN_PAIR, align 4
  %56 = call i32 @test_socket(i32 %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i8*, i8** @SOCKET_ADDRESS_INPROC, align 8
  %59 = call i32 @test_bind(i32 %57, i8* %58)
  store i32 100, i32* %9, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @NN_SOL_SOCKET, align 4
  %62 = load i32, i32* @NN_SNDTIMEO, align 4
  %63 = call i32 @test_setsockopt(i32 %60, i32 %61, i32 %62, i32* %9, i32 4)
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @nn_send(i32 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3, i32 0)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %40
  %69 = call i64 (...) @nn_errno()
  %70 = load i64, i64* @ETIMEDOUT, align 8
  %71 = icmp eq i64 %69, %70
  br label %72

72:                                               ; preds = %68, %40
  %73 = phi i1 [ false, %40 ], [ %71, %68 ]
  %74 = zext i1 %73 to i32
  %75 = call i32 @errno_assert(i32 %74)
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @test_close(i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @test_close(i32 %78)
  %80 = load i32, i32* @AF_SP, align 4
  %81 = load i32, i32* @NN_PAIR, align 4
  %82 = call i32 @test_socket(i32 %80, i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i8*, i8** @SOCKET_ADDRESS_IPC, align 8
  %85 = call i32 @test_bind(i32 %83, i8* %84)
  %86 = load i32, i32* @AF_SP, align 4
  %87 = load i32, i32* @NN_PULL, align 4
  %88 = call i32 @test_socket(i32 %86, i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i8*, i8** @SOCKET_ADDRESS_IPC, align 8
  %91 = call i32 @test_connect(i32 %89, i8* %90)
  store i32 100, i32* %9, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @NN_SOL_SOCKET, align 4
  %94 = load i32, i32* @NN_SNDTIMEO, align 4
  %95 = call i32 @test_setsockopt(i32 %92, i32 %93, i32 %94, i32* %9, i32 4)
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @nn_send(i32 %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3, i32 0)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %72
  %101 = call i64 (...) @nn_errno()
  %102 = load i64, i64* @ETIMEDOUT, align 8
  %103 = icmp eq i64 %101, %102
  br label %104

104:                                              ; preds = %100, %72
  %105 = phi i1 [ false, %72 ], [ %103, %100 ]
  %106 = zext i1 %105 to i32
  %107 = call i32 @errno_assert(i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @test_close(i32 %108)
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @test_close(i32 %110)
  %112 = load i32, i32* @AF_SP, align 4
  %113 = load i32, i32* @NN_PAIR, align 4
  %114 = call i32 @test_socket(i32 %112, i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %117 = call i32 @test_bind(i32 %115, i8* %116)
  %118 = load i32, i32* @AF_SP, align 4
  %119 = load i32, i32* @NN_PULL, align 4
  %120 = call i32 @test_socket(i32 %118, i32 %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %123 = call i32 @test_connect(i32 %121, i8* %122)
  store i32 100, i32* %9, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @NN_SOL_SOCKET, align 4
  %126 = load i32, i32* @NN_SNDTIMEO, align 4
  %127 = call i32 @test_setsockopt(i32 %124, i32 %125, i32 %126, i32* %9, i32 4)
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @nn_send(i32 %128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3, i32 0)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %104
  %133 = call i64 (...) @nn_errno()
  %134 = load i64, i64* @ETIMEDOUT, align 8
  %135 = icmp eq i64 %133, %134
  br label %136

136:                                              ; preds = %132, %104
  %137 = phi i1 [ false, %104 ], [ %135, %132 ]
  %138 = zext i1 %137 to i32
  %139 = call i32 @errno_assert(i32 %138)
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @test_close(i32 %140)
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @test_close(i32 %142)
  ret i32 0
}

declare dso_local i32 @test_addr_from(i8*, i8*, i8*, i32) #1

declare dso_local i32 @get_test_port(i32, i8**) #1

declare dso_local i32 @test_socket(i32, i32) #1

declare dso_local i32 @test_bind(i32, i8*) #1

declare dso_local i32 @test_connect(i32, i8*) #1

declare dso_local i32 @test_setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @nn_send(i32, i8*, i32, i32) #1

declare dso_local i32 @errno_assert(i32) #1

declare dso_local i64 @nn_errno(...) #1

declare dso_local i32 @test_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
