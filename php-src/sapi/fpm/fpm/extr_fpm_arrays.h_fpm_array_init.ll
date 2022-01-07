; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_arrays.h_fpm_array_init.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_arrays.h_fpm_array_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_array_s = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fpm_array_s* (%struct.fpm_array_s*, i32, i32)* @fpm_array_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fpm_array_s* @fpm_array_init(%struct.fpm_array_s* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fpm_array_s*, align 8
  %5 = alloca %struct.fpm_array_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.fpm_array_s* %0, %struct.fpm_array_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %9 = load %struct.fpm_array_s*, %struct.fpm_array_s** %5, align 8
  %10 = icmp ne %struct.fpm_array_s* %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %3
  %12 = call %struct.fpm_array_s* @malloc(i32 24)
  store %struct.fpm_array_s* %12, %struct.fpm_array_s** %5, align 8
  %13 = load %struct.fpm_array_s*, %struct.fpm_array_s** %5, align 8
  %14 = icmp ne %struct.fpm_array_s* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store %struct.fpm_array_s* null, %struct.fpm_array_s** %4, align 8
  br label %42

16:                                               ; preds = %11
  %17 = load %struct.fpm_array_s*, %struct.fpm_array_s** %5, align 8
  %18 = bitcast %struct.fpm_array_s* %17 to i8*
  store i8* %18, i8** %8, align 8
  br label %19

19:                                               ; preds = %16, %3
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.fpm_array_s*, %struct.fpm_array_s** %5, align 8
  %22 = getelementptr inbounds %struct.fpm_array_s, %struct.fpm_array_s* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @calloc(i32 %23, i32 %24)
  %26 = load %struct.fpm_array_s*, %struct.fpm_array_s** %5, align 8
  %27 = getelementptr inbounds %struct.fpm_array_s, %struct.fpm_array_s* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.fpm_array_s*, %struct.fpm_array_s** %5, align 8
  %29 = getelementptr inbounds %struct.fpm_array_s, %struct.fpm_array_s* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %19
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @free(i8* %33)
  store %struct.fpm_array_s* null, %struct.fpm_array_s** %4, align 8
  br label %42

35:                                               ; preds = %19
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.fpm_array_s*, %struct.fpm_array_s** %5, align 8
  %38 = getelementptr inbounds %struct.fpm_array_s, %struct.fpm_array_s* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.fpm_array_s*, %struct.fpm_array_s** %5, align 8
  %40 = getelementptr inbounds %struct.fpm_array_s, %struct.fpm_array_s* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.fpm_array_s*, %struct.fpm_array_s** %5, align 8
  store %struct.fpm_array_s* %41, %struct.fpm_array_s** %4, align 8
  br label %42

42:                                               ; preds = %35, %32, %15
  %43 = load %struct.fpm_array_s*, %struct.fpm_array_s** %4, align 8
  ret %struct.fpm_array_s* %43
}

declare dso_local %struct.fpm_array_s* @malloc(i32) #1

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
