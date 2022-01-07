; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_getAndInitPage.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_getAndInitPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i32, i64, i32 }
%struct.TYPE_13__ = type { i64, i32, i64, %struct.TYPE_11__** }

@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_CORRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, %struct.TYPE_11__**, %struct.TYPE_13__*, i32)* @getAndInitPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getAndInitPage(%struct.TYPE_12__* %0, i32 %1, %struct.TYPE_11__** %2, %struct.TYPE_13__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__**, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_11__** %2, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sqlite3_mutex_held(i32 %16)
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %20 = icmp eq %struct.TYPE_13__* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %5
  %22 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %24, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %25, i64 %28
  %30 = icmp eq %struct.TYPE_11__** %22, %29
  br label %31

31:                                               ; preds = %21, %5
  %32 = phi i1 [ true, %5 ], [ %30, %21 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %36 = icmp eq %struct.TYPE_13__* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %38, %41
  br label %43

43:                                               ; preds = %37, %31
  %44 = phi i1 [ true, %31 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %48 = icmp eq %struct.TYPE_13__* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ugt i64 %52, 0
  br label %54

54:                                               ; preds = %49, %43
  %55 = phi i1 [ true, %43 ], [ %53, %49 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = call i32 @btreePagecount(%struct.TYPE_12__* %59)
  %61 = icmp sgt i32 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %63, i32* %12, align 4
  br label %142

64:                                               ; preds = %54
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @sqlite3PagerGet(i32 %67, i32 %68, i32** %13, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %142

74:                                               ; preds = %64
  %75 = load i32*, i32** %13, align 8
  %76 = call i64 @sqlite3PagerGetExtra(i32* %75)
  %77 = inttoptr i64 %76 to %struct.TYPE_11__*
  %78 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* %77, %struct.TYPE_11__** %78, align 8
  %79 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %74
  %85 = load i32*, i32** %13, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %88 = call i32 @btreePageFromDbPage(i32* %85, i32 %86, %struct.TYPE_12__* %87)
  %89 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = call i32 @btreeInitPage(%struct.TYPE_11__* %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @SQLITE_OK, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %84
  %96 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = call i32 @releasePage(%struct.TYPE_11__* %97)
  br label %142

99:                                               ; preds = %84
  br label %100

100:                                              ; preds = %99, %74
  %101 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i32*, i32** %13, align 8
  %114 = call i64 @sqlite3PagerGetData(i32* %113)
  %115 = icmp eq i64 %112, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %119 = icmp ne %struct.TYPE_13__* %118, null
  br i1 %119, label %120, label %140

120:                                              ; preds = %100
  %121 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %124, 1
  br i1 %125, label %135, label %126

126:                                              ; preds = %120
  %127 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %130, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %126, %120
  %136 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %136, i32* %12, align 4
  %137 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = call i32 @releasePage(%struct.TYPE_11__* %138)
  br label %142

140:                                              ; preds = %126, %100
  %141 = load i32, i32* @SQLITE_OK, align 4
  store i32 %141, i32* %6, align 4
  br label %166

142:                                              ; preds = %135, %95, %73, %62
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %144 = icmp ne %struct.TYPE_13__* %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, -1
  store i64 %149, i64* %147, align 8
  br label %150

150:                                              ; preds = %145, %142
  %151 = load i32, i32* %8, align 4
  %152 = icmp eq i32 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @testcase(i32 %153)
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %150
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* @SQLITE_CORRUPT, align 4
  %160 = icmp eq i32 %158, %159
  br label %161

161:                                              ; preds = %157, %150
  %162 = phi i1 [ true, %150 ], [ %160, %157 ]
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  %165 = load i32, i32* %12, align 4
  store i32 %165, i32* %6, align 4
  br label %166

166:                                              ; preds = %161, %140
  %167 = load i32, i32* %6, align 4
  ret i32 %167
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @btreePagecount(%struct.TYPE_12__*) #1

declare dso_local i32 @sqlite3PagerGet(i32, i32, i32**, i32) #1

declare dso_local i64 @sqlite3PagerGetExtra(i32*) #1

declare dso_local i32 @btreePageFromDbPage(i32*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @btreeInitPage(%struct.TYPE_11__*) #1

declare dso_local i32 @releasePage(%struct.TYPE_11__*) #1

declare dso_local i64 @sqlite3PagerGetData(i32*) #1

declare dso_local i32 @testcase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
