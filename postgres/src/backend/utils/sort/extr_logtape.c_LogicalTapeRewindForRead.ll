; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_logtape.c_LogicalTapeRewindForRead.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_logtape.c_LogicalTapeRewindForRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, i32, i32, i64, i64, i64, i64, i32*, i32, i64 }

@BLCKSZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LogicalTapeRewindForRead(%struct.TYPE_7__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br label %16

16:                                               ; preds = %10, %3
  %17 = phi i1 [ false, %3 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @Assert(i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i64 %24
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %7, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %16
  %31 = load i64, i64* @BLCKSZ, align 8
  store i64 %31, i64* %6, align 8
  br label %54

32:                                               ; preds = %16
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @BLCKSZ, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* @BLCKSZ, align 8
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %36, %32
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ugt i64 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %44, %38
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @BLCKSZ, align 8
  %51 = urem i64 %49, %50
  %52 = load i64, i64* %6, align 8
  %53 = sub i64 %52, %51
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %48, %30
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %102

59:                                               ; preds = %54
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 10
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %99

64:                                               ; preds = %59
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 8
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = sub i64 %75, %79
  %81 = trunc i64 %80 to i32
  %82 = call i32 @VALGRIND_MAKE_MEM_DEFINED(i32* %72, i32 %81)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 8
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @TapeBlockSetNBytes(i32* %85, i32 %88)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 9
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 8
  %96 = load i32*, i32** %95, align 8
  %97 = bitcast i32* %96 to i8*
  %98 = call i32 @ltsWriteBlock(%struct.TYPE_7__* %90, i32 %93, i8* %97)
  br label %99

99:                                               ; preds = %64, %59
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  store i32 0, i32* %101, align 8
  br label %107

102:                                              ; preds = %54
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @Assert(i32 %105)
  br label %107

107:                                              ; preds = %102, %99
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 8
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 8
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @pfree(i32* %115)
  br label %117

117:                                              ; preds = %112, %107
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 8
  store i32* null, i32** %119, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 4
  store i64 0, i64* %121, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, -1
  br i1 %125, label %126, label %134

126:                                              ; preds = %117
  %127 = load i64, i64* %6, align 8
  %128 = call i32* @palloc(i64 %127)
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 8
  store i32* %128, i32** %130, align 8
  %131 = load i64, i64* %6, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 4
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %126, %117
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 6
  store i64 %137, i64* %139, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 7
  store i64 0, i64* %141, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 3
  store i32 0, i32* %143, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %146 = call i32 @ltsReadFillBuffer(%struct.TYPE_7__* %144, %struct.TYPE_8__* %145)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(i32*, i32) #1

declare dso_local i32 @TapeBlockSetNBytes(i32*, i32) #1

declare dso_local i32 @ltsWriteBlock(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32* @palloc(i64) #1

declare dso_local i32 @ltsReadFillBuffer(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
