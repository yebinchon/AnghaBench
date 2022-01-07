; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ectest.c_internal_curve_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ectest.c_internal_curve_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@curves = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"EC_GROUP_new_curve_name() failed with curve %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"EC_GROUP_check() failed with curve %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @internal_curve_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @internal_curve_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curves, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32* @EC_GROUP_new_by_curve_name(i32 %12)
  store i32* %13, i32** %4, align 8
  %14 = call i32 @TEST_ptr(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @OBJ_nid2sn(i32 %17)
  %19 = call i32 @TEST_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 0, i32* %2, align 4
  br label %34

20:                                               ; preds = %1
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @EC_GROUP_check(i32* %21, i32* null)
  %23 = call i32 @TEST_true(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @OBJ_nid2sn(i32 %26)
  %28 = call i32 @TEST_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @EC_GROUP_free(i32* %29)
  store i32 0, i32* %2, align 4
  br label %34

31:                                               ; preds = %20
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @EC_GROUP_free(i32* %32)
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %25, %16
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @EC_GROUP_new_by_curve_name(i32) #1

declare dso_local i32 @TEST_info(i8*, i32) #1

declare dso_local i32 @OBJ_nid2sn(i32) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @EC_GROUP_check(i32*, i32*) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
