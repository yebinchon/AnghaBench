; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_dns_encode.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_dns_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8 }

@MG_DNS_A_RECORD = common dso_local global i32 0, align 4
@MG_DNS_AAAA_RECORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"www.cesanta.com\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"www\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"cesanta\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"com\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_dns_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_dns_encode() #0 {
  %1 = alloca %struct.mg_connection, align 8
  %2 = alloca i8*, align 8
  %3 = alloca [2 x i32], align 4
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %6 = load i32, i32* @MG_DNS_A_RECORD, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds i32, i32* %5, i64 1
  %8 = load i32, i32* @MG_DNS_AAAA_RECORD, align 4
  store i32 %8, i32* %7, align 4
  %9 = call i32 @init_test_connection(%struct.mg_connection* %1)
  store i64 0, i64* %4, align 8
  br label %10

10:                                               ; preds = %73, %0
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %13 = call i64 @ARRAY_SIZE(i32* %12)
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %76

15:                                               ; preds = %10
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mg_send_dns_query(%struct.mg_connection* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %1, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %2, align 8
  %23 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %1, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i8, i8* %24, align 8
  %26 = call i32 @ASSERT_EQ(i8 signext %25, i32 35)
  %27 = load i8*, i8** %2, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 14
  %29 = load i8, i8* %28, align 1
  %30 = call i32 @ASSERT_EQ(i8 signext %29, i32 3)
  %31 = load i8*, i8** %2, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 15
  %33 = call i32 @ASSERT_STREQ_NZ(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i8*, i8** %2, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 18
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @ASSERT_EQ(i8 signext %36, i32 7)
  %38 = load i8*, i8** %2, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 19
  %40 = call i32 @ASSERT_STREQ_NZ(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i8*, i8** %2, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 26
  %43 = load i8, i8* %42, align 1
  %44 = call i32 @ASSERT_EQ(i8 signext %43, i32 3)
  %45 = load i8*, i8** %2, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 27
  %47 = call i32 @ASSERT_STREQ_NZ(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i8*, i8** %2, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 30
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @ASSERT_EQ(i8 signext %50, i32 0)
  %52 = load i8*, i8** %2, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 31
  %54 = load i8, i8* %53, align 1
  %55 = call i32 @ASSERT_EQ(i8 signext %54, i32 0)
  %56 = load i8*, i8** %2, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 32
  %58 = load i8, i8* %57, align 1
  %59 = load i64, i64* %4, align 8
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ASSERT_EQ(i8 signext %58, i32 %61)
  %63 = load i8*, i8** %2, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 33
  %65 = load i8, i8* %64, align 1
  %66 = call i32 @ASSERT_EQ(i8 signext %65, i32 0)
  %67 = load i8*, i8** %2, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 34
  %69 = load i8, i8* %68, align 1
  %70 = call i32 @ASSERT_EQ(i8 signext %69, i32 1)
  %71 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %1, i32 0, i32 0
  %72 = call i32 @mbuf_free(%struct.TYPE_2__* %71)
  br label %73

73:                                               ; preds = %15
  %74 = load i64, i64* %4, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %4, align 8
  br label %10

76:                                               ; preds = %10
  ret i8* null
}

declare dso_local i32 @init_test_connection(%struct.mg_connection*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mg_send_dns_query(%struct.mg_connection*, i8*, i32) #1

declare dso_local i32 @ASSERT_EQ(i8 signext, i32) #1

declare dso_local i32 @ASSERT_STREQ_NZ(i8*, i8*) #1

declare dso_local i32 @mbuf_free(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
