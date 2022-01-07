; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_mpi.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bntest.c_test_mpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@kMPITests = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_mpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_mpi(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [8 x i32], align 16
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @kMPITests, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %12
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %4, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = call i32* (...) @BN_new()
  store i32* %14, i32** %7, align 8
  %15 = call i32 @TEST_ptr(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @BN_asc2bn(i32** %7, i32 %20)
  %22 = call i32 @TEST_true(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17, %1
  br label %69

25:                                               ; preds = %17
  %26 = load i32*, i32** %7, align 8
  %27 = call i64 @BN_bn2mpi(i32* %26, i32* null)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @TEST_size_t_le(i64 %28, i32 32)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %69

32:                                               ; preds = %25
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %35 = call i64 @BN_bn2mpi(i32* %33, i32* %34)
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @TEST_size_t_eq(i64 %35, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @TEST_mem_eq(i32 %42, i32 %45, i32* %46, i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %39, %32
  br label %69

51:                                               ; preds = %39
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %53 = load i64, i64* %5, align 8
  %54 = call i32* @BN_mpi2bn(i32* %52, i64 %53, i32* null)
  store i32* %54, i32** %8, align 8
  %55 = call i32 @TEST_ptr(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %69

58:                                               ; preds = %51
  %59 = load i32*, i32** %7, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @TEST_BN_eq(i32* %59, i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @BN_free(i32* %64)
  br label %69

66:                                               ; preds = %58
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @BN_free(i32* %67)
  store i32 1, i32* %9, align 4
  br label %69

69:                                               ; preds = %66, %63, %57, %50, %31, %24
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @BN_free(i32* %70)
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @BN_asc2bn(i32**, i32) #1

declare dso_local i64 @BN_bn2mpi(i32*, i32*) #1

declare dso_local i32 @TEST_size_t_le(i64, i32) #1

declare dso_local i32 @TEST_size_t_eq(i64, i64) #1

declare dso_local i32 @TEST_mem_eq(i32, i32, i32*, i64) #1

declare dso_local i32* @BN_mpi2bn(i32*, i64, i32*) #1

declare dso_local i32 @TEST_BN_eq(i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
