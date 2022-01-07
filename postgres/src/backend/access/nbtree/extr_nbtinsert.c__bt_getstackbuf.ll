; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtinsert.c__bt_getstackbuf.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtinsert.c__bt_getstackbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_9__ = type { i64 }

@BT_WRITE = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i32 0, align 4
@InvalidOffsetNumber = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bt_getstackbuf(i32 %0, %struct.TYPE_8__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %9, align 8
  br label %24

24:                                               ; preds = %134, %37, %3
  %25 = load i32, i32* %5, align 4
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* @BT_WRITE, align 4
  %28 = call i32 @_bt_getbuf(i32 %25, i64 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @BufferGetPage(i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @PageGetSpecialPointer(i32 %31)
  %33 = inttoptr i64 %32 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %12, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %35 = call i64 @P_INCOMPLETE_SPLIT(%struct.TYPE_9__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %24
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @_bt_finish_split(i32 %38, i32 %39, i32 %42)
  br label %24

44:                                               ; preds = %24
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %46 = call i32 @P_IGNORE(%struct.TYPE_9__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %125, label %48

48:                                               ; preds = %44
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %50 = call i64 @P_FIRSTDATAKEY(%struct.TYPE_9__* %49)
  store i64 %50, i64* %14, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @PageGetMaxOffsetNumber(i32 %51)
  store i64 %52, i64* %15, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %14, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i64, i64* %14, align 8
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %56, %48
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %15, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i64, i64* %15, align 8
  %64 = call i64 @OffsetNumberNext(i64 %63)
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i64, i64* %9, align 8
  store i64 %66, i64* %13, align 8
  br label %67

67:                                               ; preds = %91, %65
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %15, align 8
  %70 = icmp sle i64 %68, %69
  br i1 %70, label %71, label %94

71:                                               ; preds = %67
  %72 = load i32, i32* %11, align 4
  %73 = load i64, i64* %13, align 8
  %74 = call i32 @PageGetItemId(i32 %72, i64 %73)
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i64 @PageGetItem(i32 %75, i32 %76)
  store i64 %77, i64* %17, align 8
  %78 = load i64, i64* %17, align 8
  %79 = call i64 @BTreeInnerTupleGetDownLink(i64 %78)
  %80 = load i64, i64* %7, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %71
  %83 = load i64, i64* %8, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %4, align 4
  br label %142

90:                                               ; preds = %71
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %13, align 8
  %93 = call i64 @OffsetNumberNext(i64 %92)
  store i64 %93, i64* %13, align 8
  br label %67

94:                                               ; preds = %67
  %95 = load i64, i64* %9, align 8
  %96 = call i64 @OffsetNumberPrev(i64 %95)
  store i64 %96, i64* %13, align 8
  br label %97

97:                                               ; preds = %121, %94
  %98 = load i64, i64* %13, align 8
  %99 = load i64, i64* %14, align 8
  %100 = icmp sge i64 %98, %99
  br i1 %100, label %101, label %124

101:                                              ; preds = %97
  %102 = load i32, i32* %11, align 4
  %103 = load i64, i64* %13, align 8
  %104 = call i32 @PageGetItemId(i32 %102, i64 %103)
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %16, align 4
  %107 = call i64 @PageGetItem(i32 %105, i32 %106)
  store i64 %107, i64* %17, align 8
  %108 = load i64, i64* %17, align 8
  %109 = call i64 @BTreeInnerTupleGetDownLink(i64 %108)
  %110 = load i64, i64* %7, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %101
  %113 = load i64, i64* %8, align 8
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load i64, i64* %13, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %4, align 4
  br label %142

120:                                              ; preds = %101
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %13, align 8
  %123 = call i64 @OffsetNumberPrev(i64 %122)
  store i64 %123, i64* %13, align 8
  br label %97

124:                                              ; preds = %97
  br label %125

125:                                              ; preds = %124, %44
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %127 = call i64 @P_RIGHTMOST(%struct.TYPE_9__* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @_bt_relbuf(i32 %130, i32 %131)
  %133 = load i32, i32* @InvalidBuffer, align 4
  store i32 %133, i32* %4, align 4
  br label %142

134:                                              ; preds = %125
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %8, align 8
  %138 = load i64, i64* @InvalidOffsetNumber, align 8
  store i64 %138, i64* %9, align 8
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @_bt_relbuf(i32 %139, i32 %140)
  br label %24

142:                                              ; preds = %129, %112, %82
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @_bt_getbuf(i32, i64, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i64 @P_INCOMPLETE_SPLIT(%struct.TYPE_9__*) #1

declare dso_local i32 @_bt_finish_split(i32, i32, i32) #1

declare dso_local i32 @P_IGNORE(%struct.TYPE_9__*) #1

declare dso_local i64 @P_FIRSTDATAKEY(%struct.TYPE_9__*) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i64 @BTreeInnerTupleGetDownLink(i64) #1

declare dso_local i64 @OffsetNumberPrev(i64) #1

declare dso_local i64 @P_RIGHTMOST(%struct.TYPE_9__*) #1

declare dso_local i32 @_bt_relbuf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
