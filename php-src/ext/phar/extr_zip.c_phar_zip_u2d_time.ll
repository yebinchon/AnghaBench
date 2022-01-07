; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_zip.c_phar_zip_u2d_time.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_zip.c_phar_zip_u2d_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @phar_zip_u2d_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phar_zip_u2d_time(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tm*, align 8
  %10 = alloca %struct.tm, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = call %struct.tm* @php_localtime_r(i32* %4, %struct.tm* %10)
  store %struct.tm* %11, %struct.tm** %9, align 8
  %12 = load %struct.tm*, %struct.tm** %9, align 8
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 1980
  br i1 %15, label %16, label %47

16:                                               ; preds = %3
  %17 = load %struct.tm*, %struct.tm** %9, align 8
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1900
  %21 = sub nsw i32 %20, 1980
  %22 = shl i32 %21, 9
  %23 = load %struct.tm*, %struct.tm** %9, align 8
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  %27 = shl i32 %26, 5
  %28 = add nsw i32 %22, %27
  %29 = load %struct.tm*, %struct.tm** %9, align 8
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.tm*, %struct.tm** %9, align 8
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 11
  %37 = load %struct.tm*, %struct.tm** %9, align 8
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 5
  %41 = add nsw i32 %36, %40
  %42 = load %struct.tm*, %struct.tm** %9, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 1
  %46 = add nsw i32 %41, %45
  store i32 %46, i32* %7, align 4
  br label %48

47:                                               ; preds = %3
  store i32 33, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %16
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @PHAR_SET_16(i8* %49, i32 %50)
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @PHAR_SET_16(i8* %52, i32 %53)
  ret void
}

declare dso_local %struct.tm* @php_localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @PHAR_SET_16(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
