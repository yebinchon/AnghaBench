; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_alloc_vprintf.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_alloc_vprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"123456789\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_alloc_vprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_alloc_vprintf() #0 {
  %1 = alloca [5 x i8], align 1
  %2 = alloca i8*, align 8
  %3 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  store i8* %3, i8** %2, align 8
  %4 = call i32 @avt(i8** %2, i32 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 123)
  %5 = call i32 @ASSERT_EQ(i32 %4, i32 3)
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %8 = icmp eq i8* %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @ASSERT_STREQ(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @avt(i8** %2, i32 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 123456789)
  %14 = call i32 @ASSERT_EQ(i32 %13, i32 9)
  %15 = load i8*, i8** %2, align 8
  %16 = getelementptr inbounds [5 x i8], [5 x i8]* %1, i64 0, i64 0
  %17 = icmp ne i8* %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @ASSERT_STREQ(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @free(i8* %22)
  ret i8* null
}

declare dso_local i32 @ASSERT_EQ(i32, i32) #1

declare dso_local i32 @avt(i8**, i32, i8*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @ASSERT_STREQ(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
