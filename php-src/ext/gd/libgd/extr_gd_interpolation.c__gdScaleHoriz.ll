; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c__gdScaleHoriz.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c__gdScaleHoriz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, %struct.TYPE_6__*, i32, i32)* @_gdScaleHoriz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_gdScaleHoriz(%struct.TYPE_6__* %0, i32 %1, i32 %2, %struct.TYPE_6__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  br label %21

21:                                               ; preds = %43, %20
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* %10, align 4
  %24 = sub i32 %23, 1
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %16, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %16, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @memcpy(i32 %33, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %26
  %44 = load i32, i32* %16, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %16, align 4
  br label %21

46:                                               ; preds = %21
  br label %47

47:                                               ; preds = %46, %6
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %12, align 4
  %51 = uitofp i32 %50 to double
  %52 = load i32, i32* %9, align 4
  %53 = uitofp i32 %52 to double
  %54 = fdiv double %51, %53
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32* @_gdContributionsCalc(i32 %48, i32 %49, double %54, i32 %57)
  store i32* %58, i32** %15, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  store i32 0, i32* %7, align 4
  br label %82

62:                                               ; preds = %47
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %76, %62
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %13, align 4
  %66 = sub i32 %65, 1
  %67 = icmp ult i32 %64, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32*, i32** %15, align 8
  %75 = call i32 @_gdScaleRow(%struct.TYPE_6__* %69, i32 %70, %struct.TYPE_6__* %71, i32 %72, i32 %73, i32* %74)
  br label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %14, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %63

79:                                               ; preds = %63
  %80 = load i32*, i32** %15, align 8
  %81 = call i32 @_gdContributionsFree(i32* %80)
  store i32 1, i32* %7, align 4
  br label %82

82:                                               ; preds = %79, %61
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32* @_gdContributionsCalc(i32, i32, double, i32) #1

declare dso_local i32 @_gdScaleRow(%struct.TYPE_6__*, i32, %struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32 @_gdContributionsFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
