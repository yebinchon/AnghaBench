; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_parse_address.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_parse_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.socket_address = type { i32 }

@test_parse_address.valid = internal global [7 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"1.2.3.4:1\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"tcp://123\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"udp://0.0.0.0:99\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"tcp://localhost:99\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c":8080\00", align 1
@test_parse_address.protos = internal constant [6 x i32] [i32 128, i32 128, i32 128, i32 129, i32 128, i32 128], align 16
@test_parse_address.need_lookup = internal global [3 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* null], align 16
@.str.6 = private unnamed_addr constant [15 x i8] c"udp://a.com:53\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"locl_host:12\00", align 1
@test_parse_address.invalid = internal global [10 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i8* null], align 16
@.str.8 = private unnamed_addr constant [6 x i8] c"99999\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"1k\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"1.2.3\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"1.2.3.4:\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"1.2.3.4:2p\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"blah://12\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c":123x\00", align 1
@.str.15 = private unnamed_addr constant [70 x i8] c"veeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeery.long:12345\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"udp://missingport\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_parse_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_parse_address() #0 {
  %1 = alloca [50 x i8], align 16
  %2 = alloca %union.socket_address, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %27, %0
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [7 x i8*], [7 x i8*]* @test_parse_address.valid, i64 0, i64 %7
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %5
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [7 x i8*], [7 x i8*]* @test_parse_address.valid, i64 0, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds [50 x i8], [50 x i8]* %1, i64 0, i64 0
  %17 = call i32 @mg_parse_address(i8* %15, %union.socket_address* %2, i32* %4, i8* %16, i32 50)
  %18 = icmp sgt i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* @test_parse_address.protos, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ASSERT_EQ(i32 %21, i32 %25)
  br label %27

27:                                               ; preds = %11
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %5

30:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %45, %30
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [10 x i8*], [10 x i8*]* @test_parse_address.invalid, i64 0, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [10 x i8*], [10 x i8*]* @test_parse_address.invalid, i64 0, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds [50 x i8], [50 x i8]* %1, i64 0, i64 0
  %43 = call i32 @mg_parse_address(i8* %41, %union.socket_address* %2, i32* %4, i8* %42, i32 50)
  %44 = call i32 @ASSERT_EQ(i32 %43, i32 -1)
  br label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %31

48:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %63, %48
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [3 x i8*], [3 x i8*]* @test_parse_address.need_lookup, i64 0, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x i8*], [3 x i8*]* @test_parse_address.need_lookup, i64 0, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds [50 x i8], [50 x i8]* %1, i64 0, i64 0
  %61 = call i32 @mg_parse_address(i8* %59, %union.socket_address* %2, i32* %4, i8* %60, i32 50)
  %62 = call i32 @ASSERT_EQ(i32 %61, i32 0)
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %49

66:                                               ; preds = %49
  ret i8* null
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mg_parse_address(i8*, %union.socket_address*, i32*, i8*, i32) #1

declare dso_local i32 @ASSERT_EQ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
