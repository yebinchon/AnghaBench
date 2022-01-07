; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashsearch.c__hash_next.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashsearch.c__hash_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, i64, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@HASH_READ = common dso_local global i32 0, align 4
@LH_OVERFLOW_PAGE = common dso_local global i32 0, align 4
@LH_BUCKET_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hash_next(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %7, align 8
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @ScanDirectionIsForward(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %72

23:                                               ; preds = %2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %28, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %23
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = call i32 @_hash_kill_items(%struct.TYPE_9__* %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @BlockNumberIsValid(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @HASH_READ, align 4
  %54 = load i32, i32* @LH_OVERFLOW_PAGE, align 4
  %55 = call i64 @_hash_getbuf(i32 %51, i32 %52, i32 %53, i32 %54)
  store i64 %55, i64* %10, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @BufferGetPage(i64 %60)
  %62 = call i32 @TestForOldSnapshot(i32 %58, i32 %59, i32 %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @_hash_readpage(%struct.TYPE_9__* %63, i64* %10, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %50
  store i32 1, i32* %11, align 4
  br label %68

68:                                               ; preds = %67, %50
  br label %70

69:                                               ; preds = %42
  store i32 1, i32* %11, align 4
  br label %70

70:                                               ; preds = %69, %68
  br label %71

71:                                               ; preds = %70, %23
  br label %139

72:                                               ; preds = %2
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, -1
  store i64 %77, i64* %75, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %77, %81
  br i1 %82, label %83, label %138

83:                                               ; preds = %72
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = call i32 @_hash_kill_items(%struct.TYPE_9__* %89)
  br label %91

91:                                               ; preds = %88, %83
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i64 @BlockNumberIsValid(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %136

99:                                               ; preds = %91
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @HASH_READ, align 4
  %103 = load i32, i32* @LH_BUCKET_PAGE, align 4
  %104 = load i32, i32* @LH_OVERFLOW_PAGE, align 4
  %105 = or i32 %103, %104
  %106 = call i64 @_hash_getbuf(i32 %100, i32 %101, i32 %102, i32 %105)
  store i64 %106, i64* %10, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i64, i64* %10, align 8
  %112 = call i32 @BufferGetPage(i64 %111)
  %113 = call i32 @TestForOldSnapshot(i32 %109, i32 %110, i32 %112)
  %114 = load i64, i64* %10, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %114, %117
  br i1 %118, label %125, label %119

119:                                              ; preds = %99
  %120 = load i64, i64* %10, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %120, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %119, %99
  %126 = load i32, i32* %6, align 4
  %127 = load i64, i64* %10, align 8
  %128 = call i32 @_hash_dropbuf(i32 %126, i64 %127)
  br label %129

129:                                              ; preds = %125, %119
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @_hash_readpage(%struct.TYPE_9__* %130, i64* %10, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  store i32 1, i32* %11, align 4
  br label %135

135:                                              ; preds = %134, %129
  br label %137

136:                                              ; preds = %91
  store i32 1, i32* %11, align 4
  br label %137

137:                                              ; preds = %136, %135
  br label %138

138:                                              ; preds = %137, %72
  br label %139

139:                                              ; preds = %138, %71
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %139
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %145 = call i32 @_hash_dropscanbuf(i32 %143, %struct.TYPE_11__* %144)
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 3
  %148 = call i32 @HashScanPosInvalidate(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %147)
  store i32 0, i32* %3, align 4
  br label %164

149:                                              ; preds = %139
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i64 %157
  store %struct.TYPE_10__* %158, %struct.TYPE_10__** %8, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  store i32 1, i32* %3, align 4
  br label %164

164:                                              ; preds = %149, %142
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i64 @ScanDirectionIsForward(i32) #1

declare dso_local i32 @_hash_kill_items(%struct.TYPE_9__*) #1

declare dso_local i64 @BlockNumberIsValid(i32) #1

declare dso_local i64 @_hash_getbuf(i32, i32, i32, i32) #1

declare dso_local i32 @TestForOldSnapshot(i32, i32, i32) #1

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i32 @_hash_readpage(%struct.TYPE_9__*, i64*, i32) #1

declare dso_local i32 @_hash_dropbuf(i32, i64) #1

declare dso_local i32 @_hash_dropscanbuf(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @HashScanPosInvalidate(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
