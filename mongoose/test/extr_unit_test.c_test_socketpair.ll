; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_socketpair.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_socketpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_socketpair.foo = internal constant [9 x i8] c"hi there\00", align 1
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"hi there\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_socketpair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_socketpair() #0 {
  %1 = alloca [2 x i32], align 4
  %2 = alloca [20 x i8], align 16
  %3 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %4 = load i32, i32* @SOCK_DGRAM, align 4
  %5 = call i32 @mg_socketpair(i32* %3, i32 %4)
  %6 = call i32 @ASSERT_EQ(i32 %5, i32 1)
  %7 = call i32 @ASSERT(i32 1)
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @send(i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_socketpair.foo, i64 0, i64 0), i32 9, i32 0)
  %11 = call i32 @ASSERT_EQ(i32 %10, i32 9)
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %15 = call i32 @recv(i32 %13, i8* %14, i32 20, i32 0)
  %16 = call i32 @ASSERT_EQ(i32 %15, i32 9)
  %17 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %18 = call i32 @ASSERT_STREQ(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @send(i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_socketpair.foo, i64 0, i64 0), i32 9, i32 0)
  %22 = call i32 @ASSERT_EQ(i32 %21, i32 9)
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %26 = call i32 @recv(i32 %24, i8* %25, i32 20, i32 0)
  %27 = call i32 @ASSERT_EQ(i32 %26, i32 9)
  %28 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %29 = call i32 @ASSERT_STREQ(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @closesocket(i32 %31)
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @closesocket(i32 %34)
  ret i8* null
}

declare dso_local i32 @ASSERT_EQ(i32, i32) #1

declare dso_local i32 @mg_socketpair(i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @ASSERT_STREQ(i8*, i8*) #1

declare dso_local i32 @closesocket(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
