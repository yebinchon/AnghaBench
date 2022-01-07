; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_survey.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_survey.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_SP = common dso_local global i32 0, align 4
@NN_SURVEYOR = common dso_local global i32 0, align 4
@NN_SURVEYOR_DEADLINE = common dso_local global i32 0, align 4
@SOCKET_ADDRESS = common dso_local global i32 0, align 4
@NN_RESPONDENT = common dso_local global i32 0, align 4
@EFSM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"ABC\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"DEF\00", align 1
@ETIMEDOUT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"GHI\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [7 x i8], align 1
  store i32 0, i32* %1, align 4
  %9 = load i32, i32* @AF_SP, align 4
  %10 = load i32, i32* @NN_SURVEYOR, align 4
  %11 = call i32 @test_socket(i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  store i32 500, i32* %7, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @NN_SURVEYOR, align 4
  %14 = load i32, i32* @NN_SURVEYOR_DEADLINE, align 4
  %15 = call i32 @nn_setsockopt(i32 %12, i32 %13, i32 %14, i32* %7, i32 4)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @errno_assert(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @SOCKET_ADDRESS, align 4
  %22 = call i32 @test_bind(i32 %20, i32 %21)
  %23 = load i32, i32* @AF_SP, align 4
  %24 = load i32, i32* @NN_RESPONDENT, align 4
  %25 = call i32 @test_socket(i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @SOCKET_ADDRESS, align 4
  %28 = call i32 @test_connect(i32 %26, i32 %27)
  %29 = load i32, i32* @AF_SP, align 4
  %30 = load i32, i32* @NN_RESPONDENT, align 4
  %31 = call i32 @test_socket(i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @SOCKET_ADDRESS, align 4
  %34 = call i32 @test_connect(i32 %32, i32 %33)
  %35 = load i32, i32* @AF_SP, align 4
  %36 = load i32, i32* @NN_RESPONDENT, align 4
  %37 = call i32 @test_socket(i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @SOCKET_ADDRESS, align 4
  %40 = call i32 @test_connect(i32 %38, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %43 = call i32 @nn_recv(i32 %41, i8* %42, i32 7, i32 0)
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %50

46:                                               ; preds = %0
  %47 = call i64 (...) @nn_errno()
  %48 = load i64, i64* @EFSM, align 8
  %49 = icmp eq i64 %47, %48
  br label %50

50:                                               ; preds = %46, %0
  %51 = phi i1 [ false, %0 ], [ %49, %46 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @errno_assert(i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @test_send(i32 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @test_recv(i32 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @test_send(i32 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @test_recv(i32 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @test_send(i32 %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @test_recv(i32 %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @test_recv(i32 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* %3, align 4
  %69 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %70 = call i32 @nn_recv(i32 %68, i8* %69, i32 7, i32 0)
  store i32 %70, i32* %2, align 4
  %71 = load i32, i32* %2, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %77

73:                                               ; preds = %50
  %74 = call i64 (...) @nn_errno()
  %75 = load i64, i64* @ETIMEDOUT, align 8
  %76 = icmp eq i64 %74, %75
  br label %77

77:                                               ; preds = %73, %50
  %78 = phi i1 [ false, %50 ], [ %76, %73 ]
  %79 = zext i1 %78 to i32
  %80 = call i32 @errno_assert(i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @test_recv(i32 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @test_send(i32 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @test_send(i32 %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* %3, align 4
  %88 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %89 = call i32 @nn_recv(i32 %87, i8* %88, i32 7, i32 0)
  store i32 %89, i32* %2, align 4
  %90 = load i32, i32* %2, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %96

92:                                               ; preds = %77
  %93 = call i64 (...) @nn_errno()
  %94 = load i64, i64* @ETIMEDOUT, align 8
  %95 = icmp eq i64 %93, %94
  br label %96

96:                                               ; preds = %92, %77
  %97 = phi i1 [ false, %77 ], [ %95, %92 ]
  %98 = zext i1 %97 to i32
  %99 = call i32 @errno_assert(i32 %98)
  %100 = load i32, i32* %3, align 4
  %101 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %102 = call i32 @nn_recv(i32 %100, i8* %101, i32 7, i32 0)
  store i32 %102, i32* %2, align 4
  %103 = load i32, i32* %2, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = call i64 (...) @nn_errno()
  %107 = load i64, i64* @EFSM, align 8
  %108 = icmp eq i64 %106, %107
  br label %109

109:                                              ; preds = %105, %96
  %110 = phi i1 [ false, %96 ], [ %108, %105 ]
  %111 = zext i1 %110 to i32
  %112 = call i32 @errno_assert(i32 %111)
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @test_close(i32 %113)
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @test_close(i32 %115)
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @test_close(i32 %117)
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @test_close(i32 %119)
  ret i32 0
}

declare dso_local i32 @test_socket(i32, i32) #1

declare dso_local i32 @nn_setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @errno_assert(i32) #1

declare dso_local i32 @test_bind(i32, i32) #1

declare dso_local i32 @test_connect(i32, i32) #1

declare dso_local i32 @nn_recv(i32, i8*, i32, i32) #1

declare dso_local i64 @nn_errno(...) #1

declare dso_local i32 @test_send(i32, i8*) #1

declare dso_local i32 @test_recv(i32, i8*) #1

declare dso_local i32 @test_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
