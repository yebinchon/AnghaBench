; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gd2.c_gdImageGd2Ptr.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gd2.c_gdImageGd2Ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gdImageGd2Ptr(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = call %struct.TYPE_6__* @gdNewDynamicCtx(i32 2048, i32* null)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @_gdImageGd2(i32 %12, %struct.TYPE_6__* %13, i32 %14, i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i8* @gdDPExtractData(%struct.TYPE_6__* %17, i32* %18)
  store i8* %19, i8** %9, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %24 = call i32 %22(%struct.TYPE_6__* %23)
  %25 = load i8*, i8** %9, align 8
  ret i8* %25
}

declare dso_local %struct.TYPE_6__* @gdNewDynamicCtx(i32, i32*) #1

declare dso_local i32 @_gdImageGd2(i32, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @gdDPExtractData(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
