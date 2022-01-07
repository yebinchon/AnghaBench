; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_strcmp.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_strcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"abb\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_strcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_strcmp() #0 {
  %1 = alloca %struct.mg_str, align 8
  %2 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %3 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %1, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strlen(i8* %4)
  %6 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %1, i32 0, i32 1
  store i32 %5, i32* %6, align 8
  %7 = call i64 @mg_vcasecmp(%struct.mg_str* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @ASSERT_EQ(i64 %7, i32 0)
  %9 = call i64 @mg_vcmp(%struct.mg_str* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @ASSERT_EQ(i64 %9, i32 0)
  %11 = call i64 @mg_vcasecmp(%struct.mg_str* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp slt i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = call i64 @mg_vcmp(%struct.mg_str* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp slt i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = call i64 @mg_vcasecmp(%struct.mg_str* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp slt i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = call i64 @mg_vcmp(%struct.mg_str* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp slt i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = call i64 @mg_vcasecmp(%struct.mg_str* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %28 = icmp slt i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = call i64 @mg_vcmp(%struct.mg_str* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp slt i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  ret i8* null
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ASSERT_EQ(i64, i32) #1

declare dso_local i64 @mg_vcasecmp(%struct.mg_str*, i8*) #1

declare dso_local i64 @mg_vcmp(%struct.mg_str*, i8*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
