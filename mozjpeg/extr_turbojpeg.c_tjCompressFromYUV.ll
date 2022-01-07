; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_turbojpeg.c_tjCompressFromYUV.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_turbojpeg.c_tjCompressFromYUV.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"tjCompressFromYUV(): Invalid handle\00", align 1
@FALSE = common dso_local global i32 0, align 4
@NUMSUBOPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"tjCompressFromYUV(): Invalid argument\00", align 1
@TJSAMP_GRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tjCompressFromYUV(i64 %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8** %6, i64* %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8**, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [3 x i8*], align 16
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [3 x i32], align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_2__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i64 %0, i64* %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i8** %6, i8*** %18, align 8
  store i64* %7, i64** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 -1, i32* %26, align 4
  %30 = load i64, i64* %12, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %31, %struct.TYPE_2__** %27, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %10
  %35 = call i32 @_throwg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %10
  %37 = load i32, i32* @FALSE, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i8*, i8** %13, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %58, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %14, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %15, align 4
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %58, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %16, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %17, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* @NUMSUBOPT, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54, %51, %48, %45, %42, %36
  %59 = call i32 @_throw(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %17, align 4
  %63 = call i32 @tjPlaneWidth(i32 0, i32 %61, i32 %62)
  store i32 %63, i32* %23, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %17, align 4
  %66 = call i32 @tjPlaneHeight(i32 0, i32 %64, i32 %65)
  store i32 %66, i32* %24, align 4
  %67 = load i8*, i8** %13, align 8
  %68 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 0
  store i8* %67, i8** %68, align 16
  %69 = load i32, i32* %23, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @PAD(i32 %69, i32 %70)
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 0
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* @TJSAMP_GRAY, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %60
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 2
  store i32 0, i32* %77, align 4
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 1
  store i32 0, i32* %78, align 4
  %79 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 2
  store i8* null, i8** %79, align 16
  %80 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 1
  store i8* null, i8** %80, align 8
  br label %111

81:                                               ; preds = %60
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @tjPlaneWidth(i32 1, i32 %82, i32 %83)
  store i32 %84, i32* %28, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %17, align 4
  %87 = call i32 @tjPlaneHeight(i32 1, i32 %85, i32 %86)
  store i32 %87, i32* %29, align 4
  %88 = load i32, i32* %28, align 4
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @PAD(i32 %88, i32 %89)
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 2
  store i32 %90, i32* %91, align 4
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 1
  store i32 %90, i32* %92, align 4
  %93 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 0
  %94 = load i8*, i8** %93, align 16
  %95 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %24, align 4
  %98 = mul nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %94, i64 %99
  %101 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 1
  store i8* %100, i8** %101, align 8
  %102 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 1
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %29, align 4
  %107 = mul nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %103, i64 %108
  %110 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 2
  store i8* %109, i8** %110, align 16
  br label %111

111:                                              ; preds = %81, %76
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 0
  %114 = load i32, i32* %14, align 4
  %115 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 0
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %17, align 4
  %118 = load i8**, i8*** %18, align 8
  %119 = load i64*, i64** %19, align 8
  %120 = load i32, i32* %20, align 4
  %121 = load i32, i32* %21, align 4
  %122 = call i32 @tjCompressFromYUVPlanes(i64 %112, i8** %113, i32 %114, i32* %115, i32 %116, i32 %117, i8** %118, i64* %119, i32 %120, i32 %121)
  store i32 %122, i32* %11, align 4
  br label %125

123:                                              ; No predecessors!
  %124 = load i32, i32* %26, align 4
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %123, %111
  %126 = load i32, i32* %11, align 4
  ret i32 %126
}

declare dso_local i32 @_throwg(i8*) #1

declare dso_local i32 @_throw(i8*) #1

declare dso_local i32 @tjPlaneWidth(i32, i32, i32) #1

declare dso_local i32 @tjPlaneHeight(i32, i32, i32) #1

declare dso_local i32 @PAD(i32, i32) #1

declare dso_local i32 @tjCompressFromYUVPlanes(i64, i8**, i32, i32*, i32, i32, i8**, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
