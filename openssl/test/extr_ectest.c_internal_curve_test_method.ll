; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ectest.c_internal_curve_test_method.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ectest.c_internal_curve_test_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@curves = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"Curve %s failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @internal_curve_test_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @internal_curve_test_method(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curves, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32* @EC_GROUP_new_by_curve_name(i32 %13)
  store i32* %14, i32** %6, align 8
  %15 = call i32 @TEST_ptr(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @OBJ_nid2sn(i32 %18)
  %20 = call i32 @TEST_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 0, i32* %2, align 4
  br label %27

21:                                               ; preds = %1
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @group_order_tests(i32* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @EC_GROUP_free(i32* %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %21, %17
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @EC_GROUP_new_by_curve_name(i32) #1

declare dso_local i32 @TEST_info(i8*, i32) #1

declare dso_local i32 @OBJ_nid2sn(i32) #1

declare dso_local i32 @group_order_tests(i32*) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
