; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_zip.c_phar_zip_d2u_time.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_zip.c_phar_zip_d2u_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @phar_zip_d2u_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phar_zip_d2u_time(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tm*, align 8
  %8 = alloca %struct.tm, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @PHAR_GET_16(i8* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @PHAR_GET_16(i8* %12)
  store i32 %13, i32* %6, align 4
  %14 = call i32 @time(i32* null)
  store i32 %14, i32* %9, align 4
  %15 = call %struct.tm* @php_localtime_r(i32* %9, %struct.tm* %8)
  store %struct.tm* %15, %struct.tm** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 9
  %18 = and i32 %17, 127
  %19 = add nsw i32 %18, 1980
  %20 = sub nsw i32 %19, 1900
  %21 = load %struct.tm*, %struct.tm** %7, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 5
  %25 = and i32 %24, 15
  %26 = sub nsw i32 %25, 1
  %27 = load %struct.tm*, %struct.tm** %7, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 31
  %31 = load %struct.tm*, %struct.tm** %7, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = ashr i32 %33, 11
  %35 = and i32 %34, 31
  %36 = load %struct.tm*, %struct.tm** %7, align 8
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %5, align 4
  %39 = ashr i32 %38, 5
  %40 = and i32 %39, 63
  %41 = load %struct.tm*, %struct.tm** %7, align 8
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  %44 = shl i32 %43, 1
  %45 = and i32 %44, 62
  %46 = load %struct.tm*, %struct.tm** %7, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load %struct.tm*, %struct.tm** %7, align 8
  %49 = call i32 @mktime(%struct.tm* %48)
  ret i32 %49
}

declare dso_local i32 @PHAR_GET_16(i8*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @php_localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
