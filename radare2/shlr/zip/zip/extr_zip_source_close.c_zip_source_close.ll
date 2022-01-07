; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_close.c_zip_source_close.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_close.c_zip_source_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_source = type { i64, %struct.zip_source*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.zip_source.0*, i32, i32*, i32, i32)*, i32 (i32, i32*, i32, i32)* }
%struct.zip_source.0 = type opaque

@ZIP_SOURCE_CLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zip_source_close(%struct.zip_source* %0) #0 {
  %2 = alloca %struct.zip_source*, align 8
  store %struct.zip_source* %0, %struct.zip_source** %2, align 8
  %3 = load %struct.zip_source*, %struct.zip_source** %2, align 8
  %4 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %43

8:                                                ; preds = %1
  %9 = load %struct.zip_source*, %struct.zip_source** %2, align 8
  %10 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %9, i32 0, i32 1
  %11 = load %struct.zip_source*, %struct.zip_source** %10, align 8
  %12 = icmp eq %struct.zip_source* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load %struct.zip_source*, %struct.zip_source** %2, align 8
  %15 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32 (i32, i32*, i32, i32)*, i32 (i32, i32*, i32, i32)** %16, align 8
  %18 = load %struct.zip_source*, %struct.zip_source** %2, align 8
  %19 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ZIP_SOURCE_CLOSE, align 4
  %22 = call i32 %17(i32 %20, i32* null, i32 0, i32 %21)
  br label %40

23:                                               ; preds = %8
  %24 = load %struct.zip_source*, %struct.zip_source** %2, align 8
  %25 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.zip_source.0*, i32, i32*, i32, i32)*, i32 (%struct.zip_source.0*, i32, i32*, i32, i32)** %26, align 8
  %28 = load %struct.zip_source*, %struct.zip_source** %2, align 8
  %29 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %28, i32 0, i32 1
  %30 = load %struct.zip_source*, %struct.zip_source** %29, align 8
  %31 = bitcast %struct.zip_source* %30 to %struct.zip_source.0*
  %32 = load %struct.zip_source*, %struct.zip_source** %2, align 8
  %33 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ZIP_SOURCE_CLOSE, align 4
  %36 = call i32 %27(%struct.zip_source.0* %31, i32 %34, i32* null, i32 0, i32 %35)
  %37 = load %struct.zip_source*, %struct.zip_source** %2, align 8
  %38 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %37, i32 0, i32 1
  %39 = load %struct.zip_source*, %struct.zip_source** %38, align 8
  call void @zip_source_close(%struct.zip_source* %39)
  br label %40

40:                                               ; preds = %23, %13
  %41 = load %struct.zip_source*, %struct.zip_source** %2, align 8
  %42 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %40, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
