; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_function.c__zip_source_new.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_source_function.c__zip_source_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_source = type { i64, i32, i32*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.zip = type { i32 }

@ZIP_ER_MEMORY = common dso_local global i32 0, align 4
@ZIP_LES_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zip_source* @_zip_source_new(%struct.zip* %0) #0 {
  %2 = alloca %struct.zip_source*, align 8
  %3 = alloca %struct.zip*, align 8
  %4 = alloca %struct.zip_source*, align 8
  store %struct.zip* %0, %struct.zip** %3, align 8
  %5 = call i64 @malloc(i32 40)
  %6 = inttoptr i64 %5 to %struct.zip_source*
  store %struct.zip_source* %6, %struct.zip_source** %4, align 8
  %7 = icmp eq %struct.zip_source* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.zip*, %struct.zip** %3, align 8
  %10 = getelementptr inbounds %struct.zip, %struct.zip* %9, i32 0, i32 0
  %11 = load i32, i32* @ZIP_ER_MEMORY, align 4
  %12 = call i32 @_zip_error_set(i32* %10, i32 %11, i32 0)
  store %struct.zip_source* null, %struct.zip_source** %2, align 8
  br label %27

13:                                               ; preds = %1
  %14 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %15 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %14, i32 0, i32 4
  store i32* null, i32** %15, align 8
  %16 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %17 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  %19 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %20 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* @ZIP_LES_NONE, align 4
  %22 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %23 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  %25 = getelementptr inbounds %struct.zip_source, %struct.zip_source* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.zip_source*, %struct.zip_source** %4, align 8
  store %struct.zip_source* %26, %struct.zip_source** %2, align 8
  br label %27

27:                                               ; preds = %13, %8
  %28 = load %struct.zip_source*, %struct.zip_source** %2, align 8
  ret %struct.zip_source* %28
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @_zip_error_set(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
