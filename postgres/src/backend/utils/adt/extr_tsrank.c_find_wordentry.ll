; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsrank.c_find_wordentry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsrank.c_find_wordentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, %struct.TYPE_4__*, i32*)* @find_wordentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_wordentry(i32 %0, i32 %1, %struct.TYPE_4__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32* @ARRPTR(i32 %13)
  store i32* %14, i32** %9, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @STRPTR(i32 %15)
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %8, align 8
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %55, %4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ult i32* %21, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %20
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = ptrtoint i32* %26 to i64
  %29 = ptrtoint i32* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 4
  %32 = sdiv i64 %31, 2
  %33 = getelementptr inbounds i32, i32* %25, i64 %32
  store i32* %33, i32** %11, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @STRPTR(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @GETOPERAND(i32 %36)
  %38 = load i32*, i32** %11, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = call i32 @WordECompareQueryItem(i64 %35, i32 %37, i32* %38, %struct.TYPE_4__* %39, i32 0)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %24
  %44 = load i32*, i32** %11, align 8
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %8, align 8
  store i32 1, i32* %45, align 4
  br label %56

46:                                               ; preds = %24
  %47 = load i32, i32* %12, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32*, i32** %11, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32* %51, i32** %9, align 8
  br label %54

52:                                               ; preds = %46
  %53 = load i32*, i32** %11, align 8
  store i32* %53, i32** %10, align 8
  br label %54

54:                                               ; preds = %52, %49
  br label %55

55:                                               ; preds = %54
  br label %20

56:                                               ; preds = %43, %20
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %93

61:                                               ; preds = %56
  %62 = load i32*, i32** %9, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = icmp uge i32* %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32*, i32** %10, align 8
  store i32* %66, i32** %11, align 8
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i32*, i32** %8, align 8
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %86, %67
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i64 @STRPTR(i32 %71)
  %73 = inttoptr i64 %72 to i32*
  %74 = icmp ult i32* %70, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = load i32, i32* %5, align 4
  %77 = call i64 @STRPTR(i32 %76)
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @GETOPERAND(i32 %78)
  %80 = load i32*, i32** %11, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %82 = call i32 @WordECompareQueryItem(i64 %77, i32 %79, i32* %80, %struct.TYPE_4__* %81, i32 1)
  %83 = icmp eq i32 %82, 0
  br label %84

84:                                               ; preds = %75, %69
  %85 = phi i1 [ false, %69 ], [ %83, %75 ]
  br i1 %85, label %86, label %92

86:                                               ; preds = %84
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load i32*, i32** %11, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %11, align 8
  br label %69

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %56
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32*, i32** %10, align 8
  br label %100

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i32* [ %98, %97 ], [ null, %99 ]
  ret i32* %101
}

declare dso_local i32* @ARRPTR(i32) #1

declare dso_local i64 @STRPTR(i32) #1

declare dso_local i32 @WordECompareQueryItem(i64, i32, i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @GETOPERAND(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
