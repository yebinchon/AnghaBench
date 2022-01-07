; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_wbmp.c__gdImageWBMPCtx.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_wbmp.c__gdImageWBMPCtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@WBMP_WHITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Could not create WBMP\00", align 1
@WBMP_BLACK = common dso_local global i32 0, align 4
@gd_putout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Could not save WBMP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @_gdImageWBMPCtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_gdImageWBMPCtx(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @gdImageSX(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @gdImageSY(i32 %14)
  %16 = load i32, i32* @WBMP_WHITE, align 4
  %17 = call %struct.TYPE_5__* @createwbmp(i32 %13, i32 %15, i32 %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %11, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 @gd_error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %70

21:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %55, %21
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @gdImageSY(i32 %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %51, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @gdImageSX(i32 %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @gdImageGetPixel(i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load i32, i32* @WBMP_BLACK, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  br label %48

48:                                               ; preds = %40, %33
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %28

54:                                               ; preds = %28
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %22

58:                                               ; preds = %22
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i64 @writewbmp(%struct.TYPE_5__* %59, i32* @gd_putout, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %65 = call i32 @freewbmp(%struct.TYPE_5__* %64)
  %66 = call i32 @gd_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %70

67:                                               ; preds = %58
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %69 = call i32 @freewbmp(%struct.TYPE_5__* %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %67, %63, %19
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_5__* @createwbmp(i32, i32, i32) #1

declare dso_local i32 @gdImageSX(i32) #1

declare dso_local i32 @gdImageSY(i32) #1

declare dso_local i32 @gd_error(i8*) #1

declare dso_local i32 @gdImageGetPixel(i32, i32, i32) #1

declare dso_local i64 @writewbmp(%struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @freewbmp(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
