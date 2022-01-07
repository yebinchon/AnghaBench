; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_report_stat.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_report_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, i64, i32* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@pgstat_report_stat.all_zeroes = internal constant i32 0, align 4
@pgstat_report_stat.last_report = internal global i32 0, align 4
@pgStatTabList = common dso_local global %struct.TYPE_8__* null, align 8
@pgStatXactCommit = common dso_local global i64 0, align 8
@pgStatXactRollback = common dso_local global i64 0, align 8
@have_function_stats = common dso_local global i32 0, align 4
@PGSTAT_STAT_INTERVAL = common dso_local global i32 0, align 4
@pgStatTabHash = common dso_local global i32* null, align 8
@MyDatabaseId = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@PGSTAT_NUM_TABENTRIES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgstat_report_stat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %2, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pgStatTabList, align 8
  %12 = icmp eq %struct.TYPE_8__* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pgStatTabList, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13, %1
  %19 = load i64, i64* @pgStatXactCommit, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i64, i64* @pgStatXactRollback, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @have_function_stats, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %160

28:                                               ; preds = %24, %21, %18, %13
  %29 = call i32 (...) @GetCurrentTransactionStopTimestamp()
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @pgstat_report_stat.last_report, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @PGSTAT_STAT_INTERVAL, align 4
  %36 = call i32 @TimestampDifferenceExceeds(i32 %33, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %160

39:                                               ; preds = %32, %28
  %40 = load i32, i32* %3, align 4
  store i32 %40, i32* @pgstat_report_stat.last_report, align 4
  %41 = load i32*, i32** @pgStatTabHash, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32*, i32** @pgStatTabHash, align 8
  %45 = call i32 @hash_destroy(i32* %44)
  br label %46

46:                                               ; preds = %43, %39
  store i32* null, i32** @pgStatTabHash, align 8
  %47 = load i32, i32* @MyDatabaseId, align 4
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* @InvalidOid, align 4
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pgStatTabList, align 8
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %6, align 8
  br label %54

54:                                               ; preds = %136, %46
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = icmp ne %struct.TYPE_8__* %55, null
  br i1 %56, label %57, label %140

57:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %121, %57
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %124

65:                                               ; preds = %58
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 %70
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** %8, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i32 @Assert(i32 %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = call i64 @memcmp(i32* %79, i32* @pgstat_report_stat.all_zeroes, i32 4)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %65
  br label %121

83:                                               ; preds = %65
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %90

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %88
  %91 = phi %struct.TYPE_11__* [ %5, %88 ], [ %4, %89 ]
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %9, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i64 %97
  store %struct.TYPE_10__* %98, %struct.TYPE_10__** %10, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = call i32 @memcpy(i32* %105, i32* %107, i32 4)
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %110, align 8
  %113 = load i64, i64* @PGSTAT_NUM_TABENTRIES, align 8
  %114 = icmp uge i64 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %90
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %117 = call i32 @pgstat_send_tabstat(%struct.TYPE_11__* %116)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  store i64 0, i64* %119, align 8
  br label %120

120:                                              ; preds = %115, %90
  br label %121

121:                                              ; preds = %120, %82
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %58

124:                                              ; preds = %58
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = mul i64 %130, 24
  %132 = trunc i64 %131 to i32
  %133 = call i32 @MemSet(%struct.TYPE_9__* %127, i32 0, i32 %132)
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  store i64 0, i64* %135, align 8
  br label %136

136:                                              ; preds = %124
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  store %struct.TYPE_8__* %139, %struct.TYPE_8__** %6, align 8
  br label %54

140:                                              ; preds = %54
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ugt i64 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %140
  %145 = load i64, i64* @pgStatXactCommit, align 8
  %146 = icmp sgt i64 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load i64, i64* @pgStatXactRollback, align 8
  %149 = icmp sgt i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147, %144, %140
  %151 = call i32 @pgstat_send_tabstat(%struct.TYPE_11__* %4)
  br label %152

152:                                              ; preds = %150, %147
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ugt i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = call i32 @pgstat_send_tabstat(%struct.TYPE_11__* %5)
  br label %158

158:                                              ; preds = %156, %152
  %159 = call i32 (...) @pgstat_send_funcstats()
  br label %160

160:                                              ; preds = %158, %38, %27
  ret void
}

declare dso_local i32 @GetCurrentTransactionStopTimestamp(...) #1

declare dso_local i32 @TimestampDifferenceExceeds(i32, i32, i32) #1

declare dso_local i32 @hash_destroy(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @pgstat_send_tabstat(%struct.TYPE_11__*) #1

declare dso_local i32 @MemSet(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @pgstat_send_funcstats(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
