; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gif_out.c_gdImageGifPtr.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gif_out.c_gdImageGifPtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gdImageGifPtr(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = call %struct.TYPE_6__* @gdNewDynamicCtx(i32 2048, i32* null)
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %6, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %10 = call i32 @_gdImageGifCtx(i32 %8, %struct.TYPE_6__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i8* @gdDPExtractData(%struct.TYPE_6__* %13, i32* %14)
  store i8* %15, i8** %5, align 8
  br label %17

16:                                               ; preds = %2
  store i8* null, i8** %5, align 8
  br label %17

17:                                               ; preds = %16, %12
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = call i32 %20(%struct.TYPE_6__* %21)
  %23 = load i8*, i8** %5, align 8
  ret i8* %23
}

declare dso_local %struct.TYPE_6__* @gdNewDynamicCtx(i32, i32*) #1

declare dso_local i32 @_gdImageGifCtx(i32, %struct.TYPE_6__*) #1

declare dso_local i8* @gdDPExtractData(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
