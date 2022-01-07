; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ectest.c_group_field_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ectest.c_group_field_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [133 x i8] c"01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"0800000000000000000000000000000000000000C9\00", align 1
@NID_secp521r1 = common dso_local global i32 0, align 4
@NID_sect163r2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @group_field_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @group_field_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32 1, i32* %1, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %6 = call i32 @BN_hex2bn(i32** %2, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @BN_hex2bn(i32** %3, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @NID_secp521r1, align 4
  %9 = call i32* @EC_GROUP_new_by_curve_name(i32 %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @EC_GROUP_get0_field(i32* %11)
  %13 = call i64 @BN_cmp(i32* %10, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %15, %0
  %17 = load i32, i32* @NID_sect163r2, align 4
  %18 = call i32* @EC_GROUP_new_by_curve_name(i32 %17)
  store i32* %18, i32** %5, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @EC_GROUP_get0_field(i32* %20)
  %22 = call i64 @BN_cmp(i32* %19, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %24, %16
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @EC_GROUP_free(i32* %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @EC_GROUP_free(i32* %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @BN_free(i32* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @BN_free(i32* %32)
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @BN_hex2bn(i32**, i8*) #1

declare dso_local i32* @EC_GROUP_new_by_curve_name(i32) #1

declare dso_local i64 @BN_cmp(i32*, i32) #1

declare dso_local i32 @EC_GROUP_get0_field(i32*) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
