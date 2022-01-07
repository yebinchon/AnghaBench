; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/scripts/extr_reindexdb.c_run_reindex_command.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/scripts/extr_reindexdb.c_run_reindex_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"REINDEX \00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"(VERBOSE) \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"DATABASE \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"INDEX \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"SCHEMA \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"SYSTEM \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"TABLE \00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"CONCURRENTLY \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"reindexing of database \22%s\22 failed: %s\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"reindexing of index \22%s\22 in database \22%s\22 failed: %s\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"reindexing of schema \22%s\22 in database \22%s\22 failed: %s\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"reindexing of system catalogs on database \22%s\22 failed: %s\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"reindexing of table \22%s\22 in database \22%s\22 failed: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i32, i32, i32, i32)* @run_reindex_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_reindex_command(i32* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @Assert(i8* %17)
  %19 = call i32 @initPQExpBuffer(%struct.TYPE_7__* %15)
  %20 = call i32 @appendPQExpBufferStr(%struct.TYPE_7__* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %7
  %24 = call i32 @appendPQExpBufferStr(%struct.TYPE_7__* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %7
  %26 = load i32, i32* %9, align 4
  switch i32 %26, label %37 [
    i32 132, label %27
    i32 131, label %29
    i32 130, label %31
    i32 129, label %33
    i32 128, label %35
  ]

27:                                               ; preds = %25
  %28 = call i32 @appendPQExpBufferStr(%struct.TYPE_7__* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %37

29:                                               ; preds = %25
  %30 = call i32 @appendPQExpBufferStr(%struct.TYPE_7__* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %37

31:                                               ; preds = %25
  %32 = call i32 @appendPQExpBufferStr(%struct.TYPE_7__* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %37

33:                                               ; preds = %25
  %34 = call i32 @appendPQExpBufferStr(%struct.TYPE_7__* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %37

35:                                               ; preds = %25
  %36 = call i32 @appendPQExpBufferStr(%struct.TYPE_7__* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %37

37:                                               ; preds = %25, %35, %33, %31, %29, %27
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @appendPQExpBufferStr(%struct.TYPE_7__* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i32, i32* %9, align 4
  switch i32 %43, label %56 [
    i32 132, label %44
    i32 129, label %44
    i32 131, label %48
    i32 128, label %48
    i32 130, label %53
  ]

44:                                               ; preds = %42, %42
  %45 = load i8*, i8** %10, align 8
  %46 = call i8* @fmtId(i8* %45)
  %47 = call i32 @appendPQExpBufferStr(%struct.TYPE_7__* %15, i8* %46)
  br label %56

48:                                               ; preds = %42, %42
  %49 = load i8*, i8** %10, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @appendQualifiedRelation(%struct.TYPE_7__* %15, i8* %49, i32* %50, i32 %51)
  br label %56

53:                                               ; preds = %42
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @appendPQExpBufferStr(%struct.TYPE_7__* %15, i8* %54)
  br label %56

56:                                               ; preds = %42, %53, %48, %44
  %57 = call i32 @appendPQExpBufferChar(%struct.TYPE_7__* %15, i8 signext 59)
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @PQsendQuery(i32* %68, i8* %70)
  %72 = icmp eq i32 %71, 1
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %16, align 4
  br label %80

74:                                               ; preds = %56
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @executeMaintenanceCommand(i32* %75, i8* %77, i32 %78)
  store i32 %79, i32* %16, align 4
  br label %80

80:                                               ; preds = %74, %67
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %130, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  switch i32 %84, label %122 [
    i32 132, label %85
    i32 131, label %93
    i32 130, label %100
    i32 129, label %107
    i32 128, label %115
  ]

85:                                               ; preds = %83
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @PQdb(i32* %86)
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = load i32*, i32** %8, align 8
  %91 = call i32 @PQerrorMessage(i32* %90)
  %92 = call i32 (i8*, i8*, i32, ...) @pg_log_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %89, i32 %91)
  br label %122

93:                                               ; preds = %83
  %94 = load i8*, i8** %10, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @PQdb(i32* %95)
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @PQerrorMessage(i32* %97)
  %99 = call i32 (i8*, i8*, i32, ...) @pg_log_error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i8* %94, i32 %96, i32 %98)
  br label %122

100:                                              ; preds = %83
  %101 = load i8*, i8** %10, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @PQdb(i32* %102)
  %104 = load i32*, i32** %8, align 8
  %105 = call i32 @PQerrorMessage(i32* %104)
  %106 = call i32 (i8*, i8*, i32, ...) @pg_log_error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i8* %101, i32 %103, i32 %105)
  br label %122

107:                                              ; preds = %83
  %108 = load i32*, i32** %8, align 8
  %109 = call i32 @PQdb(i32* %108)
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i8*
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @PQerrorMessage(i32* %112)
  %114 = call i32 (i8*, i8*, i32, ...) @pg_log_error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i64 0, i64 0), i8* %111, i32 %113)
  br label %122

115:                                              ; preds = %83
  %116 = load i8*, i8** %10, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = call i32 @PQdb(i32* %117)
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @PQerrorMessage(i32* %119)
  %121 = call i32 (i8*, i8*, i32, ...) @pg_log_error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i8* %116, i32 %118, i32 %120)
  br label %122

122:                                              ; preds = %83, %115, %107, %100, %93, %85
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  %126 = load i32*, i32** %8, align 8
  %127 = call i32 @PQfinish(i32* %126)
  %128 = call i32 @exit(i32 1) #3
  unreachable

129:                                              ; preds = %122
  br label %130

130:                                              ; preds = %129, %80
  %131 = call i32 @termPQExpBuffer(%struct.TYPE_7__* %15)
  ret void
}

declare dso_local i32 @Assert(i8*) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_7__*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_7__*, i8*) #1

declare dso_local i8* @fmtId(i8*) #1

declare dso_local i32 @appendQualifiedRelation(%struct.TYPE_7__*, i8*, i32*, i32) #1

declare dso_local i32 @appendPQExpBufferChar(%struct.TYPE_7__*, i8 signext) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @PQsendQuery(i32*, i8*) #1

declare dso_local i32 @executeMaintenanceCommand(i32*, i8*, i32) #1

declare dso_local i32 @pg_log_error(i8*, i8*, i32, ...) #1

declare dso_local i32 @PQdb(i32*) #1

declare dso_local i32 @PQerrorMessage(i32*) #1

declare dso_local i32 @PQfinish(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
