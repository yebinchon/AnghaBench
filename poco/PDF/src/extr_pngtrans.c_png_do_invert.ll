; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngtrans.c_png_do_invert.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngtrans.c_png_do_invert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"in png_do_invert\0A\00", align 1
@PNG_COLOR_TYPE_GRAY = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_GRAY_ALPHA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_do_invert(%struct.TYPE_3__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64* %1, i64** %4, align 8
  %14 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PNG_COLOR_TYPE_GRAY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %2
  %21 = load i64*, i64** %4, align 8
  store i64* %21, i64** %5, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %36, %20
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i64*, i64** %5, align 8
  %31 = load i64, i64* %30, align 8
  %32 = xor i64 %31, -1
  %33 = load i64*, i64** %5, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i64*, i64** %5, align 8
  %35 = getelementptr inbounds i64, i64* %34, i32 1
  store i64* %35, i64** %5, align 8
  br label %36

36:                                               ; preds = %29
  %37 = load i64, i64* %6, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %6, align 8
  br label %25

39:                                               ; preds = %25
  br label %110

40:                                               ; preds = %2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PNG_COLOR_TYPE_GRAY_ALPHA, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %40
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 8
  br i1 %50, label %51, label %71

51:                                               ; preds = %46
  %52 = load i64*, i64** %4, align 8
  store i64* %52, i64** %8, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %56

56:                                               ; preds = %67, %51
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i64*, i64** %8, align 8
  %62 = load i64, i64* %61, align 8
  %63 = xor i64 %62, -1
  %64 = load i64*, i64** %8, align 8
  store i64 %63, i64* %64, align 8
  %65 = load i64*, i64** %8, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 2
  store i64* %66, i64** %8, align 8
  br label %67

67:                                               ; preds = %60
  %68 = load i64, i64* %9, align 8
  %69 = add nsw i64 %68, 2
  store i64 %69, i64* %9, align 8
  br label %56

70:                                               ; preds = %56
  br label %109

71:                                               ; preds = %46, %40
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PNG_COLOR_TYPE_GRAY_ALPHA, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %108

77:                                               ; preds = %71
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 16
  br i1 %81, label %82, label %108

82:                                               ; preds = %77
  %83 = load i64*, i64** %4, align 8
  store i64* %83, i64** %11, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %87

87:                                               ; preds = %104, %82
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* %13, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %87
  %92 = load i64*, i64** %11, align 8
  %93 = load i64, i64* %92, align 8
  %94 = xor i64 %93, -1
  %95 = load i64*, i64** %11, align 8
  store i64 %94, i64* %95, align 8
  %96 = load i64*, i64** %11, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 1
  %98 = load i64, i64* %97, align 8
  %99 = xor i64 %98, -1
  %100 = load i64*, i64** %11, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 1
  store i64 %99, i64* %101, align 8
  %102 = load i64*, i64** %11, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 4
  store i64* %103, i64** %11, align 8
  br label %104

104:                                              ; preds = %91
  %105 = load i64, i64* %12, align 8
  %106 = add nsw i64 %105, 4
  store i64 %106, i64* %12, align 8
  br label %87

107:                                              ; preds = %87
  br label %108

108:                                              ; preds = %107, %77, %71
  br label %109

109:                                              ; preds = %108, %70
  br label %110

110:                                              ; preds = %109, %39
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
