; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsearch.c__bt_binsrch_insert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsearch.c__bt_binsrch_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@InvalidOffsetNumber = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bt_binsrch_insert(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @BufferGetPage(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @PageGetSpecialPointer(i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @P_ISLEAF(i64 %24)
  %26 = call i32 @Assert(i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %2
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @P_FIRSTDATAKEY(i64 %39)
  store i64 %40, i64* %9, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @PageGetMaxOffsetNumber(i32 %41)
  store i64 %42, i64* %10, align 8
  br label %50

43:                                               ; preds = %2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %9, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %43, %38
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp slt i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = load i8*, i8** @InvalidOffsetNumber, align 8
  %59 = ptrtoint i8* %58 to i64
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load i8*, i8** @InvalidOffsetNumber, align 8
  %63 = ptrtoint i8* %62 to i64
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load i64, i64* %9, align 8
  store i64 %68, i64* %3, align 8
  br label %119

69:                                               ; preds = %50
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i64, i64* %10, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %10, align 8
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i64, i64* %10, align 8
  store i64 %78, i64* %11, align 8
  store i32 1, i32* %13, align 4
  br label %79

79:                                               ; preds = %108, %77
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* %9, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %79
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %9, align 8
  %87 = sub nsw i64 %85, %86
  %88 = sdiv i64 %87, 2
  %89 = add nsw i64 %84, %88
  store i64 %89, i64* %14, align 8
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i64, i64* %14, align 8
  %94 = call i32 @_bt_compare(i32 %90, %struct.TYPE_5__* %91, i32 %92, i64 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp sge i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %83
  %99 = load i64, i64* %14, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %9, align 8
  br label %108

101:                                              ; preds = %83
  %102 = load i64, i64* %14, align 8
  store i64 %102, i64* %10, align 8
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i64, i64* %10, align 8
  store i64 %106, i64* %11, align 8
  br label %107

107:                                              ; preds = %105, %101
  br label %108

108:                                              ; preds = %107, %98
  br label %79

109:                                              ; preds = %79
  %110 = load i64, i64* %9, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load i64, i64* %11, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  store i64 %113, i64* %115, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  %118 = load i64, i64* %9, align 8
  store i64 %118, i64* %3, align 8
  br label %119

119:                                              ; preds = %109, %57
  %120 = load i64, i64* %3, align 8
  ret i64 %120
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @P_ISLEAF(i64) #1

declare dso_local i64 @P_FIRSTDATAKEY(i64) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @_bt_compare(i32, %struct.TYPE_5__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
