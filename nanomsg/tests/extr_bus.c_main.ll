; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_bus.c_main.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_bus.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_SP = common dso_local global i32 0, align 4
@NN_BUS = common dso_local global i32 0, align 4
@SOCKET_ADDRESS_A = common dso_local global i32 0, align 4
@SOCKET_ADDRESS_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"AB\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ABC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x i8], align 1
  store i32 0, i32* %1, align 4
  %7 = load i32, i32* @AF_SP, align 4
  %8 = load i32, i32* @NN_BUS, align 4
  %9 = call i32 @test_socket(i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SOCKET_ADDRESS_A, align 4
  %12 = call i32 @test_bind(i32 %10, i32 %11)
  %13 = load i32, i32* @AF_SP, align 4
  %14 = load i32, i32* @NN_BUS, align 4
  %15 = call i32 @test_socket(i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SOCKET_ADDRESS_B, align 4
  %18 = call i32 @test_bind(i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @SOCKET_ADDRESS_A, align 4
  %21 = call i32 @test_connect(i32 %19, i32 %20)
  %22 = load i32, i32* @AF_SP, align 4
  %23 = load i32, i32* @NN_BUS, align 4
  %24 = call i32 @test_socket(i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @SOCKET_ADDRESS_A, align 4
  %27 = call i32 @test_connect(i32 %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SOCKET_ADDRESS_B, align 4
  %30 = call i32 @test_connect(i32 %28, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @test_send(i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @test_send(i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @test_send(i32 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* %3, align 4
  %38 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %39 = call i32 @nn_recv(i32 %37, i8* %38, i32 3, i32 0)
  store i32 %39, i32* %2, align 4
  %40 = load i32, i32* %2, align 4
  %41 = icmp sge i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @errno_assert(i32 %42)
  %44 = load i32, i32* %2, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %49, label %46

46:                                               ; preds = %0
  %47 = load i32, i32* %2, align 4
  %48 = icmp eq i32 %47, 3
  br label %49

49:                                               ; preds = %46, %0
  %50 = phi i1 [ true, %0 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @nn_assert(i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %55 = call i32 @nn_recv(i32 %53, i8* %54, i32 3, i32 0)
  store i32 %55, i32* %2, align 4
  %56 = load i32, i32* %2, align 4
  %57 = icmp sge i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @errno_assert(i32 %58)
  %60 = load i32, i32* %2, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %65, label %62

62:                                               ; preds = %49
  %63 = load i32, i32* %2, align 4
  %64 = icmp eq i32 %63, 3
  br label %65

65:                                               ; preds = %62, %49
  %66 = phi i1 [ true, %49 ], [ %64, %62 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @nn_assert(i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %71 = call i32 @nn_recv(i32 %69, i8* %70, i32 3, i32 0)
  store i32 %71, i32* %2, align 4
  %72 = load i32, i32* %2, align 4
  %73 = icmp sge i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @errno_assert(i32 %74)
  %76 = load i32, i32* %2, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %81, label %78

78:                                               ; preds = %65
  %79 = load i32, i32* %2, align 4
  %80 = icmp eq i32 %79, 3
  br label %81

81:                                               ; preds = %78, %65
  %82 = phi i1 [ true, %65 ], [ %80, %78 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @nn_assert(i32 %83)
  %85 = load i32, i32* %4, align 4
  %86 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %87 = call i32 @nn_recv(i32 %85, i8* %86, i32 3, i32 0)
  store i32 %87, i32* %2, align 4
  %88 = load i32, i32* %2, align 4
  %89 = icmp sge i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @errno_assert(i32 %90)
  %92 = load i32, i32* %2, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %97, label %94

94:                                               ; preds = %81
  %95 = load i32, i32* %2, align 4
  %96 = icmp eq i32 %95, 3
  br label %97

97:                                               ; preds = %94, %81
  %98 = phi i1 [ true, %81 ], [ %96, %94 ]
  %99 = zext i1 %98 to i32
  %100 = call i32 @nn_assert(i32 %99)
  %101 = load i32, i32* %5, align 4
  %102 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %103 = call i32 @nn_recv(i32 %101, i8* %102, i32 3, i32 0)
  store i32 %103, i32* %2, align 4
  %104 = load i32, i32* %2, align 4
  %105 = icmp sge i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @errno_assert(i32 %106)
  %108 = load i32, i32* %2, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %113, label %110

110:                                              ; preds = %97
  %111 = load i32, i32* %2, align 4
  %112 = icmp eq i32 %111, 2
  br label %113

113:                                              ; preds = %110, %97
  %114 = phi i1 [ true, %97 ], [ %112, %110 ]
  %115 = zext i1 %114 to i32
  %116 = call i32 @nn_assert(i32 %115)
  %117 = load i32, i32* %5, align 4
  %118 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %119 = call i32 @nn_recv(i32 %117, i8* %118, i32 3, i32 0)
  store i32 %119, i32* %2, align 4
  %120 = load i32, i32* %2, align 4
  %121 = icmp sge i32 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i32 @errno_assert(i32 %122)
  %124 = load i32, i32* %2, align 4
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %129, label %126

126:                                              ; preds = %113
  %127 = load i32, i32* %2, align 4
  %128 = icmp eq i32 %127, 2
  br label %129

129:                                              ; preds = %126, %113
  %130 = phi i1 [ true, %113 ], [ %128, %126 ]
  %131 = zext i1 %130 to i32
  %132 = call i32 @nn_assert(i32 %131)
  %133 = call i32 @nn_sleep(i32 10)
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @test_close(i32 %134)
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @test_close(i32 %136)
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @test_close(i32 %138)
  ret i32 0
}

declare dso_local i32 @test_socket(i32, i32) #1

declare dso_local i32 @test_bind(i32, i32) #1

declare dso_local i32 @test_connect(i32, i32) #1

declare dso_local i32 @test_send(i32, i8*) #1

declare dso_local i32 @nn_recv(i32, i8*, i32, i32) #1

declare dso_local i32 @errno_assert(i32) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_sleep(i32) #1

declare dso_local i32 @test_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
