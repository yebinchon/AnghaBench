; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gdtest.c_CompareImages.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gdtest.c_CompareImages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@GD_CMP_IMAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%%%s: ERROR images differ: BAD\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"%%%s: WARNING images differ: WARNING - Probably OK\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%%%s: OK\0A\00", align 1
@GD_CMP_SIZE_X = common dso_local global i32 0, align 4
@GD_CMP_SIZE_Y = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"-%s: INFO image sizes differ\0A\00", align 1
@GD_CMP_NUM_COLORS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"-%s: INFO number of pallette entries differ %d Vs. %d\0A\00", align 1
@GD_CMP_COLOR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"-%s: INFO actual colours of pixels differ\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CompareImages(i8* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %10 = call i32 @gdImageCompare(%struct.TYPE_6__* %8, %struct.TYPE_6__* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @GD_CMP_IMAGE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %28

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %27

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  br label %60

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %15
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @GD_CMP_SIZE_X, align 4
  %31 = load i32, i32* @GD_CMP_SIZE_Y, align 4
  %32 = add nsw i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %35, %28
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @GD_CMP_NUM_COLORS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i8*, i8** %4, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i8* %44, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %43, %38
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @GD_CMP_COLOR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %24, %57, %52
  ret void
}

declare dso_local i32 @gdImageCompare(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
