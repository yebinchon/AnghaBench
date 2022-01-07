; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_TIFFRGBAImageGet.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_TIFFRGBAImageGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { {}*, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [23 x i8] c"No \22get\22 routine setup\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"No \22put\22 routine setupl; probably can not handle image format\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TIFFRGBAImageGet(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.TYPE_7__*, i32*, i32, i32)**
  %13 = load i32 (%struct.TYPE_7__*, i32*, i32, i32)*, i32 (%struct.TYPE_7__*, i32*, i32, i32)** %12, align 8
  %14 = icmp eq i32 (%struct.TYPE_7__*, i32*, i32, i32)* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = call i32 @TIFFFileName(%struct.TYPE_8__* %23)
  %25 = call i32 @TIFFErrorExt(i32 %20, i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %53

26:                                               ; preds = %4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = call i32 @TIFFFileName(%struct.TYPE_8__* %40)
  %42 = call i32 @TIFFErrorExt(i32 %37, i32 %41, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %53

43:                                               ; preds = %26
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = bitcast {}** %45 to i32 (%struct.TYPE_7__*, i32*, i32, i32)**
  %47 = load i32 (%struct.TYPE_7__*, i32*, i32, i32)*, i32 (%struct.TYPE_7__*, i32*, i32, i32)** %46, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 %47(%struct.TYPE_7__* %48, i32* %49, i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %43, %32, %15
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @TIFFErrorExt(i32, i32, i8*) #1

declare dso_local i32 @TIFFFileName(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
