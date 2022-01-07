; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_attrvt.c_xsltEvalAVT.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_attrvt.c_xsltEvalAVT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xsltEvalAVT(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %11, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32*, i32** %7, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %3
  store i32* null, i32** %4, align 8
  br label %91

25:                                               ; preds = %21
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %86, %25
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %89

35:                                               ; preds = %29
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i32*, i32** %8, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 4
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = call i32* @xmlStrcat(i32* %39, i32* %47)
  store i32* %48, i32** %8, align 8
  br label %81

49:                                               ; preds = %35
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %10, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32* @xsltEvalXPathStringNs(i32* %57, i64 %58, i32 %61, i32 %64)
  store i32* %65, i32** %9, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %49
  %69 = load i32*, i32** %8, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32*, i32** %8, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = call i32* @xmlStrcat(i32* %72, i32* %73)
  store i32* %74, i32** %8, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @xmlFree(i32* %75)
  br label %79

77:                                               ; preds = %68
  %78 = load i32*, i32** %9, align 8
  store i32* %78, i32** %8, align 8
  br label %79

79:                                               ; preds = %77, %71
  br label %80

80:                                               ; preds = %79, %49
  br label %81

81:                                               ; preds = %80, %38
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %29

89:                                               ; preds = %29
  %90 = load i32*, i32** %8, align 8
  store i32* %90, i32** %4, align 8
  br label %91

91:                                               ; preds = %89, %24
  %92 = load i32*, i32** %4, align 8
  ret i32* %92
}

declare dso_local i32* @xmlStrcat(i32*, i32*) #1

declare dso_local i32* @xsltEvalXPathStringNs(i32*, i64, i32, i32) #1

declare dso_local i32 @xmlFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
