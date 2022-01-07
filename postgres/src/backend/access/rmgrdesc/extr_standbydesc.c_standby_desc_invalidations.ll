; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_standbydesc.c_standby_desc_invalidations.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_standbydesc.c_standby_desc_invalidations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"; relcache init file inval dbid %u tsid %u\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"; inval msgs:\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" catcache %d\00", align 1
@SHAREDINVALCATALOG_ID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c" catalog %u\00", align 1
@SHAREDINVALRELCACHE_ID = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c" relcache %u\00", align 1
@SHAREDINVALSMGR_ID = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c" smgr\00", align 1
@SHAREDINVALRELMAP_ID = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c" relmap db %u\00", align 1
@SHAREDINVALSNAPSHOT_ID = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c" snapshot %u\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c" unrecognized id %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @standby_desc_invalidations(i32 %0, i32 %1, %struct.TYPE_11__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  br label %125

18:                                               ; preds = %6
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = load i32, i32* %11, align 4
  %26 = call i32 (i32, i8*, i64, ...) @appendStringInfo(i32 %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %25)
  br label %27

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @appendStringInfoString(i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %122, %27
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %125

34:                                               ; preds = %30
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i64 %37
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %14, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i32, i8*, i64, ...) @appendStringInfo(i32 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  br label %121

49:                                               ; preds = %34
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SHAREDINVALCATALOG_ID, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i32, i8*, i64, ...) @appendStringInfo(i32 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %60)
  br label %120

62:                                               ; preds = %49
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SHAREDINVALRELCACHE_ID, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (i32, i8*, i64, ...) @appendStringInfo(i32 %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i64 %73)
  br label %119

75:                                               ; preds = %62
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SHAREDINVALSMGR_ID, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @appendStringInfoString(i32 %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %118

84:                                               ; preds = %75
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SHAREDINVALRELMAP_ID, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %84
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (i32, i8*, i64, ...) @appendStringInfo(i32 %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i64 %95)
  br label %117

97:                                               ; preds = %84
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @SHAREDINVALSNAPSHOT_ID, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (i32, i8*, i64, ...) @appendStringInfo(i32 %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i64 %108)
  br label %116

110:                                              ; preds = %97
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 (i32, i8*, i64, ...) @appendStringInfo(i32 %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i64 %114)
  br label %116

116:                                              ; preds = %110, %103
  br label %117

117:                                              ; preds = %116, %90
  br label %118

118:                                              ; preds = %117, %81
  br label %119

119:                                              ; preds = %118, %68
  br label %120

120:                                              ; preds = %119, %55
  br label %121

121:                                              ; preds = %120, %43
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %13, align 4
  br label %30

125:                                              ; preds = %17, %30
  ret void
}

declare dso_local i32 @appendStringInfo(i32, i8*, i64, ...) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
