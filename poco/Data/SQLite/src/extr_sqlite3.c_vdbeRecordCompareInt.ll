; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_vdbeRecordCompareInt.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_vdbeRecordCompareInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@CORRUPT_DB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.TYPE_10__*)* @vdbeRecordCompareInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdbeRecordCompareInt(i32 %0, i8* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 63
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %16, i64 %21
  store i32* %22, i32** %8, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @vdbeAssertFieldCountWithinLimits(i32 %27, i8* %28, i32 %31)
  %33 = load i8*, i8** %6, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = icmp sle i32 %35, 63
  br i1 %36, label %40, label %37

37:                                               ; preds = %3
  %38 = load i64, i64* @CORRUPT_DB, align 8
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %37, %3
  %41 = phi i1 [ true, %3 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* %9, align 4
  switch i32 %44, label %110 [
    i32 1, label %45
    i32 2, label %52
    i32 3, label %59
    i32 4, label %66
    i32 5, label %75
    i32 6, label %88
    i32 8, label %103
    i32 9, label %104
    i32 0, label %105
    i32 7, label %105
  ]

45:                                               ; preds = %40
  %46 = load i32*, i32** %8, align 8
  %47 = call i64 @ONE_BYTE_INT(i32* %46)
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %14, align 8
  %49 = icmp slt i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @testcase(i32 %50)
  br label %115

52:                                               ; preds = %40
  %53 = load i32*, i32** %8, align 8
  %54 = call i64 @TWO_BYTE_INT(i32* %53)
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %14, align 8
  %56 = icmp slt i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @testcase(i32 %57)
  br label %115

59:                                               ; preds = %40
  %60 = load i32*, i32** %8, align 8
  %61 = call i64 @THREE_BYTE_INT(i32* %60)
  store i64 %61, i64* %14, align 8
  %62 = load i64, i64* %14, align 8
  %63 = icmp slt i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @testcase(i32 %64)
  br label %115

66:                                               ; preds = %40
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @FOUR_BYTE_UINT(i32* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %14, align 8
  %71 = load i64, i64* %14, align 8
  %72 = icmp slt i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @testcase(i32 %73)
  br label %115

75:                                               ; preds = %40
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = call i32 @FOUR_BYTE_UINT(i32* %77)
  %79 = sext i32 %78 to i64
  %80 = load i32*, i32** %8, align 8
  %81 = call i64 @TWO_BYTE_INT(i32* %80)
  %82 = mul nsw i64 4294967296, %81
  %83 = add nsw i64 %79, %82
  store i64 %83, i64* %14, align 8
  %84 = load i64, i64* %14, align 8
  %85 = icmp slt i64 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @testcase(i32 %86)
  br label %115

88:                                               ; preds = %40
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @FOUR_BYTE_UINT(i32* %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = shl i32 %91, 32
  %93 = load i32*, i32** %8, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  %95 = call i32 @FOUR_BYTE_UINT(i32* %94)
  %96 = or i32 %92, %95
  store i32 %96, i32* %12, align 4
  %97 = bitcast i32* %12 to i64*
  %98 = load i64, i64* %97, align 4
  store i64 %98, i64* %14, align 8
  %99 = load i64, i64* %14, align 8
  %100 = icmp slt i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @testcase(i32 %101)
  br label %115

103:                                              ; preds = %40
  store i64 0, i64* %14, align 8
  br label %115

104:                                              ; preds = %40
  store i64 1, i64* %14, align 8
  br label %115

105:                                              ; preds = %40, %40
  %106 = load i32, i32* %5, align 4
  %107 = load i8*, i8** %6, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %109 = call i32 @sqlite3VdbeRecordCompare(i32 %106, i8* %107, %struct.TYPE_10__* %108)
  store i32 %109, i32* %4, align 4
  br label %164

110:                                              ; preds = %40
  %111 = load i32, i32* %5, align 4
  %112 = load i8*, i8** %6, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %114 = call i32 @sqlite3VdbeRecordCompare(i32 %111, i8* %112, %struct.TYPE_10__* %113)
  store i32 %114, i32* %4, align 4
  br label %164

115:                                              ; preds = %104, %103, %88, %75, %66, %59, %52, %45
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 5
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %13, align 8
  %123 = load i64, i64* %13, align 8
  %124 = load i64, i64* %14, align 8
  %125 = icmp sgt i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %115
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %10, align 4
  br label %156

130:                                              ; preds = %115
  %131 = load i64, i64* %13, align 8
  %132 = load i64, i64* %14, align 8
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %10, align 4
  br label %155

138:                                              ; preds = %130
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp sgt i32 %141, 1
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load i32, i32* %5, align 4
  %145 = load i8*, i8** %6, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %147 = call i32 @sqlite3VdbeRecordCompareWithSkip(i32 %144, i8* %145, %struct.TYPE_10__* %146, i32 1)
  store i32 %147, i32* %10, align 4
  br label %154

148:                                              ; preds = %138
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %10, align 4
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 4
  store i32 1, i32* %153, align 8
  br label %154

154:                                              ; preds = %148, %143
  br label %155

155:                                              ; preds = %154, %134
  br label %156

156:                                              ; preds = %155, %126
  %157 = load i32, i32* %5, align 4
  %158 = load i8*, i8** %6, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @vdbeRecordCompareDebug(i32 %157, i8* %158, %struct.TYPE_10__* %159, i32 %160)
  %162 = call i32 @assert(i32 %161)
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %156, %110, %105
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i32 @vdbeAssertFieldCountWithinLimits(i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ONE_BYTE_INT(i32*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i64 @TWO_BYTE_INT(i32*) #1

declare dso_local i64 @THREE_BYTE_INT(i32*) #1

declare dso_local i32 @FOUR_BYTE_UINT(i32*) #1

declare dso_local i32 @sqlite3VdbeRecordCompare(i32, i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @sqlite3VdbeRecordCompareWithSkip(i32, i8*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @vdbeRecordCompareDebug(i32, i8*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
