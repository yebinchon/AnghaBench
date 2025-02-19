; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_curve.c_EC_GROUP_new_by_curve_name_ex.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_curve.c_EC_GROUP_new_by_curve_name_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@curve_list_length = common dso_local global i64 0, align 8
@curve_list = common dso_local global %struct.TYPE_3__* null, align 8
@EC_F_EC_GROUP_NEW_BY_CURVE_NAME_EX = common dso_local global i32 0, align 4
@EC_R_UNKNOWN_GROUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @EC_GROUP_new_by_curve_name_ex(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %45

11:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %33, %11
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @curve_list_length, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curve_list, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curve_list, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @ec_group_new_from_data(i32* %25, i32 %30)
  store i32* %31, i32** %7, align 8
  br label %36

32:                                               ; preds = %16
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %6, align 8
  br label %12

36:                                               ; preds = %24, %12
  %37 = load i32*, i32** %7, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @EC_F_EC_GROUP_NEW_BY_CURVE_NAME_EX, align 4
  %41 = load i32, i32* @EC_R_UNKNOWN_GROUP, align 4
  %42 = call i32 @ECerr(i32 %40, i32 %41)
  store i32* null, i32** %3, align 8
  br label %45

43:                                               ; preds = %36
  %44 = load i32*, i32** %7, align 8
  store i32* %44, i32** %3, align 8
  br label %45

45:                                               ; preds = %43, %39, %10
  %46 = load i32*, i32** %3, align 8
  ret i32* %46
}

declare dso_local i32* @ec_group_new_from_data(i32*, i32) #1

declare dso_local i32 @ECerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
