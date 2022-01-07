; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_EnvForeach.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_EnvForeach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LSAPI_key_value_pair = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.LSAPI_key_value_pair*, i32, i32 (i32, i32, i32, i32, i8*)*, i8*)* @EnvForeach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EnvForeach(%struct.LSAPI_key_value_pair* %0, i32 %1, i32 (i32, i32, i32, i32, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.LSAPI_key_value_pair*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i32, i32, i32, i32, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.LSAPI_key_value_pair*, align 8
  %11 = alloca i32, align 4
  store %struct.LSAPI_key_value_pair* %0, %struct.LSAPI_key_value_pair** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (i32, i32, i32, i32, i8*)* %2, i32 (i32, i32, i32, i32, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %12, i64 %14
  store %struct.LSAPI_key_value_pair* %15, %struct.LSAPI_key_value_pair** %10, align 8
  %16 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %6, align 8
  %17 = icmp ne %struct.LSAPI_key_value_pair* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32 (i32, i32, i32, i32, i8*)*, i32 (i32, i32, i32, i32, i8*)** %8, align 8
  %20 = icmp ne i32 (i32, i32, i32, i32, i8*)* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %4
  store i32 -1, i32* %5, align 4
  br label %52

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %47, %22
  %24 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %6, align 8
  %25 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %10, align 8
  %26 = icmp ult %struct.LSAPI_key_value_pair* %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  %28 = load i32 (i32, i32, i32, i32, i8*)*, i32 (i32, i32, i32, i32, i8*)** %8, align 8
  %29 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %6, align 8
  %30 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %6, align 8
  %33 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %6, align 8
  %36 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %6, align 8
  %39 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 %28(i32 %31, i32 %34, i32 %37, i32 %40, i8* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %27
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %5, align 4
  br label %52

47:                                               ; preds = %27
  %48 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %6, align 8
  %49 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %48, i32 1
  store %struct.LSAPI_key_value_pair* %49, %struct.LSAPI_key_value_pair** %6, align 8
  br label %23

50:                                               ; preds = %23
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %45, %21
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
