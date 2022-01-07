; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_io.c_gdGetIntLSB.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_io.c_gdGetIntLSB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*)* }

@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdGetIntLSB(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = call i32 %10(%struct.TYPE_7__* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @EOF, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %18, 24
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = lshr i32 %22, 8
  store i32 %23, i32* %7, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = call i32 %26(%struct.TYPE_7__* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @EOF, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %76

33:                                               ; preds = %17
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 %34, 24
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = lshr i32 %38, 8
  store i32 %39, i32* %7, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = call i32 %42(%struct.TYPE_7__* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @EOF, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %76

49:                                               ; preds = %33
  %50 = load i32, i32* %6, align 4
  %51 = shl i32 %50, 24
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = lshr i32 %54, 8
  store i32 %55, i32* %7, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %57, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = call i32 %58(%struct.TYPE_7__* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @EOF, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %76

65:                                               ; preds = %49
  %66 = load i32, i32* %6, align 4
  %67 = shl i32 %66, 24
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* %7, align 4
  %74 = load i32*, i32** %4, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %65
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %64, %48, %32, %16
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
