; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_check_ip_acl.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_check_ip_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"-0.0.0.0/0\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"-0.0.0.0/0,+1.0.0.0/8\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"-0.0.0.0/0,+1.2.3.4\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"-0.0.0.0/0,+1.0.0.0/16\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_check_ip_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_check_ip_acl() #0 {
  %1 = alloca i32, align 4
  store i32 16909060, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = call i32 @mg_check_ip_acl(i8* null, i32 %2)
  %4 = call i32 @ASSERT_EQ(i32 %3, i32 1)
  %5 = load i32, i32* %1, align 4
  %6 = call i32 @mg_check_ip_acl(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = call i32 @ASSERT_EQ(i32 %6, i32 1)
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @mg_check_ip_acl(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  %10 = call i32 @ASSERT_EQ(i32 %9, i32 -1)
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @mg_check_ip_acl(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %11)
  %13 = call i32 @ASSERT_EQ(i32 %12, i32 0)
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @mg_check_ip_acl(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %14)
  %16 = call i32 @ASSERT_EQ(i32 %15, i32 1)
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @mg_check_ip_acl(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %17)
  %19 = call i32 @ASSERT_EQ(i32 %18, i32 1)
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @mg_check_ip_acl(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %20)
  %22 = call i32 @ASSERT_EQ(i32 %21, i32 0)
  ret i8* null
}

declare dso_local i32 @ASSERT_EQ(i32, i32) #1

declare dso_local i32 @mg_check_ip_acl(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
