; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_arrays.h_fpm_array_push.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_arrays.h_fpm_array_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_array_s = type { i64, i64, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.fpm_array_s*)* @fpm_array_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fpm_array_push(%struct.fpm_array_s* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fpm_array_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.fpm_array_s* %0, %struct.fpm_array_s** %3, align 8
  %7 = load %struct.fpm_array_s*, %struct.fpm_array_s** %3, align 8
  %8 = getelementptr inbounds %struct.fpm_array_s, %struct.fpm_array_s* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.fpm_array_s*, %struct.fpm_array_s** %3, align 8
  %11 = getelementptr inbounds %struct.fpm_array_s, %struct.fpm_array_s* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %1
  %15 = load %struct.fpm_array_s*, %struct.fpm_array_s** %3, align 8
  %16 = getelementptr inbounds %struct.fpm_array_s, %struct.fpm_array_s* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.fpm_array_s*, %struct.fpm_array_s** %3, align 8
  %21 = getelementptr inbounds %struct.fpm_array_s, %struct.fpm_array_s* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = mul i64 %22, 2
  br label %25

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %19
  %26 = phi i64 [ %23, %19 ], [ 20, %24 ]
  store i64 %26, i64* %5, align 8
  %27 = load %struct.fpm_array_s*, %struct.fpm_array_s** %3, align 8
  %28 = getelementptr inbounds %struct.fpm_array_s, %struct.fpm_array_s* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.fpm_array_s*, %struct.fpm_array_s** %3, align 8
  %31 = getelementptr inbounds %struct.fpm_array_s, %struct.fpm_array_s* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = mul i64 %32, %33
  %35 = call i8* @realloc(i8* %29, i64 %34)
  store i8* %35, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %25
  store i8* null, i8** %2, align 8
  br label %57

39:                                               ; preds = %25
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.fpm_array_s*, %struct.fpm_array_s** %3, align 8
  %42 = getelementptr inbounds %struct.fpm_array_s, %struct.fpm_array_s* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.fpm_array_s*, %struct.fpm_array_s** %3, align 8
  %45 = getelementptr inbounds %struct.fpm_array_s, %struct.fpm_array_s* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %39, %1
  %47 = load %struct.fpm_array_s*, %struct.fpm_array_s** %3, align 8
  %48 = load %struct.fpm_array_s*, %struct.fpm_array_s** %3, align 8
  %49 = getelementptr inbounds %struct.fpm_array_s, %struct.fpm_array_s* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i8* @fpm_array_item(%struct.fpm_array_s* %47, i64 %50)
  store i8* %51, i8** %4, align 8
  %52 = load %struct.fpm_array_s*, %struct.fpm_array_s** %3, align 8
  %53 = getelementptr inbounds %struct.fpm_array_s, %struct.fpm_array_s* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %53, align 8
  %56 = load i8*, i8** %4, align 8
  store i8* %56, i8** %2, align 8
  br label %57

57:                                               ; preds = %46, %38
  %58 = load i8*, i8** %2, align 8
  ret i8* %58
}

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i8* @fpm_array_item(%struct.fpm_array_s*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
