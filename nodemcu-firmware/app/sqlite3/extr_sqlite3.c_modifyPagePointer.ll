; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_modifyPagePointer.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_modifyPagePointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64*, i32, i32, %struct.TYPE_9__*, i32 (%struct.TYPE_10__*, i64*, %struct.TYPE_11__*)*, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i32 }

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
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sqlite3_mutex_held(i32 %19)
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
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
  br label %171

39:                                               ; preds = %30
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @put4byte(i64* %42, i64 %43)
  br label %169

45:                                               ; preds = %4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = call i32 @btreeInitPage(%struct.TYPE_10__* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %5, align 4
  br label %171

52:                                               ; preds = %45
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %130, %52
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %133

60:                                               ; preds = %56
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i64* @findCell(%struct.TYPE_10__* %61, i32 %62)
  store i64* %63, i64** %13, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @PTRMAP_OVERFLOW1, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %119

67:                                               ; preds = %60
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 4
  %70 = load i32 (%struct.TYPE_10__*, i64*, %struct.TYPE_11__*)*, i32 (%struct.TYPE_10__*, i64*, %struct.TYPE_11__*)** %69, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %72 = load i64*, i64** %13, align 8
  %73 = call i32 %70(%struct.TYPE_10__* %71, i64* %72, %struct.TYPE_11__* %14)
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %75, %77
  br i1 %78, label %79, label %118

79:                                               ; preds = %67
  %80 = load i64*, i64** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %87, i64 %93
  %95 = icmp ugt i64* %84, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %79
  %97 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %97, i32* %5, align 4
  br label %171

98:                                               ; preds = %79
  %99 = load i64, i64* %7, align 8
  %100 = load i64*, i64** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %100, i64 %103
  %105 = getelementptr inbounds i64, i64* %104, i64 -4
  %106 = call i64 @get4byte(i64* %105)
  %107 = icmp eq i64 %99, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %98
  %109 = load i64*, i64** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %109, i64 %112
  %114 = getelementptr inbounds i64, i64* %113, i64 -4
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @put4byte(i64* %114, i64 %115)
  br label %133

117:                                              ; preds = %98
  br label %118

118:                                              ; preds = %117, %67
  br label %129

119:                                              ; preds = %60
  %120 = load i64*, i64** %13, align 8
  %121 = call i64 @get4byte(i64* %120)
  %122 = load i64, i64* %7, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i64*, i64** %13, align 8
  %126 = load i64, i64* %8, align 8
  %127 = call i32 @put4byte(i64* %125, i64 %126)
  br label %133

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128, %118
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %56

133:                                              ; preds = %124, %108, %56
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %168

137:                                              ; preds = %133
  %138 = load i64, i64* %9, align 8
  %139 = load i64, i64* @PTRMAP_BTREE, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %154, label %141

141:                                              ; preds = %137
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 8
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %144, i64 %149
  %151 = call i64 @get4byte(i64* %150)
  %152 = load i64, i64* %7, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %141, %137
  %155 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %155, i32* %5, align 4
  br label %171

156:                                              ; preds = %141
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i64*, i64** %158, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 8
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %159, i64 %164
  %166 = load i64, i64* %8, align 8
  %167 = call i32 @put4byte(i64* %165, i64 %166)
  br label %168

168:                                              ; preds = %156, %133
  br label %169

169:                                              ; preds = %168, %39
  %170 = load i32, i32* @SQLITE_OK, align 4
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %169, %154, %96, %50, %37
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @sqlite3PagerIswriteable(i32) #1

declare dso_local i64 @get4byte(i64*) #1

declare dso_local i32 @put4byte(i64*, i64) #1

declare dso_local i32 @btreeInitPage(%struct.TYPE_10__*) #1

declare dso_local i64* @findCell(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
