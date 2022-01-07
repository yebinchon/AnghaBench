; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeWindowAgg.c_window_gettupleslot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeWindowAgg.c_window_gettupleslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"cannot fetch row before WindowObject's mark position\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"unexpected end of tuplestore\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32*)* @window_gettupleslot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @window_gettupleslot(%struct.TYPE_11__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %8, align 8
  %13 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %168

17:                                               ; preds = %3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @spool_tuples(%struct.TYPE_12__* %18, i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %168

27:                                               ; preds = %17
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @ERROR, align 4
  %35 = call i32 @elog(i32 %34, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %27
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @MemoryContextSwitchTo(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @tuplestore_select_read_pointer(i32 %47, i32 %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %55, 1
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %36
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %62, 1
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %63, %66
  %68 = call i32 @tuplestore_skiptuples(i32 %61, i32 %67, i32 1)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %58
  %71 = load i32, i32* @ERROR, align 4
  %72 = call i32 @elog(i32 %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %58
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %74, 1
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %122

78:                                               ; preds = %36
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  %84 = icmp sgt i32 %81, %83
  br i1 %84, label %85, label %105

85:                                               ; preds = %78
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  %94 = sub nsw i32 %91, %93
  %95 = call i32 @tuplestore_skiptuples(i32 %88, i32 %94, i32 0)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %85
  %98 = load i32, i32* @ERROR, align 4
  %99 = call i32 @elog(i32 %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %85
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %121

105:                                              ; preds = %78
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %105
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @tuplestore_advance(i32 %114, i32 1)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %111, %105
  br label %121

121:                                              ; preds = %120, %100
  br label %122

122:                                              ; preds = %121, %73
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %143

128:                                              ; preds = %122
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %7, align 8
  %133 = call i32 @tuplestore_gettupleslot(i32 %131, i32 0, i32 1, i32* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %128
  %136 = load i32, i32* @ERROR, align 4
  %137 = call i32 @elog(i32 %136, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %128
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %140, align 4
  br label %158

143:                                              ; preds = %122
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %7, align 8
  %148 = call i32 @tuplestore_gettupleslot(i32 %146, i32 1, i32 1, i32* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %143
  %151 = load i32, i32* @ERROR, align 4
  %152 = call i32 @elog(i32 %151, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %153

153:                                              ; preds = %150, %143
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %153, %138
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %6, align 4
  %163 = icmp eq i32 %161, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 @Assert(i32 %164)
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @MemoryContextSwitchTo(i32 %166)
  store i32 1, i32* %4, align 4
  br label %168

168:                                              ; preds = %158, %26, %16
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @spool_tuples(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @tuplestore_select_read_pointer(i32, i32) #1

declare dso_local i32 @tuplestore_skiptuples(i32, i32, i32) #1

declare dso_local i32 @tuplestore_advance(i32, i32) #1

declare dso_local i32 @tuplestore_gettupleslot(i32, i32, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
