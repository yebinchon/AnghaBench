; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfl_ident.c_mbfl_identify_filter_init2.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfl_ident.c_mbfl_identify_filter_init2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbfl_identify_vtbl = type { i32, i32, i32 (%struct.TYPE_6__*)* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*)*, i32, i32, %struct.TYPE_7__*, i64, i64, i64 }
%struct.TYPE_7__ = type { i32 }

@vtbl_identify_false = common dso_local global %struct.mbfl_identify_vtbl zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_identify_filter_init2(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.mbfl_identify_vtbl*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %8, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 6
  store i64 0, i64* %10, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 5
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.mbfl_identify_vtbl* @mbfl_identify_filter_get_vtbl(i32 %19)
  store %struct.mbfl_identify_vtbl* %20, %struct.mbfl_identify_vtbl** %5, align 8
  %21 = load %struct.mbfl_identify_vtbl*, %struct.mbfl_identify_vtbl** %5, align 8
  %22 = icmp eq %struct.mbfl_identify_vtbl* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store %struct.mbfl_identify_vtbl* @vtbl_identify_false, %struct.mbfl_identify_vtbl** %5, align 8
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.mbfl_identify_vtbl*, %struct.mbfl_identify_vtbl** %5, align 8
  %26 = getelementptr inbounds %struct.mbfl_identify_vtbl, %struct.mbfl_identify_vtbl* %25, i32 0, i32 2
  %27 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 (%struct.TYPE_6__*)* %27, i32 (%struct.TYPE_6__*)** %29, align 8
  %30 = load %struct.mbfl_identify_vtbl*, %struct.mbfl_identify_vtbl** %5, align 8
  %31 = getelementptr inbounds %struct.mbfl_identify_vtbl, %struct.mbfl_identify_vtbl* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mbfl_identify_vtbl*, %struct.mbfl_identify_vtbl** %5, align 8
  %36 = getelementptr inbounds %struct.mbfl_identify_vtbl, %struct.mbfl_identify_vtbl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %41, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = call i32 %42(%struct.TYPE_6__* %43)
  ret i32 0
}

declare dso_local %struct.mbfl_identify_vtbl* @mbfl_identify_filter_get_vtbl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
