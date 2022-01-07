; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfl_convert.c_mbfl_convert_filter_new.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfl_convert.c_mbfl_convert_filter_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbfl_convert_vtbl = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mbfl_convert_filter_new(i32* %0, i32* %1, i32 (i32, i8*)* %2, i32 (i8*)* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32 (i32, i8*)*, align 8
  %10 = alloca i32 (i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.mbfl_convert_vtbl*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 (i32, i8*)* %2, i32 (i32, i8*)** %9, align 8
  store i32 (i8*)* %3, i32 (i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call %struct.mbfl_convert_vtbl* @mbfl_convert_filter_get_vtbl(i32* %14, i32* %15)
  store %struct.mbfl_convert_vtbl* %16, %struct.mbfl_convert_vtbl** %13, align 8
  %17 = load %struct.mbfl_convert_vtbl*, %struct.mbfl_convert_vtbl** %13, align 8
  %18 = icmp eq %struct.mbfl_convert_vtbl* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32* null, i32** %6, align 8
  br label %41

20:                                               ; preds = %5
  %21 = call i64 @mbfl_malloc(i32 4)
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %12, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32* null, i32** %6, align 8
  br label %41

26:                                               ; preds = %20
  %27 = load i32*, i32** %12, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.mbfl_convert_vtbl*, %struct.mbfl_convert_vtbl** %13, align 8
  %31 = load i32 (i32, i8*)*, i32 (i32, i8*)** %9, align 8
  %32 = load i32 (i8*)*, i32 (i8*)** %10, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = call i64 @mbfl_convert_filter_common_init(i32* %27, i32* %28, i32* %29, %struct.mbfl_convert_vtbl* %30, i32 (i32, i8*)* %31, i32 (i8*)* %32, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @mbfl_free(i32* %37)
  store i32* null, i32** %6, align 8
  br label %41

39:                                               ; preds = %26
  %40 = load i32*, i32** %12, align 8
  store i32* %40, i32** %6, align 8
  br label %41

41:                                               ; preds = %39, %36, %25, %19
  %42 = load i32*, i32** %6, align 8
  ret i32* %42
}

declare dso_local %struct.mbfl_convert_vtbl* @mbfl_convert_filter_get_vtbl(i32*, i32*) #1

declare dso_local i64 @mbfl_malloc(i32) #1

declare dso_local i64 @mbfl_convert_filter_common_init(i32*, i32*, i32*, %struct.mbfl_convert_vtbl*, i32 (i32, i8*)*, i32 (i8*)*, i8*) #1

declare dso_local i32 @mbfl_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
