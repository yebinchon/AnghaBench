; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_modifyPagePointer.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_modifyPagePointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64*, i64, i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@PTRMAP_OVERFLOW2 = common dso_local global i64 0, align 8
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@PTRMAP_OVERFLOW1 = common dso_local global i64 0, align 8
@PTRMAP_BTREE = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64, i64, i64)* @modifyPagePointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modifyPagePointer(%struct.TYPE_10__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sqlite3_mutex_held(i32 %19)
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sqlite3PagerIswriteable(i32 %24)
  %26 = call i32 @assert(i32 %25)
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @PTRMAP_OVERFLOW2, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = call i64 @get4byte(i64* %33)
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %38, i32* %5, align 4
  br label %161

39:                                               ; preds = %30
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @put4byte(i64* %42, i64 %43)
  br label %159

45:                                               ; preds = %4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %10, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = call i32 @btreeInitPage(%struct.TYPE_10__* %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %117, %45
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %120

58:                                               ; preds = %54
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i64* @findCell(%struct.TYPE_10__* %59, i32 %60)
  store i64* %61, i64** %13, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* @PTRMAP_OVERFLOW1, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %106

65:                                               ; preds = %58
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %67 = load i64*, i64** %13, align 8
  %68 = call i32 @btreeParseCellPtr(%struct.TYPE_10__* %66, i64* %67, %struct.TYPE_11__* %14)
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %105

72:                                               ; preds = %65
  %73 = load i64*, i64** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %73, i64 %76
  %78 = getelementptr inbounds i64, i64* %77, i64 3
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %81, i64 %85
  %87 = icmp ule i64* %78, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %72
  %89 = load i64, i64* %7, align 8
  %90 = load i64*, i64** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %90, i64 %93
  %95 = call i64 @get4byte(i64* %94)
  %96 = icmp eq i64 %89, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %88
  %98 = load i64*, i64** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %98, i64 %101
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @put4byte(i64* %102, i64 %103)
  br label %120

105:                                              ; preds = %88, %72, %65
  br label %116

106:                                              ; preds = %58
  %107 = load i64*, i64** %13, align 8
  %108 = call i64 @get4byte(i64* %107)
  %109 = load i64, i64* %7, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load i64*, i64** %13, align 8
  %113 = load i64, i64* %8, align 8
  %114 = call i32 @put4byte(i64* %112, i64 %113)
  br label %120

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %105
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %54

120:                                              ; preds = %111, %97, %54
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %155

124:                                              ; preds = %120
  %125 = load i64, i64* %9, align 8
  %126 = load i64, i64* @PTRMAP_BTREE, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %141, label %128

128:                                              ; preds = %124
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 8
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %131, i64 %136
  %138 = call i64 @get4byte(i64* %137)
  %139 = load i64, i64* %7, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %128, %124
  %142 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %142, i32* %5, align 4
  br label %161

143:                                              ; preds = %128
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 8
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %146, i64 %151
  %153 = load i64, i64* %8, align 8
  %154 = call i32 @put4byte(i64* %152, i64 %153)
  br label %155

155:                                              ; preds = %143, %120
  %156 = load i64, i64* %10, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  store i64 %156, i64* %158, align 8
  br label %159

159:                                              ; preds = %155, %39
  %160 = load i32, i32* @SQLITE_OK, align 4
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %159, %141, %37
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @sqlite3PagerIswriteable(i32) #1

declare dso_local i64 @get4byte(i64*) #1

declare dso_local i32 @put4byte(i64*, i64) #1

declare dso_local i32 @btreeInitPage(%struct.TYPE_10__*) #1

declare dso_local i64* @findCell(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @btreeParseCellPtr(%struct.TYPE_10__*, i64*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
