; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fons__addWhiteRect.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fons__addWhiteRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8**, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32)* @fons__addWhiteRect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fons__addWhiteRect(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @fons__atlasAddRect(i32 %14, i32 %15, i32 %16, i32* %9, i32* %10)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %111

20:                                               ; preds = %3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %25, %29
  %31 = add nsw i32 %24, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %23, i64 %32
  store i8* %33, i8** %11, align 8
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %59, %20
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %48, %38
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i8*, i8** %11, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8 -1, i8* %47, align 1
  br label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %39

51:                                               ; preds = %39
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %11, align 8
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %34

62:                                               ; preds = %34
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i8* @fons__mini(i8* %67, i32 %68)
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  store i8* %69, i8** %73, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i8* @fons__mini(i8* %78, i32 %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i8**, i8*** %82, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 1
  store i8* %80, i8** %84, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i8**, i8*** %86, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 2
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %90, %91
  %93 = call i8* @fons__maxi(i8* %89, i32 %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i8**, i8*** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 2
  store i8* %93, i8** %97, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i8**, i8*** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 3
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %103, %104
  %106 = call i8* @fons__maxi(i8* %102, i32 %105)
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i8**, i8*** %108, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 3
  store i8* %106, i8** %110, align 8
  br label %111

111:                                              ; preds = %62, %19
  ret void
}

declare dso_local i64 @fons__atlasAddRect(i32, i32, i32, i32*, i32*) #1

declare dso_local i8* @fons__mini(i8*, i32) #1

declare dso_local i8* @fons__maxi(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
