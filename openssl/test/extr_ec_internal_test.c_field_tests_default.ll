; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ec_internal_test.c_field_tests_default.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ec_internal_test.c_field_tests_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@curves = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Testing curve %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @field_tests_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @field_tests_default(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curves, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @OBJ_nid2sn(i32 %13)
  %15 = call i32 @TEST_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32* @EC_GROUP_new_by_curve_name(i32 %16)
  store i32* %17, i32** %4, align 8
  %18 = call i32 @TEST_ptr(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = call i32* (...) @BN_CTX_new()
  store i32* %21, i32** %3, align 8
  %22 = call i32 @TEST_ptr(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @group_field_tests(i32* %25, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %20, %1
  br label %31

30:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32*, i32** %4, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @EC_GROUP_free(i32* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32*, i32** %3, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @BN_CTX_free(i32* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @TEST_info(i8*, i32) #1

declare dso_local i32 @OBJ_nid2sn(i32) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32* @EC_GROUP_new_by_curve_name(i32) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @group_field_tests(i32*, i32*) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
