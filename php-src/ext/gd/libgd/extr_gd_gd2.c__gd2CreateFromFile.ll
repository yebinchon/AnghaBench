; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gd2.c__gd2CreateFromFile.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_gd2.c__gd2CreateFromFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Bad GD2 header\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not create gdImage\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not read color palette\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Image palette completed: %d colours\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**)* @_gd2CreateFromFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @_gd2CreateFromFile(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32** %8) #0 {
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32**, align 8
  %20 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %11, align 4
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32** %8, i32*** %19, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32*, i32** %12, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = load i32*, i32** %16, align 8
  %27 = load i32*, i32** %17, align 8
  %28 = load i32*, i32** %18, align 8
  %29 = load i32**, i32*** %19, align 8
  %30 = call i32 @_gd2GetHeader(i32 %21, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32** %29)
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %9
  %33 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @GD2_DBG(i32 %33)
  br label %84

35:                                               ; preds = %9
  %36 = load i32*, i32** %16, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @gd2_truecolor(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_7__* @gdImageCreateTrueColor(i32 %42, i32 %44)
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %20, align 8
  br label %52

46:                                               ; preds = %35
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_7__* @gdImageCreate(i32 %48, i32 %50)
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %20, align 8
  br label %52

52:                                               ; preds = %46, %40
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %54 = icmp eq %struct.TYPE_7__* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %57 = call i32 @GD2_DBG(i32 %56)
  br label %80

58:                                               ; preds = %52
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 2
  %64 = zext i1 %63 to i32
  %65 = call i32 @_gdGetColors(i32 %59, %struct.TYPE_7__* %60, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %58
  %68 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %69 = call i32 @GD2_DBG(i32 %68)
  br label %77

70:                                               ; preds = %58
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, ...) @gd_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = call i32 @GD2_DBG(i32 %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %10, align 8
  br label %85

77:                                               ; preds = %67
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %79 = call i32 @gdImageDestroy(%struct.TYPE_7__* %78)
  br label %80

80:                                               ; preds = %77, %55
  %81 = load i32**, i32*** %19, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @gdFree(i32* %82)
  br label %84

84:                                               ; preds = %80, %32
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  br label %85

85:                                               ; preds = %84, %70
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  ret %struct.TYPE_7__* %86
}

declare dso_local i32 @_gd2GetHeader(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**) #1

declare dso_local i32 @GD2_DBG(i32) #1

declare dso_local i32 @gd_error(i8*, ...) #1

declare dso_local i64 @gd2_truecolor(i32) #1

declare dso_local %struct.TYPE_7__* @gdImageCreateTrueColor(i32, i32) #1

declare dso_local %struct.TYPE_7__* @gdImageCreate(i32, i32) #1

declare dso_local i32 @_gdGetColors(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @gdImageDestroy(%struct.TYPE_7__*) #1

declare dso_local i32 @gdFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
