; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_clearCell.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_clearCell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*)* @clearCell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clearCell(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %6, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sqlite3_mutex_held(i32 %21)
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @btreeParseCellPtr(%struct.TYPE_14__* %24, i8* %25, %struct.TYPE_15__* %7)
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @SQLITE_OK, align 4
  store i32 %31, i32* %3, align 4
  br label %150

32:                                               ; preds = %2
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = getelementptr inbounds i8, i8* %37, i64 3
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  %47 = icmp ugt i8* %38, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %32
  %49 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %49, i32* %3, align 4
  br label %150

50:                                               ; preds = %32
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = call i32 @get4byte(i8* %55)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %59, 4
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 4
  store i32 %66, i32* %11, align 4
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %68, %70
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %71, %72
  %74 = sub nsw i32 %73, 1
  %75 = load i32, i32* %11, align 4
  %76 = sdiv i32 %74, %75
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %50
  %80 = load i32, i32* %10, align 4
  %81 = icmp sgt i32 %80, 0
  br label %82

82:                                               ; preds = %79, %50
  %83 = phi i1 [ true, %50 ], [ %81, %79 ]
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  br label %86

86:                                               ; preds = %146, %82
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %10, align 4
  %89 = icmp ne i32 %87, 0
  br i1 %89, label %90, label %148

90:                                               ; preds = %86
  store i32 0, i32* %12, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %13, align 8
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %91, 2
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %96 = call i32 @btreePagecount(%struct.TYPE_16__* %95)
  %97 = icmp sgt i32 %94, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %93, %90
  %99 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %99, i32* %3, align 4
  br label %150

100:                                              ; preds = %93
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @getOverflowPage(%struct.TYPE_16__* %104, i32 %105, %struct.TYPE_14__** %13, i32* %12)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %3, align 4
  br label %150

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111, %100
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %114 = icmp ne %struct.TYPE_14__* %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %112
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call %struct.TYPE_14__* @btreePageLookup(%struct.TYPE_16__* %116, i32 %117)
  store %struct.TYPE_14__* %118, %struct.TYPE_14__** %13, align 8
  %119 = icmp ne %struct.TYPE_14__* %118, null
  br i1 %119, label %120, label %128

120:                                              ; preds = %115, %112
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @sqlite3PagerPageRefcount(i32 %123)
  %125 = icmp ne i32 %124, 1
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %127, i32* %9, align 4
  br label %133

128:                                              ; preds = %120, %115
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @freePage2(%struct.TYPE_16__* %129, %struct.TYPE_14__* %130, i32 %131)
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %128, %126
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %135 = icmp ne %struct.TYPE_14__* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @sqlite3PagerUnref(i32 %139)
  br label %141

141:                                              ; preds = %136, %133
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %3, align 4
  br label %150

146:                                              ; preds = %141
  %147 = load i32, i32* %12, align 4
  store i32 %147, i32* %8, align 4
  br label %86

148:                                              ; preds = %86
  %149 = load i32, i32* @SQLITE_OK, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %144, %109, %98, %48, %30
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @btreeParseCellPtr(%struct.TYPE_14__*, i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @get4byte(i8*) #1

declare dso_local i32 @btreePagecount(%struct.TYPE_16__*) #1

declare dso_local i32 @getOverflowPage(%struct.TYPE_16__*, i32, %struct.TYPE_14__**, i32*) #1

declare dso_local %struct.TYPE_14__* @btreePageLookup(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @sqlite3PagerPageRefcount(i32) #1

declare dso_local i32 @freePage2(%struct.TYPE_16__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @sqlite3PagerUnref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
