; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_surveyttl.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_surveyttl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_thread = type { i32 }

@socket_address_a = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@socket_address_b = common dso_local global i32 0, align 4
@AF_SP_RAW = common dso_local global i32 0, align 4
@NN_RESPONDENT = common dso_local global i32 0, align 4
@dev0 = common dso_local global i8* null, align 8
@NN_SURVEYOR = common dso_local global i32 0, align 4
@dev1 = common dso_local global i8* null, align 8
@device = common dso_local global i32 0, align 4
@AF_SP = common dso_local global i32 0, align 4
@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_RCVTIMEO = common dso_local global i32 0, align 4
@NN_MAXTTL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"SURVEY\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"REPLYXYZ\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"DROPTHIS\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"DONTDROP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nn_thread, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @get_test_port(i32 %14, i8** %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* @socket_address_a, align 4
  %18 = load i32, i32* %13, align 4
  %19 = call i32 @test_addr_from(i32 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @socket_address_b, align 4
  %21 = load i32, i32* %13, align 4
  %22 = add nsw i32 %21, 1
  %23 = call i32 @test_addr_from(i32 %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @AF_SP_RAW, align 4
  %25 = load i32, i32* @NN_RESPONDENT, align 4
  %26 = call i8* @test_socket(i32 %24, i32 %25)
  store i8* %26, i8** @dev0, align 8
  %27 = load i32, i32* @AF_SP_RAW, align 4
  %28 = load i32, i32* @NN_SURVEYOR, align 4
  %29 = call i8* @test_socket(i32 %27, i32 %28)
  store i8* %29, i8** @dev1, align 8
  %30 = load i8*, i8** @dev0, align 8
  %31 = load i32, i32* @socket_address_a, align 4
  %32 = call i32 @test_bind(i8* %30, i32 %31)
  %33 = load i8*, i8** @dev1, align 8
  %34 = load i32, i32* @socket_address_b, align 4
  %35 = call i32 @test_bind(i8* %33, i32 %34)
  %36 = load i32, i32* @device, align 4
  %37 = call i32 @nn_thread_init(%struct.nn_thread* %8, i32 %36, i32* null)
  %38 = load i32, i32* @AF_SP, align 4
  %39 = load i32, i32* @NN_SURVEYOR, align 4
  %40 = call i8* @test_socket(i32 %38, i32 %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @AF_SP, align 4
  %43 = load i32, i32* @NN_RESPONDENT, align 4
  %44 = call i8* @test_socket(i32 %42, i32 %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @socket_address_a, align 4
  %48 = call i32 @test_connect(i32 %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @socket_address_b, align 4
  %51 = call i32 @test_connect(i32 %49, i32 %50)
  %52 = call i32 @nn_sleep(i32 100)
  store i32 100, i32* %9, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @NN_SOL_SOCKET, align 4
  %55 = load i32, i32* @NN_RCVTIMEO, align 4
  %56 = call i32 @test_setsockopt(i32 %53, i32 %54, i32 %55, i32* %9, i32 4)
  store i32 100, i32* %9, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @NN_SOL_SOCKET, align 4
  %59 = load i32, i32* @NN_RCVTIMEO, align 4
  %60 = call i32 @test_setsockopt(i32 %57, i32 %58, i32 %59, i32* %9, i32 4)
  store i64 4, i64* %11, align 8
  store i32 -1, i32* %10, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @NN_SOL_SOCKET, align 4
  %63 = load i32, i32* @NN_MAXTTL, align 4
  %64 = call i32 @nn_getsockopt(i32 %61, i32 %62, i32 %63, i32* %10, i64* %11)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @nn_assert(i32 %67)
  %69 = load i64, i64* %11, align 8
  %70 = icmp eq i64 %69, 4
  %71 = zext i1 %70 to i32
  %72 = call i32 @nn_assert(i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 8
  %75 = zext i1 %74 to i32
  %76 = call i32 @nn_assert(i32 %75)
  store i32 -1, i32* %10, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @NN_SOL_SOCKET, align 4
  %79 = load i32, i32* @NN_MAXTTL, align 4
  %80 = call i32 @nn_setsockopt(i32 %77, i32 %78, i32 %79, i32* %10, i32 4)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %2
  %84 = call i64 (...) @nn_errno()
  %85 = load i64, i64* @EINVAL, align 8
  %86 = icmp eq i64 %84, %85
  br label %87

87:                                               ; preds = %83, %2
  %88 = phi i1 [ false, %2 ], [ %86, %83 ]
  %89 = zext i1 %88 to i32
  %90 = call i32 @nn_assert(i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = icmp eq i32 %91, -1
  %93 = zext i1 %92 to i32
  %94 = call i32 @nn_assert(i32 %93)
  store i32 0, i32* %10, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @NN_SOL_SOCKET, align 4
  %97 = load i32, i32* @NN_MAXTTL, align 4
  %98 = call i32 @nn_setsockopt(i32 %95, i32 %96, i32 %97, i32* %10, i32 4)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %87
  %102 = call i64 (...) @nn_errno()
  %103 = load i64, i64* @EINVAL, align 8
  %104 = icmp eq i64 %102, %103
  br label %105

105:                                              ; preds = %101, %87
  %106 = phi i1 [ false, %87 ], [ %104, %101 ]
  %107 = zext i1 %106 to i32
  %108 = call i32 @nn_assert(i32 %107)
  %109 = load i32, i32* %10, align 4
  %110 = icmp eq i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @nn_assert(i32 %111)
  store i32 8, i32* %10, align 4
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @NN_SOL_SOCKET, align 4
  %115 = load i32, i32* @NN_MAXTTL, align 4
  %116 = call i32 @nn_setsockopt(i32 %113, i32 %114, i32 %115, i32* %10, i32 1)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %105
  %120 = call i64 (...) @nn_errno()
  %121 = load i64, i64* @EINVAL, align 8
  %122 = icmp eq i64 %120, %121
  br label %123

123:                                              ; preds = %119, %105
  %124 = phi i1 [ false, %105 ], [ %122, %119 ]
  %125 = zext i1 %124 to i32
  %126 = call i32 @nn_assert(i32 %125)
  %127 = load i32, i32* %10, align 4
  %128 = icmp eq i32 %127, 8
  %129 = zext i1 %128 to i32
  %130 = call i32 @nn_assert(i32 %129)
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @test_send(i32 %131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @test_recv(i32 %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @test_send(i32 %135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @test_recv(i32 %137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @NN_SOL_SOCKET, align 4
  %141 = load i32, i32* @NN_MAXTTL, align 4
  %142 = call i32 @test_setsockopt(i32 %139, i32 %140, i32 %141, i32* %10, i32 4)
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @NN_SOL_SOCKET, align 4
  %145 = load i32, i32* @NN_MAXTTL, align 4
  %146 = call i32 @test_setsockopt(i32 %143, i32 %144, i32 %145, i32* %10, i32 4)
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @test_send(i32 %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @ETIMEDOUT, align 4
  %151 = call i32 @test_drop(i32 %149, i32 %150)
  store i32 2, i32* %10, align 4
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @NN_SOL_SOCKET, align 4
  %154 = load i32, i32* @NN_MAXTTL, align 4
  %155 = call i32 @test_setsockopt(i32 %152, i32 %153, i32 %154, i32* %10, i32 4)
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* @NN_SOL_SOCKET, align 4
  %158 = load i32, i32* @NN_MAXTTL, align 4
  %159 = call i32 @test_setsockopt(i32 %156, i32 %157, i32 %158, i32* %10, i32 4)
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @test_send(i32 %160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @test_recv(i32 %162, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @test_close(i32 %164)
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @test_close(i32 %166)
  %168 = call i32 (...) @nn_term()
  %169 = call i32 @nn_thread_term(%struct.nn_thread* %8)
  ret i32 0
}

declare dso_local i32 @get_test_port(i32, i8**) #1

declare dso_local i32 @test_addr_from(i32, i8*, i8*, i32) #1

declare dso_local i8* @test_socket(i32, i32) #1

declare dso_local i32 @test_bind(i8*, i32) #1

declare dso_local i32 @nn_thread_init(%struct.nn_thread*, i32, i32*) #1

declare dso_local i32 @test_connect(i32, i32) #1

declare dso_local i32 @nn_sleep(i32) #1

declare dso_local i32 @test_setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @nn_getsockopt(i32, i32, i32, i32*, i64*) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @nn_errno(...) #1

declare dso_local i32 @test_send(i32, i8*) #1

declare dso_local i32 @test_recv(i32, i8*) #1

declare dso_local i32 @test_drop(i32, i32) #1

declare dso_local i32 @test_close(i32) #1

declare dso_local i32 @nn_term(...) #1

declare dso_local i32 @nn_thread_term(%struct.nn_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
