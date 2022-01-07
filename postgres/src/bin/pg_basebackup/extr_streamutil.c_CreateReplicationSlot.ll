; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_streamutil.c_CreateReplicationSlot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_streamutil.c_CreateReplicationSlot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"CREATE_REPLICATION_SLOT \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" TEMPORARY\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" PHYSICAL\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" RESERVE_WAL\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" LOGICAL \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c" NOEXPORT_SNAPSHOT\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@PG_DIAG_SQLSTATE = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"could not send replication command \22%s\22: %s\00", align 1
@.str.7 = private unnamed_addr constant [98 x i8] c"could not create replication slot \22%s\22: got %d rows and %d fields, expected %d rows and %d fields\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CreateReplicationSlot(i32* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = call %struct.TYPE_6__* (...) @createPQExpBuffer()
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %16, align 8
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  %23 = load i8*, i8** %11, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %22, %7
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i1 [ false, %25 ], [ %30, %28 ]
  br label %33

33:                                               ; preds = %31, %22
  %34 = phi i1 [ true, %22 ], [ %32, %31 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @Assert(i32 %35)
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @Assert(i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @appendPQExpBuffer(%struct.TYPE_6__* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %48 = call i32 @appendPQExpBufferStr(%struct.TYPE_6__* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %33
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %54 = call i32 @appendPQExpBufferStr(%struct.TYPE_6__* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %59 = call i32 @appendPQExpBufferStr(%struct.TYPE_6__* %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %52
  br label %72

61:                                               ; preds = %49
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @appendPQExpBuffer(%struct.TYPE_6__* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @PQserverVersion(i32* %65)
  %67 = icmp sge i32 %66, 100000
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %70 = call i32 @appendPQExpBufferStr(%struct.TYPE_6__* %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %61
  br label %72

72:                                               ; preds = %71, %60
  %73 = load i32*, i32** %9, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32* @PQexec(i32* %73, i32 %76)
  store i32* %77, i32** %17, align 8
  %78 = load i32*, i32** %17, align 8
  %79 = call i64 @PQresultStatus(i32* %78)
  %80 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %114

82:                                               ; preds = %72
  %83 = load i32*, i32** %17, align 8
  %84 = load i32, i32* @PG_DIAG_SQLSTATE, align 4
  %85 = call i8* @PQresultErrorField(i32* %83, i32 %84)
  store i8* %85, i8** %18, align 8
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %82
  %89 = load i8*, i8** %18, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i8*, i8** %18, align 8
  %93 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %94 = call i64 @strcmp(i8* %92, i32 %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %98 = call i32 @destroyPQExpBuffer(%struct.TYPE_6__* %97)
  %99 = load i32*, i32** %17, align 8
  %100 = call i32 @PQclear(i32* %99)
  store i32 1, i32* %8, align 4
  br label %138

101:                                              ; preds = %91, %88, %82
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to i8*
  %107 = load i32*, i32** %9, align 8
  %108 = call i32 @PQerrorMessage(i32* %107)
  %109 = call i32 (i8*, i8*, i32, ...) @pg_log_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* %106, i32 %108)
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %111 = call i32 @destroyPQExpBuffer(%struct.TYPE_6__* %110)
  %112 = load i32*, i32** %17, align 8
  %113 = call i32 @PQclear(i32* %112)
  store i32 0, i32* %8, align 4
  br label %138

114:                                              ; preds = %72
  %115 = load i32*, i32** %17, align 8
  %116 = call i32 @PQntuples(i32* %115)
  %117 = icmp ne i32 %116, 1
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load i32*, i32** %17, align 8
  %120 = call i32 @PQnfields(i32* %119)
  %121 = icmp ne i32 %120, 4
  br i1 %121, label %122, label %133

122:                                              ; preds = %118, %114
  %123 = load i8*, i8** %10, align 8
  %124 = load i32*, i32** %17, align 8
  %125 = call i32 @PQntuples(i32* %124)
  %126 = load i32*, i32** %17, align 8
  %127 = call i32 @PQnfields(i32* %126)
  %128 = call i32 (i8*, i8*, i32, ...) @pg_log_error(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.7, i64 0, i64 0), i8* %123, i32 %125, i32 %127, i32 1, i32 4)
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %130 = call i32 @destroyPQExpBuffer(%struct.TYPE_6__* %129)
  %131 = load i32*, i32** %17, align 8
  %132 = call i32 @PQclear(i32* %131)
  store i32 0, i32* %8, align 4
  br label %138

133:                                              ; preds = %118
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %135 = call i32 @destroyPQExpBuffer(%struct.TYPE_6__* %134)
  %136 = load i32*, i32** %17, align 8
  %137 = call i32 @PQclear(i32* %136)
  store i32 1, i32* %8, align 4
  br label %138

138:                                              ; preds = %133, %122, %101, %96
  %139 = load i32, i32* %8, align 4
  ret i32 %139
}

declare dso_local %struct.TYPE_6__* @createPQExpBuffer(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @PQserverVersion(i32*) #1

declare dso_local i32* @PQexec(i32*, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i8* @PQresultErrorField(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_6__*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @pg_log_error(i8*, i8*, i32, ...) #1

declare dso_local i32 @PQerrorMessage(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQnfields(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
