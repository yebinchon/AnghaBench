; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_autoconvert.c_mp_autoconvert_add_imgfmt.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_autoconvert.c_mp_autoconvert_add_imgfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_autoconvert = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.priv* }
%struct.priv = type { i32*, i64, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_autoconvert_add_imgfmt(%struct.mp_autoconvert* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mp_autoconvert*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.priv*, align 8
  store %struct.mp_autoconvert* %0, %struct.mp_autoconvert** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mp_autoconvert*, %struct.mp_autoconvert** %4, align 8
  %9 = getelementptr inbounds %struct.mp_autoconvert, %struct.mp_autoconvert* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %7, align 8
  %13 = load %struct.priv*, %struct.priv** %7, align 8
  %14 = load %struct.priv*, %struct.priv** %7, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.priv*, %struct.priv** %7, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @MP_TARRAY_GROW(%struct.priv* %13, i32* %16, i64 %19)
  %21 = load %struct.priv*, %struct.priv** %7, align 8
  %22 = load %struct.priv*, %struct.priv** %7, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.priv*, %struct.priv** %7, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @MP_TARRAY_GROW(%struct.priv* %21, i32* %24, i64 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.priv*, %struct.priv** %7, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.priv*, %struct.priv** %7, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  store i32 %29, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.priv*, %struct.priv** %7, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.priv*, %struct.priv** %7, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  store i32 %37, i32* %44, align 4
  %45 = load %struct.priv*, %struct.priv** %7, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.priv*, %struct.priv** %7, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 3
  store i32 1, i32* %50, align 8
  ret void
}

declare dso_local i32 @MP_TARRAY_GROW(%struct.priv*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
