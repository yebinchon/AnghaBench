; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_report_activity.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_report_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8*, i8*, i8*, i64 }
%struct.TYPE_8__ = type { i64 }

@MyBEEntry = common dso_local global %struct.TYPE_7__* null, align 8
@pgstat_track_activities = common dso_local global i32 0, align 4
@STATE_DISABLED = common dso_local global i64 0, align 8
@MyProc = common dso_local global %struct.TYPE_8__* null, align 8
@pgstat_track_activity_query_size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pgstat_report_activity(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyBEEntry, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @TRACE_POSTGRESQL_STATEMENT_STATUS(i8* %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %88

16:                                               ; preds = %2
  %17 = load i32, i32* @pgstat_track_activities, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %47, label %19

19:                                               ; preds = %16
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load volatile i64, i64* %21, align 8
  %23 = load i64, i64* @STATE_DISABLED, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %19
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyProc, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %9, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = call i32 @PGSTAT_BEGIN_WRITE_ACTIVITY(%struct.TYPE_7__* %27)
  %29 = load i64, i64* @STATE_DISABLED, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store volatile i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  store volatile i8* null, i8** %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load volatile i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 0, i8* %37, align 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  store volatile i8* null, i8** %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  store volatile i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store volatile i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = call i32 @PGSTAT_END_WRITE_ACTIVITY(%struct.TYPE_7__* %44)
  br label %46

46:                                               ; preds = %25, %19
  br label %88

47:                                               ; preds = %16
  %48 = call i8* (...) @GetCurrentStatementStartTimestamp()
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = load i64, i64* @pgstat_track_activity_query_size, align 8
  %55 = sub nsw i64 %54, 1
  %56 = call i32 @Min(i32 %53, i64 %55)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %51, %47
  %58 = call i8* (...) @GetCurrentTimestamp()
  store i8* %58, i8** %7, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = call i32 @PGSTAT_BEGIN_WRITE_ACTIVITY(%struct.TYPE_7__* %59)
  %61 = load i64, i64* %3, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store volatile i64 %61, i64* %63, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  store volatile i8* %64, i8** %66, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %85

69:                                               ; preds = %57
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load volatile i8*, i8** %71, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @memcpy(i8* %72, i8* %73, i32 %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load volatile i8*, i8** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8 0, i8* %81, align 1
  %82 = load i8*, i8** %6, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  store volatile i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %69, %57
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = call i32 @PGSTAT_END_WRITE_ACTIVITY(%struct.TYPE_7__* %86)
  br label %88

88:                                               ; preds = %85, %46, %15
  ret void
}

declare dso_local i32 @TRACE_POSTGRESQL_STATEMENT_STATUS(i8*) #1

declare dso_local i32 @PGSTAT_BEGIN_WRITE_ACTIVITY(%struct.TYPE_7__*) #1

declare dso_local i32 @PGSTAT_END_WRITE_ACTIVITY(%struct.TYPE_7__*) #1

declare dso_local i8* @GetCurrentStatementStartTimestamp(...) #1

declare dso_local i32 @Min(i32, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @GetCurrentTimestamp(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
