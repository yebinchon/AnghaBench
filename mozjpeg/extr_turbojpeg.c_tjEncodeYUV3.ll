; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_turbojpeg.c_tjEncodeYUV3.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_turbojpeg.c_tjEncodeYUV3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"tjEncodeYUV3(): Invalid handle\00", align 1
@FALSE = common dso_local global i32 0, align 4
@NUMSUBOPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"tjEncodeYUV3(): Invalid argument\00", align 1
@TJSAMP_GRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tjEncodeYUV3(i64 %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
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
  store i8* %6, i8** %18, align 8
  store i32 %7, i32* %19, align 4
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
  %35 = call i32 @_throwg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %10
  %37 = load i32, i32* @FALSE, align 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %62, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %16, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %42
  %46 = load i8*, i8** %18, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %62, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %19, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %19, align 4
  %53 = call i32 @isPow2(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, i32* %20, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* @NUMSUBOPT, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58, %55, %51, %48, %45, %42, %36
  %63 = call i32 @_throw(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %20, align 4
  %67 = call i32 @tjPlaneWidth(i32 0, i32 %65, i32 %66)
  store i32 %67, i32* %23, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %20, align 4
  %70 = call i32 @tjPlaneHeight(i32 0, i32 %68, i32 %69)
  store i32 %70, i32* %24, align 4
  %71 = load i8*, i8** %18, align 8
  %72 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 0
  store i8* %71, i8** %72, align 16
  %73 = load i32, i32* %23, align 4
  %74 = load i32, i32* %19, align 4
  %75 = call i32 @PAD(i32 %73, i32 %74)
  %76 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 0
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* @TJSAMP_GRAY, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %64
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 2
  store i32 0, i32* %81, align 4
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 1
  store i32 0, i32* %82, align 4
  %83 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 2
  store i8* null, i8** %83, align 16
  %84 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 1
  store i8* null, i8** %84, align 8
  br label %115

85:                                               ; preds = %64
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %20, align 4
  %88 = call i32 @tjPlaneWidth(i32 1, i32 %86, i32 %87)
  store i32 %88, i32* %28, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %20, align 4
  %91 = call i32 @tjPlaneHeight(i32 1, i32 %89, i32 %90)
  store i32 %91, i32* %29, align 4
  %92 = load i32, i32* %28, align 4
  %93 = load i32, i32* %19, align 4
  %94 = call i32 @PAD(i32 %92, i32 %93)
  %95 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 2
  store i32 %94, i32* %95, align 4
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 1
  store i32 %94, i32* %96, align 4
  %97 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 0
  %98 = load i8*, i8** %97, align 16
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %24, align 4
  %102 = mul nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %98, i64 %103
  %105 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 1
  store i8* %104, i8** %105, align 8
  %106 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 1
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %29, align 4
  %111 = mul nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %107, i64 %112
  %114 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 2
  store i8* %113, i8** %114, align 16
  br label %115

115:                                              ; preds = %85, %80
  %116 = load i64, i64* %12, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %17, align 4
  %122 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 0
  %123 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 0
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* %21, align 4
  %126 = call i32 @tjEncodeYUVPlanes(i64 %116, i8* %117, i32 %118, i32 %119, i32 %120, i32 %121, i8** %122, i32* %123, i32 %124, i32 %125)
  store i32 %126, i32* %11, align 4
  br label %129

127:                                              ; No predecessors!
  %128 = load i32, i32* %26, align 4
  store i32 %128, i32* %11, align 4
  br label %129

129:                                              ; preds = %127, %115
  %130 = load i32, i32* %11, align 4
  ret i32 %130
}

declare dso_local i32 @_throwg(i8*) #1

declare dso_local i32 @isPow2(i32) #1

declare dso_local i32 @_throw(i8*) #1

declare dso_local i32 @tjPlaneWidth(i32, i32, i32) #1

declare dso_local i32 @tjPlaneHeight(i32, i32, i32) #1

declare dso_local i32 @PAD(i32, i32) #1

declare dso_local i32 @tjEncodeYUVPlanes(i64, i8*, i32, i32, i32, i32, i8**, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
