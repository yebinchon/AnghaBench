; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_whereLoopInsert.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_whereLoopInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_29__*, %struct.TYPE_27__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_24__, %struct.TYPE_26__*, i32, i32, i32, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@WHERE_VIRTUALTABLE = common dso_local global i32 0, align 4
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
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  store %struct.TYPE_27__* %16, %struct.TYPE_27__** %8, align 8
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %25 = icmp ne %struct.TYPE_29__* %24, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %2
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %33, align 8
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @whereOrInsert(%struct.TYPE_29__* %34, i32 %37, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %31, %26
  %46 = load i32, i32* @SQLITE_OK, align 4
  store i32 %46, i32* %3, align 4
  br label %141

47:                                               ; preds = %2
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %49, align 8
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %52 = call i32 @whereLoopAdjustCost(%struct.TYPE_26__* %50, %struct.TYPE_26__* %51)
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %56 = call %struct.TYPE_26__** @whereLoopFindLesser(%struct.TYPE_26__** %54, %struct.TYPE_26__* %55)
  store %struct.TYPE_26__** %56, %struct.TYPE_26__*** %6, align 8
  %57 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %6, align 8
  %58 = icmp eq %struct.TYPE_26__** %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* @SQLITE_OK, align 4
  store i32 %60, i32* %3, align 4
  br label %141

61:                                               ; preds = %47
  %62 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %6, align 8
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %62, align 8
  store %struct.TYPE_26__* %63, %struct.TYPE_26__** %7, align 8
  br label %64

64:                                               ; preds = %61
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %66 = icmp eq %struct.TYPE_26__* %65, null
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load i32*, i32** %9, align 8
  %69 = call %struct.TYPE_26__* @sqlite3DbMallocRawNN(i32* %68, i32 48)
  store %struct.TYPE_26__* %69, %struct.TYPE_26__** %7, align 8
  %70 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %6, align 8
  store %struct.TYPE_26__* %69, %struct.TYPE_26__** %70, align 8
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %72 = icmp eq %struct.TYPE_26__* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %74, i32* %3, align 4
  br label %141

75:                                               ; preds = %67
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %77 = call i32 @whereLoopInit(%struct.TYPE_26__* %76)
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 2
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %79, align 8
  br label %109

80:                                               ; preds = %64
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 2
  store %struct.TYPE_26__** %82, %struct.TYPE_26__*** %11, align 8
  br label %83

83:                                               ; preds = %100, %80
  %84 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %11, align 8
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %84, align 8
  %86 = icmp ne %struct.TYPE_26__* %85, null
  br i1 %86, label %87, label %108

87:                                               ; preds = %83
  %88 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %11, align 8
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %90 = call %struct.TYPE_26__** @whereLoopFindLesser(%struct.TYPE_26__** %88, %struct.TYPE_26__* %89)
  store %struct.TYPE_26__** %90, %struct.TYPE_26__*** %11, align 8
  %91 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %11, align 8
  %92 = icmp eq %struct.TYPE_26__** %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %108

94:                                               ; preds = %87
  %95 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %11, align 8
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %95, align 8
  store %struct.TYPE_26__* %96, %struct.TYPE_26__** %12, align 8
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %98 = icmp eq %struct.TYPE_26__* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %108

100:                                              ; preds = %94
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %102, align 8
  %104 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %11, align 8
  store %struct.TYPE_26__* %103, %struct.TYPE_26__** %104, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %107 = call i32 @whereLoopDelete(i32* %105, %struct.TYPE_26__* %106)
  br label %83

108:                                              ; preds = %99, %93, %83
  br label %109

109:                                              ; preds = %108, %75
  %110 = load i32*, i32** %9, align 8
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %113 = call i32 @whereLoopXfer(i32* %110, %struct.TYPE_26__* %111, %struct.TYPE_26__* %112)
  store i32 %113, i32* %10, align 4
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @WHERE_VIRTUALTABLE, align 4
  %118 = and i32 %116, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %139

120:                                              ; preds = %109
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %124, align 8
  store %struct.TYPE_28__* %125, %struct.TYPE_28__** %13, align 8
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %127 = icmp ne %struct.TYPE_28__* %126, null
  br i1 %127, label %128, label %138

128:                                              ; preds = %120
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %137, align 8
  br label %138

138:                                              ; preds = %133, %128, %120
  br label %139

139:                                              ; preds = %138, %109
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %139, %73, %59, %45
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

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
