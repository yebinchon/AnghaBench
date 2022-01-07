; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_bioprinttest.c_test_fp.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_bioprinttest.c_test_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@pw_params = common dso_local global %struct.TYPE_3__* null, align 8
@justprint = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"    {\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"    },\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_fp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store double 0x3FE5555555555555, double* %5, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pw_params, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %9
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %6, align 8
  %11 = load i64, i64* @justprint, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dofptest(i32 %16, i32 %17, double 0.000000e+00, i32 %21, i32 %24)
  %26 = call i64 @TEST_true(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %145

28:                                               ; preds = %15
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dofptest(i32 %29, i32 %30, double 6.700000e-01, i32 %34, i32 %37)
  %39 = call i64 @TEST_true(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %145

41:                                               ; preds = %28
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dofptest(i32 %42, i32 %43, double 0x3FE5555555555555, i32 %47, i32 %50)
  %52 = call i64 @TEST_true(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %145

54:                                               ; preds = %41
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dofptest(i32 %55, i32 %56, double 0x3F45D867C3ECE2A5, i32 %60, i32 %63)
  %65 = call i64 @TEST_true(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %145

67:                                               ; preds = %54
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dofptest(i32 %68, i32 %69, double 0x3F1179EC9CBD821D, i32 %73, i32 %76)
  %78 = call i64 @TEST_true(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %145

80:                                               ; preds = %67
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dofptest(i32 %81, i32 %82, double 0x401AAAAAAAAAAAAB, i32 %86, i32 %89)
  %91 = call i64 @TEST_true(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %145

93:                                               ; preds = %80
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %3, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dofptest(i32 %94, i32 %95, double 0x4050AAAAAAAAAAAB, i32 %99, i32 %102)
  %104 = call i64 @TEST_true(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %145

106:                                              ; preds = %93
  %107 = load i32, i32* %2, align 4
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %3, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dofptest(i32 %107, i32 %108, double 0x4084D55555555555, i32 %112, i32 %115)
  %117 = call i64 @TEST_true(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %145

119:                                              ; preds = %106
  %120 = load i32, i32* %2, align 4
  %121 = load i32, i32* %3, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %3, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @dofptest(i32 %120, i32 %121, double 0x40BA0AAAAAAAAAAB, i32 %125, i32 %128)
  %130 = call i64 @TEST_true(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %119
  %133 = load i32, i32* %2, align 4
  %134 = load i32, i32* %3, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %3, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @dofptest(i32 %133, i32 %134, double 0x40F046AAAAAAAAAB, i32 %138, i32 %141)
  %143 = call i64 @TEST_true(i32 %142)
  %144 = icmp ne i64 %143, 0
  br label %145

145:                                              ; preds = %132, %119, %106, %93, %80, %67, %54, %41, %28, %15
  %146 = phi i1 [ false, %119 ], [ false, %106 ], [ false, %93 ], [ false, %80 ], [ false, %67 ], [ false, %54 ], [ false, %41 ], [ false, %28 ], [ false, %15 ], [ %144, %132 ]
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %4, align 4
  %148 = load i64, i64* @justprint, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %145
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @TEST_true(i32) #1

declare dso_local i32 @dofptest(i32, i32, double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
