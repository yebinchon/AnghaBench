; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_arrays.h_fpm_array_item_remove.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_arrays.h_fpm_array_item_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_array_s = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpm_array_s*, i32)* @fpm_array_item_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpm_array_item_remove(%struct.fpm_array_s* %0, i32 %1) #0 {
  %3 = alloca %struct.fpm_array_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.fpm_array_s* %0, %struct.fpm_array_s** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.fpm_array_s*, %struct.fpm_array_s** %3, align 8
  %10 = getelementptr inbounds %struct.fpm_array_s, %struct.fpm_array_s* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %11, 1
  %13 = icmp ult i32 %8, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load %struct.fpm_array_s*, %struct.fpm_array_s** %3, align 8
  %16 = load %struct.fpm_array_s*, %struct.fpm_array_s** %3, align 8
  %17 = getelementptr inbounds %struct.fpm_array_s, %struct.fpm_array_s* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = call i8* @fpm_array_item(%struct.fpm_array_s* %15, i32 %19)
  store i8* %20, i8** %6, align 8
  %21 = load %struct.fpm_array_s*, %struct.fpm_array_s** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i8* @fpm_array_item(%struct.fpm_array_s* %21, i32 %22)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.fpm_array_s*, %struct.fpm_array_s** %3, align 8
  %27 = getelementptr inbounds %struct.fpm_array_s, %struct.fpm_array_s* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @memcpy(i8* %24, i8* %25, i32 %28)
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %14, %2
  %32 = load %struct.fpm_array_s*, %struct.fpm_array_s** %3, align 8
  %33 = getelementptr inbounds %struct.fpm_array_s, %struct.fpm_array_s* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i8* @fpm_array_item(%struct.fpm_array_s*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
