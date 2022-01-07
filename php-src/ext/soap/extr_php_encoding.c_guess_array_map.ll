; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_guess_array_map.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_encoding.c_guess_array_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_ARRAY = common dso_local global i64 0, align 8
@APACHE_MAP = common dso_local global i32 0, align 4
@SOAP_ENC_ARRAY = common dso_local global i32 0, align 4
@IS_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32)* @guess_array_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guess_array_map(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %4
  %13 = load i32*, i32** %6, align 8
  %14 = call i64 @Z_TYPE_P(i32* %13)
  %15 = load i64, i64* @IS_ARRAY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @is_map(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @APACHE_MAP, align 4
  %23 = call i32* @get_conversion(i32 %22)
  store i32* %23, i32** %9, align 8
  br label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @SOAP_ENC_ARRAY, align 4
  %26 = call i32* @get_conversion(i32 %25)
  store i32* %26, i32** %9, align 8
  br label %27

27:                                               ; preds = %24, %21
  br label %28

28:                                               ; preds = %27, %12, %4
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @IS_NULL, align 4
  %33 = call i32* @get_conversion(i32 %32)
  store i32* %33, i32** %9, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @master_to_xml(i32* %35, i32* %36, i32 %37, i32 %38)
  ret i32 %39
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i64 @is_map(i32*) #1

declare dso_local i32* @get_conversion(i32) #1

declare dso_local i32 @master_to_xml(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
