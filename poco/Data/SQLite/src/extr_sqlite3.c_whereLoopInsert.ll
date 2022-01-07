; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_whereLoopInsert.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_whereLoopInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32, %struct.TYPE_29__*, %struct.TYPE_27__* }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_27__ = type { %struct.TYPE_26__*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_24__, %struct.TYPE_26__*, i32, i32, i32, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64 }

@.str = private unnamed_addr constant [44 x i8] c"=== query planner search limit reached ===\0A\00", align 1
@SQLITE_DONE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@WHERE_VIRTUALTABLE = common dso_local global i32 0, align 4
@SQLITE_IDXTYPE_IPK = common dso_local global i64 0, align 8
@sqlite3WhereTrace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_26__*)* @whereLoopInsert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whereLoopInsert(%struct.TYPE_25__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_26__**, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_26__**, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  store %struct.TYPE_27__* %16, %struct.TYPE_27__** %8, align 8
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %2
  %27 = call i32 @WHERETRACE(i32 -1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %31 = icmp ne %struct.TYPE_29__* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %32, %26
  %38 = load i32, i32* @SQLITE_DONE, align 4
  store i32 %38, i32* %3, align 4
  br label %164

39:                                               ; preds = %2
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %45, align 8
  %47 = icmp ne %struct.TYPE_29__* %46, null
  br i1 %47, label %48, label %69

48:                                               ; preds = %39
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %55, align 8
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @whereOrInsert(%struct.TYPE_29__* %56, i32 %59, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %53, %48
  %68 = load i32, i32* @SQLITE_OK, align 4
  store i32 %68, i32* %3, align 4
  br label %164

69:                                               ; preds = %39
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %71, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %74 = call i32 @whereLoopAdjustCost(%struct.TYPE_26__* %72, %struct.TYPE_26__* %73)
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %78 = call %struct.TYPE_26__** @whereLoopFindLesser(%struct.TYPE_26__** %76, %struct.TYPE_26__* %77)
  store %struct.TYPE_26__** %78, %struct.TYPE_26__*** %6, align 8
  %79 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %6, align 8
  %80 = icmp eq %struct.TYPE_26__** %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load i32, i32* @SQLITE_OK, align 4
  store i32 %82, i32* %3, align 4
  br label %164

83:                                               ; preds = %69
  %84 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %6, align 8
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %84, align 8
  store %struct.TYPE_26__* %85, %struct.TYPE_26__** %7, align 8
  br label %86

86:                                               ; preds = %83
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %88 = icmp eq %struct.TYPE_26__* %87, null
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load i32*, i32** %9, align 8
  %91 = call %struct.TYPE_26__* @sqlite3DbMallocRawNN(i32* %90, i32 48)
  store %struct.TYPE_26__* %91, %struct.TYPE_26__** %7, align 8
  %92 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %6, align 8
  store %struct.TYPE_26__* %91, %struct.TYPE_26__** %92, align 8
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %94 = icmp eq %struct.TYPE_26__* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %96, i32* %3, align 4
  br label %164

97:                                               ; preds = %89
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %99 = call i32 @whereLoopInit(%struct.TYPE_26__* %98)
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 2
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %101, align 8
  br label %131

102:                                              ; preds = %86
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 2
  store %struct.TYPE_26__** %104, %struct.TYPE_26__*** %11, align 8
  br label %105

105:                                              ; preds = %122, %102
  %106 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %11, align 8
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %106, align 8
  %108 = icmp ne %struct.TYPE_26__* %107, null
  br i1 %108, label %109, label %130

109:                                              ; preds = %105
  %110 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %11, align 8
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %112 = call %struct.TYPE_26__** @whereLoopFindLesser(%struct.TYPE_26__** %110, %struct.TYPE_26__* %111)
  store %struct.TYPE_26__** %112, %struct.TYPE_26__*** %11, align 8
  %113 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %11, align 8
  %114 = icmp eq %struct.TYPE_26__** %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %130

116:                                              ; preds = %109
  %117 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %11, align 8
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %117, align 8
  store %struct.TYPE_26__* %118, %struct.TYPE_26__** %12, align 8
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %120 = icmp eq %struct.TYPE_26__* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %130

122:                                              ; preds = %116
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %124, align 8
  %126 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %11, align 8
  store %struct.TYPE_26__* %125, %struct.TYPE_26__** %126, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %129 = call i32 @whereLoopDelete(i32* %127, %struct.TYPE_26__* %128)
  br label %105

130:                                              ; preds = %121, %115, %105
  br label %131

131:                                              ; preds = %130, %97
  %132 = load i32*, i32** %9, align 8
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %135 = call i32 @whereLoopXfer(i32* %132, %struct.TYPE_26__* %133, %struct.TYPE_26__* %134)
  store i32 %135, i32* %10, align 4
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @WHERE_VIRTUALTABLE, align 4
  %140 = and i32 %138, %139
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %162

142:                                              ; preds = %131
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %146, align 8
  store %struct.TYPE_28__* %147, %struct.TYPE_28__** %13, align 8
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %149 = icmp ne %struct.TYPE_28__* %148, null
  br i1 %149, label %150, label %161

150:                                              ; preds = %142
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @SQLITE_IDXTYPE_IPK, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %150
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 0
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %160, align 8
  br label %161

161:                                              ; preds = %156, %150, %142
  br label %162

162:                                              ; preds = %161, %131
  %163 = load i32, i32* %10, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %162, %95, %81, %67, %37
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @WHERETRACE(i32, i8*) #1

declare dso_local i32 @whereOrInsert(%struct.TYPE_29__*, i32, i32, i32) #1

declare dso_local i32 @whereLoopAdjustCost(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__** @whereLoopFindLesser(%struct.TYPE_26__**, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @sqlite3DbMallocRawNN(i32*, i32) #1

declare dso_local i32 @whereLoopInit(%struct.TYPE_26__*) #1

declare dso_local i32 @whereLoopDelete(i32*, %struct.TYPE_26__*) #1

declare dso_local i32 @whereLoopXfer(i32*, %struct.TYPE_26__*, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
