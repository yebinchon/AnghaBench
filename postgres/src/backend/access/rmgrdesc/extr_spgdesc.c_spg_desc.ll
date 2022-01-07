; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_spgdesc.c_spg_desc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_spgdesc.c_spg_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@XLR_INFO_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"add leaf to page\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"; off %u; headoff %u; parentoff %u\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" (newpage)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" (nulls)\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%u leafs\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"off %u\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"prefix off: %u, postfix off: %u (same %d, new %d)\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"ndel %u; nins %u\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c" (innerIsParent)\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c" (isRootSplit)\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"newest XID %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spg_desc(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i8* @XLogRecGetData(i32* %9)
  store i8* %10, i8** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @XLogRecGetInfo(i32* %11)
  %13 = load i32, i32* @XLR_INFO_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %118 [
    i32 135, label %17
    i32 133, label %49
    i32 134, label %56
    i32 131, label %63
    i32 132, label %82
    i32 130, label %109
    i32 128, label %110
    i32 129, label %111
  ]

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %7, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @appendStringInfoString(i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %28, i32 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %17
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @appendStringInfoString(i32 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %17
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @appendStringInfoString(i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %40
  br label %118

49:                                               ; preds = %2
  %50 = load i32, i32* %3, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = bitcast i8* %51 to %struct.TYPE_10__*
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  br label %118

56:                                               ; preds = %2
  %57 = load i32, i32* %3, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = bitcast i8* %58 to %struct.TYPE_11__*
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  br label %118

63:                                               ; preds = %2
  %64 = load i32, i32* %3, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = bitcast i8* %65 to %struct.TYPE_8__*
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %5, align 8
  %70 = bitcast i8* %69 to %struct.TYPE_8__*
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = bitcast i8* %73 to %struct.TYPE_8__*
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %5, align 8
  %78 = bitcast i8* %77 to %struct.TYPE_8__*
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %64, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %68, i32 %72, i32 %76, i32 %80)
  br label %118

82:                                               ; preds = %2
  %83 = load i8*, i8** %5, align 8
  %84 = bitcast i8* %83 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %84, %struct.TYPE_9__** %8, align 8
  %85 = load i32, i32* %3, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %88, i32 %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %82
  %98 = load i32, i32* %3, align 4
  %99 = call i32 @appendStringInfoString(i32 %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %82
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @appendStringInfoString(i32 %106, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %100
  br label %118

109:                                              ; preds = %2
  br label %118

110:                                              ; preds = %2
  br label %118

111:                                              ; preds = %2
  %112 = load i32, i32* %3, align 4
  %113 = load i8*, i8** %5, align 8
  %114 = bitcast i8* %113 to %struct.TYPE_7__*
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %2, %111, %110, %109, %108, %63, %56, %49, %48
  ret void
}

declare dso_local i8* @XLogRecGetData(i32*) #1

declare dso_local i32 @XLogRecGetInfo(i32*) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
