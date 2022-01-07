; ModuleID = '/home/carl/AnghaBench/openssl/test/testutil/extr_driver.c_add_all_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/testutil/extr_driver.c_add_all_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 (i32)*, i32, i32 }

@num_tests = common dso_local global i64 0, align 8
@all_tests = common dso_local global %struct.TYPE_3__* null, align 8
@num_test_cases = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_all_tests(i8* %0, i32 (i32)* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 (i32)* %1, i32 (i32)** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i64, i64* @num_tests, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @all_tests, align 8
  %11 = call i64 @OSSL_NELEM(%struct.TYPE_3__* %10)
  %12 = icmp ne i64 %9, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @all_tests, align 8
  %17 = load i64, i64* @num_tests, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i8* %15, i8** %19, align 8
  %20 = load i32 (i32)*, i32 (i32)** %6, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @all_tests, align 8
  %22 = load i64, i64* @num_tests, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 (i32)* %20, i32 (i32)** %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @all_tests, align 8
  %27 = load i64, i64* @num_tests, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i32 %25, i32* %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @all_tests, align 8
  %32 = load i64, i64* @num_tests, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  store i32 %30, i32* %34, align 4
  %35 = load i64, i64* @num_tests, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* @num_tests, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @num_test_cases, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* @num_test_cases, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @OSSL_NELEM(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
