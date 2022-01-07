; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_lsapi_initLVE.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_lsapi_initLVE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"LSAPI_LVE_ENABLE\00", align 1
@s_enable_lve = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"LVE_ENABLE\00", align 1
@s_uid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @lsapi_initLVE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsapi_initLVE() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = call i8* @getenv(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i8* %3, i8** %2, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @atol(i8* %6)
  store i64 %7, i64* @s_enable_lve, align 8
  store i8* null, i8** %2, align 8
  br label %15

8:                                                ; preds = %0
  %9 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %9, i8** %2, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @atol(i8* %12)
  store i64 %13, i64* @s_enable_lve, align 8
  store i8* null, i8** %2, align 8
  br label %14

14:                                               ; preds = %11, %8
  br label %15

15:                                               ; preds = %14, %5
  %16 = load i64, i64* @s_enable_lve, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load i32, i32* @s_uid, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = call i32 (...) @lsapi_load_lve_lib()
  %23 = load i64, i64* @s_enable_lve, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (...) @init_lve_ex()
  store i32 %26, i32* %1, align 4
  br label %29

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %18, %15
  store i32 0, i32* %1, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @atol(i8*) #1

declare dso_local i32 @lsapi_load_lve_lib(...) #1

declare dso_local i32 @init_lve_ex(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
