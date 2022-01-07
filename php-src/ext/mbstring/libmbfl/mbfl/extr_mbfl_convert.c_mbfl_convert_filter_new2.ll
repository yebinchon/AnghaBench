; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfl_convert.c_mbfl_convert_filter_new2.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfl_convert.c_mbfl_convert_filter_new2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbfl_convert_vtbl = type { i32, i32 }

@vtbl_pass = common dso_local global %struct.mbfl_convert_vtbl zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mbfl_convert_filter_new2(%struct.mbfl_convert_vtbl* %0, i32 (i32, i8*)* %1, i32 (i8*)* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mbfl_convert_vtbl*, align 8
  %7 = alloca i32 (i32, i8*)*, align 8
  %8 = alloca i32 (i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.mbfl_convert_vtbl* %0, %struct.mbfl_convert_vtbl** %6, align 8
  store i32 (i32, i8*)* %1, i32 (i32, i8*)** %7, align 8
  store i32 (i8*)* %2, i32 (i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.mbfl_convert_vtbl*, %struct.mbfl_convert_vtbl** %6, align 8
  %14 = icmp eq %struct.mbfl_convert_vtbl* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store %struct.mbfl_convert_vtbl* @vtbl_pass, %struct.mbfl_convert_vtbl** %6, align 8
  br label %16

16:                                               ; preds = %15, %4
  %17 = load %struct.mbfl_convert_vtbl*, %struct.mbfl_convert_vtbl** %6, align 8
  %18 = getelementptr inbounds %struct.mbfl_convert_vtbl, %struct.mbfl_convert_vtbl* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @mbfl_no2encoding(i32 %19)
  store i32* %20, i32** %11, align 8
  %21 = load %struct.mbfl_convert_vtbl*, %struct.mbfl_convert_vtbl** %6, align 8
  %22 = getelementptr inbounds %struct.mbfl_convert_vtbl, %struct.mbfl_convert_vtbl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32* @mbfl_no2encoding(i32 %23)
  store i32* %24, i32** %12, align 8
  %25 = call i64 @mbfl_malloc(i32 4)
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  store i32* null, i32** %5, align 8
  br label %45

30:                                               ; preds = %16
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = load %struct.mbfl_convert_vtbl*, %struct.mbfl_convert_vtbl** %6, align 8
  %35 = load i32 (i32, i8*)*, i32 (i32, i8*)** %7, align 8
  %36 = load i32 (i8*)*, i32 (i8*)** %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i64 @mbfl_convert_filter_common_init(i32* %31, i32* %32, i32* %33, %struct.mbfl_convert_vtbl* %34, i32 (i32, i8*)* %35, i32 (i8*)* %36, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @mbfl_free(i32* %41)
  store i32* null, i32** %5, align 8
  br label %45

43:                                               ; preds = %30
  %44 = load i32*, i32** %10, align 8
  store i32* %44, i32** %5, align 8
  br label %45

45:                                               ; preds = %43, %40, %29
  %46 = load i32*, i32** %5, align 8
  ret i32* %46
}

declare dso_local i32* @mbfl_no2encoding(i32) #1

declare dso_local i64 @mbfl_malloc(i32) #1

declare dso_local i64 @mbfl_convert_filter_common_init(i32*, i32*, i32*, %struct.mbfl_convert_vtbl*, i32 (i32, i8*)*, i32 (i8*)*, i8*) #1

declare dso_local i32 @mbfl_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
