; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfl_convert.c_mbfl_convert_filter_common_init.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfl_convert.c_mbfl_convert_filter_common_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, i8*)*, i32 (i8*)*, i32, i32 (%struct.TYPE_4__*)*, i32, i32, i32, i32, i64, i32, i8*, i32*, i32* }
%struct.mbfl_convert_vtbl = type { i32, i32, i32, i32, i32 (%struct.TYPE_4__*)* }

@MBFL_OUTPUTFILTER_ILLEGAL_MODE_CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32*, %struct.mbfl_convert_vtbl*, i32 (i32, i8*)*, i32 (i8*)*, i8*)* @mbfl_convert_filter_common_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbfl_convert_filter_common_init(%struct.TYPE_4__* %0, i32* %1, i32* %2, %struct.mbfl_convert_vtbl* %3, i32 (i32, i8*)* %4, i32 (i8*)* %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.mbfl_convert_vtbl*, align 8
  %12 = alloca i32 (i32, i8*)*, align 8
  %13 = alloca i32 (i8*)*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.mbfl_convert_vtbl* %3, %struct.mbfl_convert_vtbl** %11, align 8
  store i32 (i32, i8*)* %4, i32 (i32, i8*)** %12, align 8
  store i32 (i8*)* %5, i32 (i8*)** %13, align 8
  store i8* %6, i8** %14, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 12
  store i32* %15, i32** %17, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 11
  store i32* %18, i32** %20, align 8
  %21 = load i32 (i32, i8*)*, i32 (i32, i8*)** %12, align 8
  %22 = icmp ne i32 (i32, i8*)* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %7
  %24 = load i32 (i32, i8*)*, i32 (i32, i8*)** %12, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 (i32, i8*)* %24, i32 (i32, i8*)** %26, align 8
  br label %30

27:                                               ; preds = %7
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 (i32, i8*)* @mbfl_filter_output_null, i32 (i32, i8*)** %29, align 8
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i32 (i8*)*, i32 (i8*)** %13, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 (i8*)* %31, i32 (i8*)** %33, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 10
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @MBFL_OUTPUTFILTER_ILLEGAL_MODE_CHAR, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 63, i32* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 8
  store i64 0, i64* %43, align 8
  %44 = load %struct.mbfl_convert_vtbl*, %struct.mbfl_convert_vtbl** %11, align 8
  %45 = getelementptr inbounds %struct.mbfl_convert_vtbl, %struct.mbfl_convert_vtbl* %44, i32 0, i32 4
  %46 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %45, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  store i32 (%struct.TYPE_4__*)* %46, i32 (%struct.TYPE_4__*)** %48, align 8
  %49 = load %struct.mbfl_convert_vtbl*, %struct.mbfl_convert_vtbl** %11, align 8
  %50 = getelementptr inbounds %struct.mbfl_convert_vtbl, %struct.mbfl_convert_vtbl* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  %54 = load %struct.mbfl_convert_vtbl*, %struct.mbfl_convert_vtbl** %11, align 8
  %55 = getelementptr inbounds %struct.mbfl_convert_vtbl, %struct.mbfl_convert_vtbl* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 8
  %59 = load %struct.mbfl_convert_vtbl*, %struct.mbfl_convert_vtbl** %11, align 8
  %60 = getelementptr inbounds %struct.mbfl_convert_vtbl, %struct.mbfl_convert_vtbl* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.mbfl_convert_vtbl*, %struct.mbfl_convert_vtbl** %11, align 8
  %65 = getelementptr inbounds %struct.mbfl_convert_vtbl, %struct.mbfl_convert_vtbl* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  %71 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %70, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %73 = call i32 %71(%struct.TYPE_4__* %72)
  ret i32 0
}

declare dso_local i32 @mbfl_filter_output_null(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
