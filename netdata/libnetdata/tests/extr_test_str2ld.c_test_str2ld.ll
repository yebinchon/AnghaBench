; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/tests/extr_test_str2ld.c_test_str2ld.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/tests/extr_test_str2ld.c_test_str2ld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"1.2345678\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"-35.6\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"0.00123\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"23842384234234.2\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c".1\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"1.2e-10\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"1wrong\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@__const.test_str2ld.values = private unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* null], align 16
@.str.10 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @test_str2ld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_str2ld(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca [11 x i8*], align 16
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8** %0, i8*** %2, align 8
  %9 = load i8**, i8*** %2, align 8
  %10 = bitcast [11 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([11 x i8*]* @__const.test_str2ld.values to i8*), i64 88, i1 false)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %61, %1
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [11 x i8*], [11 x i8*]* %3, i64 0, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %64

17:                                               ; preds = %11
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [11 x i8*], [11 x i8*]* %3, i64 0, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @str2ld(i8* %21, i8** %5)
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [11 x i8*], [11 x i8*]* %3, i64 0, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strtold(i8* %26, i8** %6)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @isnan(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %17
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @isnan(i64 %32)
  %34 = call i32 @assert_true(i64 %33)
  br label %57

35:                                               ; preds = %17
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @isinf(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @isinf(i64 %40)
  %42 = call i32 @assert_true(i64 %41)
  br label %56

43:                                               ; preds = %35
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %8, align 8
  %50 = sub nsw i64 %48, %49
  %51 = call double @abs(i64 %50)
  %52 = fcmp ogt double %51, 0x3EB0C6F7A0B5ED8D
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert_false(i32 %53)
  br label %55

55:                                               ; preds = %47, %43
  br label %56

56:                                               ; preds = %55, %39
  br label %57

57:                                               ; preds = %56, %31
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @assert_ptr_equal(i8* %58, i8* %59)
  br label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %11

64:                                               ; preds = %11
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @str2ld(i8*, i8**) #2

declare dso_local i64 @strtold(i8*, i8**) #2

declare dso_local i64 @isnan(i64) #2

declare dso_local i32 @assert_true(i64) #2

declare dso_local i64 @isinf(i64) #2

declare dso_local i32 @assert_false(i32) #2

declare dso_local double @abs(i64) #2

declare dso_local i32 @assert_ptr_equal(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
