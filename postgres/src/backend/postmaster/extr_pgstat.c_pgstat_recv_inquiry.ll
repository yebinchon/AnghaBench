; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_recv_inquiry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_pgstat.c_pgstat_recv_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"received inquiry for database %u\00", align 1
@pending_write_requests = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"stats_timestamp %s is later than collector's time %s for database %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @pgstat_recv_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgstat_recv_inquiry(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @DEBUG2, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 (i32, i8*, i8*, ...) @elog(i32 %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* @pending_write_requests, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @list_member_oid(i32 %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %85

23:                                               ; preds = %2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.TYPE_5__* @pgstat_get_db_entry(i32 %26, i32 0)
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %5, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = icmp eq %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %79

31:                                               ; preds = %23
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %31
  %40 = call i64 (...) @GetCurrentTimestamp()
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %39
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @timestamptz_to_str(i64 %49)
  %51 = call i8* @pstrdup(i32 %50)
  store i8* %51, i8** %7, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @timestamptz_to_str(i64 %52)
  %54 = call i8* @pstrdup(i32 %53)
  store i8* %54, i8** %8, align 8
  %55 = load i32, i32* @LOG, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i32, i8*, i8*, ...) @elog(i32 %55, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i8* %56, i8* %57, i32 %60)
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @pfree(i8* %62)
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @pfree(i8* %64)
  br label %67

66:                                               ; preds = %39
  br label %85

67:                                               ; preds = %46
  br label %78

68:                                               ; preds = %31
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sle i64 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %85

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %67
  br label %79

79:                                               ; preds = %78, %30
  %80 = load i32, i32* @pending_write_requests, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @lappend_oid(i32 %80, i32 %83)
  store i32 %84, i32* @pending_write_requests, align 4
  br label %85

85:                                               ; preds = %79, %76, %66, %22
  ret void
}

declare dso_local i32 @elog(i32, i8*, i8*, ...) #1

declare dso_local i64 @list_member_oid(i32, i32) #1

declare dso_local %struct.TYPE_5__* @pgstat_get_db_entry(i32, i32) #1

declare dso_local i64 @GetCurrentTimestamp(...) #1

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32 @timestamptz_to_str(i64) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @lappend_oid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
