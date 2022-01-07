; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_test_safe_strtoll.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_test_safe_strtoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"+123\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"-123\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"123BOGUS\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"92837498237498237498029383\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c" issue221\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"18446744073709551615\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"9223372036854775807\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"-9223372036854775809\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" 123 foo\00", align 1
@TEST_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_safe_strtoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_safe_strtoll() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @safe_strtoll(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %1)
  %3 = call i32 @assert(i32 %2)
  %4 = load i32, i32* %1, align 4
  %5 = icmp eq i32 %4, 123
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = call i32 @safe_strtoll(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %1)
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* %1, align 4
  %11 = icmp eq i32 %10, 123
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = call i32 @safe_strtoll(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %1)
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* %1, align 4
  %17 = icmp eq i32 %16, -123
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = call i32 @safe_strtoll(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32* %1)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = call i32 @safe_strtoll(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %1)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = call i32 @safe_strtoll(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32* %1)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = call i32 @safe_strtoll(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* %1)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = call i32 @safe_strtoll(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32* %1)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = call i32 @safe_strtoll(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32* %1)
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp eq i64 %48, 9223372036854775807
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = call i32 @safe_strtoll(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32* %1)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = call i32 @safe_strtoll(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32* %1)
  %58 = call i32 @assert(i32 %57)
  %59 = load i32, i32* %1, align 4
  %60 = icmp eq i32 %59, 123
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* @TEST_PASS, align 4
  ret i32 %63
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @safe_strtoll(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
