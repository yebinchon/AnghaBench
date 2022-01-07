; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes.c_range_deserialize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes.c_range_deserialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i8, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i8* }

@RANGE_EMPTY = common dso_local global i8 0, align 1
@RANGE_LB_INF = common dso_local global i8 0, align 1
@RANGE_LB_INC = common dso_local global i8 0, align 1
@RANGE_UB_INF = common dso_local global i8 0, align 1
@RANGE_UB_INC = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @range_deserialize(%struct.TYPE_8__* %0, i32* %1, %struct.TYPE_9__* %2, %struct.TYPE_9__* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i64 @RangeTypeGetOid(i32* %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = bitcast i32* %26 to i8*
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @VARSIZE(i32* %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = getelementptr inbounds i8, i8* %31, i64 -1
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %11, align 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %13, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i8, i8* %47, align 4
  store i8 %48, i8* %14, align 1
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = ptrtoint i32* %50 to i64
  store i64 %51, i64* %15, align 8
  %52 = load i8, i8* %11, align 1
  %53 = call i64 @RANGE_HAS_LBOUND(i8 signext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %5
  %56 = load i64, i64* %15, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i8* @fetch_att(i64 %56, i32 %57, i32 %58)
  store i8* %59, i8** %16, align 8
  %60 = load i64, i64* %15, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i64, i64* %15, align 8
  %63 = call i64 @att_addlength_pointer(i64 %60, i32 %61, i64 %62)
  store i64 %63, i64* %15, align 8
  br label %65

64:                                               ; preds = %5
  store i8* null, i8** %16, align 8
  br label %65

65:                                               ; preds = %64, %55
  %66 = load i8, i8* %11, align 1
  %67 = call i64 @RANGE_HAS_UBOUND(i8 signext %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load i64, i64* %15, align 8
  %71 = load i8, i8* %14, align 1
  %72 = load i32, i32* %12, align 4
  %73 = load i64, i64* %15, align 8
  %74 = call i64 @att_align_pointer(i64 %70, i8 signext %71, i32 %72, i64 %73)
  store i64 %74, i64* %15, align 8
  %75 = load i64, i64* %15, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i8* @fetch_att(i64 %75, i32 %76, i32 %77)
  store i8* %78, i8** %17, align 8
  br label %80

79:                                               ; preds = %65
  store i8* null, i8** %17, align 8
  br label %80

80:                                               ; preds = %79, %69
  %81 = load i8, i8* %11, align 1
  %82 = sext i8 %81 to i32
  %83 = load i8, i8* @RANGE_EMPTY, align 1
  %84 = sext i8 %83 to i32
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = load i32*, i32** %10, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i8*, i8** %16, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  %92 = load i8, i8* %11, align 1
  %93 = sext i8 %92 to i32
  %94 = load i8, i8* @RANGE_LB_INF, align 1
  %95 = sext i8 %94 to i32
  %96 = and i32 %93, %95
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i8, i8* %11, align 1
  %102 = sext i8 %101 to i32
  %103 = load i8, i8* @RANGE_LB_INC, align 1
  %104 = sext i8 %103 to i32
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i32
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  store i32 1, i32* %111, align 8
  %112 = load i8*, i8** %17, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load i8, i8* %11, align 1
  %116 = sext i8 %115 to i32
  %117 = load i8, i8* @RANGE_UB_INF, align 1
  %118 = sext i8 %117 to i32
  %119 = and i32 %116, %118
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load i8, i8* %11, align 1
  %125 = sext i8 %124 to i32
  %126 = load i8, i8* @RANGE_UB_INC, align 1
  %127 = sext i8 %126 to i32
  %128 = and i32 %125, %127
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i32
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  store i32 0, i32* %134, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @RangeTypeGetOid(i32*) #1

declare dso_local i32 @VARSIZE(i32*) #1

declare dso_local i64 @RANGE_HAS_LBOUND(i8 signext) #1

declare dso_local i8* @fetch_att(i64, i32, i32) #1

declare dso_local i64 @att_addlength_pointer(i64, i32, i64) #1

declare dso_local i64 @RANGE_HAS_UBOUND(i8 signext) #1

declare dso_local i64 @att_align_pointer(i64, i8 signext, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
