; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_pop.c_zip_source_pop.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_pop.c_zip_source_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_source = type { i32, %struct.TYPE_2__, i64, %struct.zip_source* }
%struct.TYPE_2__ = type { i32 (%struct.zip_source.0*, i32, i32*, i32, i32)* }
%struct.zip_source.0 = type opaque

@ZIP_SOURCE_CLOSE = common dso_local global i32 0, align 4
@ZIP_SOURCE_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zip_source* @zip_source_pop(%struct.zip_source* %0) #0 {
  %2 = alloca %struct.zip_source*, align 8
  %3 = alloca %struct.zip_source*, align 8
  %4 = alloca %struct.zip_source*, align 8
  store %struct.zip_source* %0, %struct.zip_source** %3, align 8
  %5 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %6 = icmp eq %struct.zip_source* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.zip_source* null, %struct.zip_source** %2, align 8
  br label %50

8:                                                ; preds = %1
  %9 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %10 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %9, i32 0, i32 3
  %11 = load %struct.zip_source*, %struct.zip_source** %10, align 8
  store %struct.zip_source* %11, %struct.zip_source** %4, align 8
  %12 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %13 = icmp eq %struct.zip_source* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %16 = call i32 @zip_source_free(%struct.zip_source* %15)
  br label %48

17:                                               ; preds = %8
  %18 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %19 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %24 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.zip_source.0*, i32, i32*, i32, i32)*, i32 (%struct.zip_source.0*, i32, i32*, i32, i32)** %25, align 8
  %27 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %28 = bitcast %struct.zip_source* %27 to %struct.zip_source.0*
  %29 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %30 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ZIP_SOURCE_CLOSE, align 4
  %33 = call i32 %26(%struct.zip_source.0* %28, i32 %31, i32* null, i32 0, i32 %32)
  br label %34

34:                                               ; preds = %22, %17
  %35 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %36 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.zip_source.0*, i32, i32*, i32, i32)*, i32 (%struct.zip_source.0*, i32, i32*, i32, i32)** %37, align 8
  %39 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %40 = bitcast %struct.zip_source* %39 to %struct.zip_source.0*
  %41 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %42 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ZIP_SOURCE_FREE, align 4
  %45 = call i32 %38(%struct.zip_source.0* %40, i32 %43, i32* null, i32 0, i32 %44)
  %46 = load %struct.zip_source*, %struct.zip_source** %3, align 8
  %47 = call i32 @free(%struct.zip_source* %46)
  br label %48

48:                                               ; preds = %34, %14
  %49 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  store %struct.zip_source* %49, %struct.zip_source** %2, align 8
  br label %50

50:                                               ; preds = %48, %7
  %51 = load %struct.zip_source*, %struct.zip_source** %2, align 8
  ret %struct.zip_source* %51
}

declare dso_local i32 @zip_source_free(%struct.zip_source*) #1

declare dso_local i32 @free(%struct.zip_source*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
