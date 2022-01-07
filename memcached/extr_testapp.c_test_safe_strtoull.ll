; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_test_safe_strtoull.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_test_safe_strtoull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"+123\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"123BOGUS\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"92837498237498237498029383\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" issue221\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"18446744073709551615\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"18446744073709551616\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@TEST_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_safe_strtoull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_safe_strtoull() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @safe_strtoull(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %1)
  %3 = call i32 @assert(i32 %2)
  %4 = load i32, i32* %1, align 4
  %5 = icmp eq i32 %4, 123
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = call i32 @safe_strtoull(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %1)
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* %1, align 4
  %11 = icmp eq i32 %10, 123
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = call i32 @safe_strtoull(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32* %1)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = call i32 @safe_strtoull(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %1)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = call i32 @safe_strtoull(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32* %1)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = call i32 @safe_strtoull(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* %1)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = call i32 @safe_strtoull(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32* %1)
  %35 = call i32 @assert(i32 %34)
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp eq i64 %37, -1
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = call i32 @safe_strtoull(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32* %1)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = call i32 @safe_strtoull(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32* %1)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* @TEST_PASS, align 4
  ret i32 %51
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @safe_strtoull(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
