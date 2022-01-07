; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_add_tablespace_footer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_add_tablespace_footer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@RELKIND_RELATION = common dso_local global i8 0, align 1
@RELKIND_MATVIEW = common dso_local global i8 0, align 1
@RELKIND_INDEX = common dso_local global i8 0, align 1
@RELKIND_PARTITIONED_TABLE = common dso_local global i8 0, align 1
@RELKIND_PARTITIONED_INDEX = common dso_local global i8 0, align 1
@RELKIND_TOASTVALUE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [63 x i8] c"SELECT spcname FROM pg_catalog.pg_tablespace\0AWHERE oid = '%u';\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Tablespace: \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c", tablespace \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i8, i64, i32)* @add_tablespace_footer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_tablespace_footer(%struct.TYPE_12__* %0, i8 signext %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8 %1, i8* %6, align 1
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8, i8* %6, align 1
  %12 = sext i8 %11 to i32
  %13 = load i8, i8* @RELKIND_RELATION, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %46, label %16

16:                                               ; preds = %4
  %17 = load i8, i8* %6, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8, i8* @RELKIND_MATVIEW, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %46, label %22

22:                                               ; preds = %16
  %23 = load i8, i8* %6, align 1
  %24 = sext i8 %23 to i32
  %25 = load i8, i8* @RELKIND_INDEX, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %46, label %28

28:                                               ; preds = %22
  %29 = load i8, i8* %6, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* @RELKIND_PARTITIONED_TABLE, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %46, label %34

34:                                               ; preds = %28
  %35 = load i8, i8* %6, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* @RELKIND_PARTITIONED_INDEX, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i8, i8* %6, align 1
  %42 = sext i8 %41 to i32
  %43 = load i8, i8* @RELKIND_TOASTVALUE, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %97

46:                                               ; preds = %40, %34, %28, %22, %16, %4
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %96

49:                                               ; preds = %46
  store i32* null, i32** %9, align 8
  %50 = call i32 @initPQExpBuffer(%struct.TYPE_13__* %10)
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @printfPQExpBuffer(%struct.TYPE_13__* %10, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @PSQLexec(i32 %54)
  store i32* %55, i32** %9, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %49
  %59 = call i32 @termPQExpBuffer(%struct.TYPE_13__* %10)
  br label %97

60:                                               ; preds = %49
  %61 = load i32*, i32** %9, align 8
  %62 = call i64 @PQntuples(i32* %61)
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %92

64:                                               ; preds = %60
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32*, i32** %9, align 8
  %70 = call i64 @PQgetvalue(i32* %69, i32 0, i32 0)
  %71 = call i32 @printfPQExpBuffer(%struct.TYPE_13__* %10, i8* %68, i64 %70)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @printTableAddFooter(%struct.TYPE_12__* %72, i32 %74)
  br label %91

76:                                               ; preds = %64
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @printfPQExpBuffer(%struct.TYPE_13__* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %81)
  %83 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32*, i32** %9, align 8
  %85 = call i64 @PQgetvalue(i32* %84, i32 0, i32 0)
  %86 = call i32 @appendPQExpBuffer(%struct.TYPE_13__* %10, i8* %83, i64 %85)
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @printTableSetFooter(%struct.TYPE_12__* %87, i32 %89)
  br label %91

91:                                               ; preds = %76, %67
  br label %92

92:                                               ; preds = %91, %60
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @PQclear(i32* %93)
  %95 = call i32 @termPQExpBuffer(%struct.TYPE_13__* %10)
  br label %96

96:                                               ; preds = %92, %46
  br label %97

97:                                               ; preds = %58, %96, %40
  ret void
}

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_13__*) #1

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_13__*, i8*, i64) #1

declare dso_local i32* @PSQLexec(i32) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_13__*) #1

declare dso_local i64 @PQntuples(i32*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i64 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @printTableAddFooter(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_13__*, i8*, i64) #1

declare dso_local i32 @printTableSetFooter(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
