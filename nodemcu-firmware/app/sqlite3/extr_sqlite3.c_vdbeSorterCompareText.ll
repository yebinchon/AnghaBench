; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_vdbeSorterCompareText.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_vdbeSorterCompareText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i8*, i32, i8*, i32)* @vdbeSorterCompareText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdbeSorterCompareText(%struct.TYPE_8__* %0, i32* %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to i64*
  store i64* %21, i64** %13, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = bitcast i8* %22 to i64*
  store i64* %23, i64** %14, align 8
  %24 = load i64*, i64** %13, align 8
  %25 = load i64*, i64** %13, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  store i64* %28, i64** %15, align 8
  %29 = load i64*, i64** %14, align 8
  %30 = load i64*, i64** %14, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  store i64* %33, i64** %16, align 8
  %34 = load i64*, i64** %13, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i32, i32* %17, align 4
  %37 = call i32 @getVarint32(i64* %35, i32 %36)
  %38 = load i32, i32* %17, align 4
  %39 = sub nsw i32 %38, 13
  %40 = sdiv i32 %39, 2
  store i32 %40, i32* %17, align 4
  %41 = load i64*, i64** %14, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i32, i32* %18, align 4
  %44 = call i32 @getVarint32(i64* %42, i32 %43)
  %45 = load i32, i32* %18, align 4
  %46 = sub nsw i32 %45, 13
  %47 = sdiv i32 %46, 2
  store i32 %47, i32* %18, align 4
  %48 = load i64*, i64** %15, align 8
  %49 = load i64*, i64** %16, align 8
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %18, align 4
  %52 = call i32 @MIN(i32 %50, i32 %51)
  %53 = call i32 @memcmp(i64* %48, i64* %49, i32 %52)
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %19, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %6
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %18, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %19, align 4
  br label %60

60:                                               ; preds = %56, %6
  %61 = load i32, i32* %19, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %60
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %80

72:                                               ; preds = %63
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i8*, i8** %11, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @vdbeSorterCompareTail(%struct.TYPE_8__* %73, i32* %74, i8* %75, i32 %76, i8* %77, i32 %78)
  store i32 %79, i32* %19, align 4
  br label %80

80:                                               ; preds = %72, %63
  br label %96

81:                                               ; preds = %60
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %81
  %93 = load i32, i32* %19, align 4
  %94 = mul nsw i32 %93, -1
  store i32 %94, i32* %19, align 4
  br label %95

95:                                               ; preds = %92, %81
  br label %96

96:                                               ; preds = %95, %80
  %97 = load i32, i32* %19, align 4
  ret i32 %97
}

declare dso_local i32 @getVarint32(i64*, i32) #1

declare dso_local i32 @memcmp(i64*, i64*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @vdbeSorterCompareTail(%struct.TYPE_8__*, i32*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
