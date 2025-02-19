; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_relation.c_check_lateral_ref_ok.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_relation.c_check_lateral_ref_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32, i64 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_COLUMN_REFERENCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"invalid reference to FROM-clause entry for table \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"There is an entry for table \22%s\22, but it cannot be referenced from this part of the query.\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"The combining JOIN type must be INNER or LEFT for a LATERAL reference.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*, i32)* @check_lateral_ref_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_lateral_ref_ok(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %3
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %48, label %18

18:                                               ; preds = %13
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %7, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %8, align 8
  %27 = load i32, i32* @ERROR, align 4
  %28 = load i32, i32* @ERRCODE_INVALID_COLUMN_REFERENCE, align 4
  %29 = call i32 @errcode(i32 %28)
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = icmp eq %struct.TYPE_9__* %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %18
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @errhint(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  br label %42

40:                                               ; preds = %18
  %41 = call i32 @errdetail(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi i32 [ %39, %37 ], [ %41, %40 ]
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @parser_errposition(%struct.TYPE_10__* %44, i32 %45)
  %47 = call i32 @ereport(i32 %27, i32 %46)
  br label %48

48:                                               ; preds = %42, %13, %3
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @errhint(i8*, i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i32 @parser_errposition(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
