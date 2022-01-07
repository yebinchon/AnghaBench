; ModuleID = '/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-value-pairs.c_test6.c'
source_filename = "/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-value-pairs.c_test6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@test6.base = internal global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"test6\00", align 1
@arl_strtoull = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@values6 = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"rss\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"rss_huge\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"mapped_file\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"writeback\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"pgpgin\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"pgpgout\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"pgfault\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"pgmajfault\00", align 1
@pairs = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test6() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @test6.base, align 8
  %3 = icmp ne i32* %2, null
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  %6 = call i64 @unlikely(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %55

8:                                                ; preds = %0
  %9 = load i32, i32* @arl_strtoull, align 4
  %10 = call i32* @arl_create(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %9, i32 60)
  store i32* %10, i32** @test6.base, align 8
  %11 = load i32*, i32** @test6.base, align 8
  %12 = load i32*, i32** @values6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = call i32 @arl_expect_custom(i32* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* %13)
  %15 = load i32*, i32** @test6.base, align 8
  %16 = load i32*, i32** @values6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = call i32 @arl_expect_custom(i32* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* %17)
  %19 = load i32*, i32** @test6.base, align 8
  %20 = load i32*, i32** @values6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = call i32 @arl_expect_custom(i32* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* null, i32* %21)
  %23 = load i32*, i32** @test6.base, align 8
  %24 = load i32*, i32** @values6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = call i32 @arl_expect_custom(i32* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* null, i32* %25)
  %27 = load i32*, i32** @test6.base, align 8
  %28 = load i32*, i32** @values6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = call i32 @arl_expect_custom(i32* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* null, i32* %29)
  %31 = load i32*, i32** @test6.base, align 8
  %32 = load i32*, i32** @values6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 5
  %34 = call i32 @arl_expect_custom(i32* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* null, i32* %33)
  %35 = load i32*, i32** @test6.base, align 8
  %36 = load i32*, i32** @values6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 6
  %38 = call i32 @arl_expect_custom(i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* null, i32* %37)
  %39 = load i32*, i32** @test6.base, align 8
  %40 = load i32*, i32** @values6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 7
  %42 = call i32 @arl_expect_custom(i32* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32* null, i32* %41)
  %43 = load i32*, i32** @test6.base, align 8
  %44 = load i32*, i32** @values6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 8
  %46 = call i32 @arl_expect_custom(i32* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32* null, i32* %45)
  %47 = load i32*, i32** @test6.base, align 8
  %48 = load i32*, i32** @values6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 9
  %50 = call i32 @arl_expect_custom(i32* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32* null, i32* %49)
  %51 = load i32*, i32** @test6.base, align 8
  %52 = load i32*, i32** @values6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 10
  %54 = call i32 @arl_expect_custom(i32* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32* null, i32* %53)
  br label %55

55:                                               ; preds = %8, %0
  %56 = load i32*, i32** @test6.base, align 8
  %57 = call i32 @arl_begin(i32* %56)
  store i32 0, i32* %1, align 4
  br label %58

58:                                               ; preds = %84, %55
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pairs, align 8
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %58
  %67 = load i32*, i32** @test6.base, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pairs, align 8
  %69 = load i32, i32* %1, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pairs, align 8
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @arl_check(i32* %67, i64 %73, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %66
  br label %87

83:                                               ; preds = %66
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %1, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %1, align 4
  br label %58

87:                                               ; preds = %82, %58
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @arl_create(i8*, i32, i32) #1

declare dso_local i32 @arl_expect_custom(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @arl_begin(i32*) #1

declare dso_local i64 @arl_check(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
