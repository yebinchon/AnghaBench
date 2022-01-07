; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dumpall.c_dumpGroups.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dumpall.c_dumpGroups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [49 x i8] c"SELECT groname, grolist FROM pg_group ORDER BY 1\00", align 1
@OPF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"--\0A-- Role memberships\0A--\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"SELECT usename FROM pg_shadow WHERE usesysid IN %s ORDER BY 1\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"GRANT %s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" TO %s;\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @dumpGroups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dumpGroups(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %11 = call %struct.TYPE_5__* (...) @createPQExpBuffer()
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %3, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32* @executeQuery(i32* %12, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @PQntuples(i32* %14)
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @OPF, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %1
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %87, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @PQntuples(i32* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %90

26:                                               ; preds = %21
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i8* @PQgetvalue(i32* %27, i32 %28, i32 0)
  store i8* %29, i8** %6, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i8* @PQgetvalue(i32* %30, i32 %31, i32 1)
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %87

37:                                               ; preds = %26
  %38 = load i8*, i8** %7, align 8
  %39 = call i8* @pg_strdup(i8* %38)
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 40, i8* %41, align 1
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  store i8 41, i8* %47, align 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @printfPQExpBuffer(%struct.TYPE_5__* %48, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @free(i8* %51)
  %53 = load i32*, i32** %2, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32* @executeQuery(i32* %53, i8* %56)
  store i32* %57, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %81, %37
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @PQntuples(i32* %60)
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %58
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i8* @PQgetvalue(i32* %64, i32 %65, i32 0)
  store i8* %66, i8** %10, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = call i64 @strcmp(i8* %67, i8* %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %81

72:                                               ; preds = %63
  %73 = load i32, i32* @OPF, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = call i8* @fmtId(i8* %74)
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  %77 = load i32, i32* @OPF, align 4
  %78 = load i8*, i8** %10, align 8
  %79 = call i8* @fmtId(i8* %78)
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %72, %71
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %58

84:                                               ; preds = %58
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @PQclear(i32* %85)
  br label %87

87:                                               ; preds = %84, %36
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %21

90:                                               ; preds = %21
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @PQclear(i32* %91)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %94 = call i32 @destroyPQExpBuffer(%struct.TYPE_5__* %93)
  %95 = load i32, i32* @OPF, align 4
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local %struct.TYPE_5__* @createPQExpBuffer(...) #1

declare dso_local i32* @executeQuery(i32*, i8*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @fmtId(i8*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
