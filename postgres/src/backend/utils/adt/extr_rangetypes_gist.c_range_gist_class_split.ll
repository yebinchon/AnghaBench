; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_gist.c_range_gist_class_split.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes_gist.c_range_gist_class_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i8*, i64, i64 }

@FirstOffsetNumber = common dso_local global i64 0, align 8
@SPLIT_LEFT = common dso_local global i64 0, align 8
@SPLIT_RIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, %struct.TYPE_8__*, i64*)* @range_gist_class_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @range_gist_class_split(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i64* %3, i64** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %17, 1
  store i64 %18, i64* %12, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %23, i64* %11, align 8
  br label %24

24:                                               ; preds = %64, %4
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %12, align 8
  %27 = icmp ule i64 %25, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %24
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32* @DatumGetRangeTypeP(i32 %35)
  store i32* %36, i32** %13, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @get_gist_range_class(i32* %37)
  store i32 %38, i32* %14, align 4
  %39 = load i64*, i64** %8, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SPLIT_LEFT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %28
  %47 = load i32*, i32** %13, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @PLACE_LEFT(i32* %47, i64 %48)
  br label %63

50:                                               ; preds = %28
  %51 = load i64*, i64** %8, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SPLIT_RIGHT, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @Assert(i32 %58)
  %60 = load i32*, i32** %13, align 8
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @PLACE_RIGHT(i32* %60, i64 %61)
  br label %63

63:                                               ; preds = %50, %46
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %11, align 8
  %66 = call i64 @OffsetNumberNext(i64 %65)
  store i64 %66, i64* %11, align 8
  br label %24

67:                                               ; preds = %24
  %68 = load i32*, i32** %9, align 8
  %69 = call i8* @RangeTypePGetDatum(i32* %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i8* @RangeTypePGetDatum(i32* %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  ret void
}

declare dso_local i32* @DatumGetRangeTypeP(i32) #1

declare dso_local i32 @get_gist_range_class(i32*) #1

declare dso_local i32 @PLACE_LEFT(i32*, i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PLACE_RIGHT(i32*, i64) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

declare dso_local i8* @RangeTypePGetDatum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
