; ModuleID = '/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-line-parsing.c_test7.c'
source_filename = "/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-line-parsing.c_test7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.base = type { i32 }

@test7.base = internal global %struct.base* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@NUMBER1 = common dso_local global i32 0, align 4
@values6 = common dso_local global i32* null, align 8
@callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"rss\00", align 1
@NUMBER2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"rss_huge\00", align 1
@NUMBER3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"mapped_file\00", align 1
@NUMBER4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"writeback\00", align 1
@NUMBER5 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@NUMBER6 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@NUMBER7 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"pgpgin\00", align 1
@NUMBER8 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"pgpgout\00", align 1
@NUMBER9 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"pgfault\00", align 1
@NUMBER10 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"pgmajfault\00", align 1
@NUMBER11 = common dso_local global i32 0, align 4
@strings = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test7() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.base*, %struct.base** @test7.base, align 8
  %3 = icmp ne %struct.base* %2, null
  %4 = xor i1 %3, true
  %5 = zext i1 %4 to i32
  %6 = call i64 @unlikely(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %75

8:                                                ; preds = %0
  %9 = load %struct.base*, %struct.base** @test7.base, align 8
  %10 = load i32, i32* @NUMBER1, align 4
  %11 = load i32*, i32** @values6, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* @callback, align 4
  %14 = call %struct.base* @entry(%struct.base* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %10, i32* %12, i32 %13)
  store %struct.base* %14, %struct.base** @test7.base, align 8
  %15 = load %struct.base*, %struct.base** @test7.base, align 8
  %16 = load i32, i32* @NUMBER2, align 4
  %17 = load i32*, i32** @values6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* @callback, align 4
  %20 = call %struct.base* @entry(%struct.base* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32* %18, i32 %19)
  store %struct.base* %20, %struct.base** @test7.base, align 8
  %21 = load %struct.base*, %struct.base** @test7.base, align 8
  %22 = load i32, i32* @NUMBER3, align 4
  %23 = load i32*, i32** @values6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* @callback, align 4
  %26 = call %struct.base* @entry(%struct.base* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32* %24, i32 %25)
  store %struct.base* %26, %struct.base** @test7.base, align 8
  %27 = load %struct.base*, %struct.base** @test7.base, align 8
  %28 = load i32, i32* @NUMBER4, align 4
  %29 = load i32*, i32** @values6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* @callback, align 4
  %32 = call %struct.base* @entry(%struct.base* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %28, i32* %30, i32 %31)
  store %struct.base* %32, %struct.base** @test7.base, align 8
  %33 = load %struct.base*, %struct.base** @test7.base, align 8
  %34 = load i32, i32* @NUMBER5, align 4
  %35 = load i32*, i32** @values6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load i32, i32* @callback, align 4
  %38 = call %struct.base* @entry(%struct.base* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %34, i32* %36, i32 %37)
  store %struct.base* %38, %struct.base** @test7.base, align 8
  %39 = load %struct.base*, %struct.base** @test7.base, align 8
  %40 = load i32, i32* @NUMBER6, align 4
  %41 = load i32*, i32** @values6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 5
  %43 = load i32, i32* @callback, align 4
  %44 = call %struct.base* @entry(%struct.base* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %40, i32* %42, i32 %43)
  store %struct.base* %44, %struct.base** @test7.base, align 8
  %45 = load %struct.base*, %struct.base** @test7.base, align 8
  %46 = load i32, i32* @NUMBER7, align 4
  %47 = load i32*, i32** @values6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 6
  %49 = load i32, i32* @callback, align 4
  %50 = call %struct.base* @entry(%struct.base* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %46, i32* %48, i32 %49)
  store %struct.base* %50, %struct.base** @test7.base, align 8
  %51 = load %struct.base*, %struct.base** @test7.base, align 8
  %52 = load i32, i32* @NUMBER8, align 4
  %53 = load i32*, i32** @values6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 7
  %55 = load i32, i32* @callback, align 4
  %56 = call %struct.base* @entry(%struct.base* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %52, i32* %54, i32 %55)
  store %struct.base* %56, %struct.base** @test7.base, align 8
  %57 = load %struct.base*, %struct.base** @test7.base, align 8
  %58 = load i32, i32* @NUMBER9, align 4
  %59 = load i32*, i32** @values6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 8
  %61 = load i32, i32* @callback, align 4
  %62 = call %struct.base* @entry(%struct.base* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %58, i32* %60, i32 %61)
  store %struct.base* %62, %struct.base** @test7.base, align 8
  %63 = load %struct.base*, %struct.base** @test7.base, align 8
  %64 = load i32, i32* @NUMBER10, align 4
  %65 = load i32*, i32** @values6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 9
  %67 = load i32, i32* @callback, align 4
  %68 = call %struct.base* @entry(%struct.base* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %64, i32* %66, i32 %67)
  store %struct.base* %68, %struct.base** @test7.base, align 8
  %69 = load %struct.base*, %struct.base** @test7.base, align 8
  %70 = load i32, i32* @NUMBER11, align 4
  %71 = load i32*, i32** @values6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 10
  %73 = load i32, i32* @callback, align 4
  %74 = call %struct.base* @entry(%struct.base* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %70, i32* %72, i32 %73)
  store %struct.base* %74, %struct.base** @test7.base, align 8
  br label %75

75:                                               ; preds = %8, %0
  %76 = load %struct.base*, %struct.base** @test7.base, align 8
  %77 = call i32 @begin(%struct.base* %76)
  store i32 0, i32* %1, align 4
  br label %78

78:                                               ; preds = %96, %75
  %79 = load i64*, i64** @strings, align 8
  %80 = load i32, i32* %1, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %78
  %86 = load %struct.base*, %struct.base** @test7.base, align 8
  %87 = load i64*, i64** @strings, align 8
  %88 = load i32, i32* %1, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @check(%struct.base* %86, i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %99

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %1, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %1, align 4
  br label %78

99:                                               ; preds = %94, %78
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.base* @entry(%struct.base*, i8*, i32, i32*, i32) #1

declare dso_local i32 @begin(%struct.base*) #1

declare dso_local i64 @check(%struct.base*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
