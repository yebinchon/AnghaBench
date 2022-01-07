; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dumpall.c_dropRoles.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dumpall.c_dropRoles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@server_version = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"SELECT rolname FROM %s WHERE rolname !~ '^pg_' ORDER BY 1\00", align 1
@role_catalog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"SELECT rolname FROM %s ORDER BY 1\00", align 1
@.str.2 = private unnamed_addr constant [98 x i8] c"SELECT usename as rolname FROM pg_shadow UNION SELECT groname as rolname FROM pg_group ORDER BY 1\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"rolname\00", align 1
@OPF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"--\0A-- Drop roles\0A--\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"DROP ROLE %s%s;\0A\00", align 1
@if_exists = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"IF EXISTS \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @dropRoles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dropRoles(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %8 = call %struct.TYPE_5__* (...) @createPQExpBuffer()
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %3, align 8
  %9 = load i32, i32* @server_version, align 4
  %10 = icmp sge i32 %9, 90600
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = load i32, i32* @role_catalog, align 4
  %14 = call i32 (%struct.TYPE_5__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_5__* %12, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %26

15:                                               ; preds = %1
  %16 = load i32, i32* @server_version, align 4
  %17 = icmp sge i32 %16, 80100
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = load i32, i32* @role_catalog, align 4
  %21 = call i32 (%struct.TYPE_5__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_5__* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %25

22:                                               ; preds = %15
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = call i32 (%struct.TYPE_5__*, i8*, ...) @printfPQExpBuffer(%struct.TYPE_5__* %23, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.2, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %18
  br label %26

26:                                               ; preds = %25, %11
  %27 = load i32*, i32** %2, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @executeQuery(i32* %27, i32 %30)
  store i32* %31, i32** %4, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @PQfnumber(i32* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %33, i32* %5, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @PQntuples(i32* %34)
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* @OPF, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %26
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %59, %40
  %42 = load i32, i32* %6, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @PQntuples(i32* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i8* @PQgetvalue(i32* %47, i32 %48, i32 %49)
  store i8* %50, i8** %7, align 8
  %51 = load i32, i32* @OPF, align 4
  %52 = load i64, i64* @if_exists, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @fmtId(i8* %56)
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %55, i32 %57)
  br label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %41

62:                                               ; preds = %41
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @PQclear(i32* %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = call i32 @destroyPQExpBuffer(%struct.TYPE_5__* %65)
  %67 = load i32, i32* @OPF, align 4
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local %struct.TYPE_5__* @createPQExpBuffer(...) #1

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32* @executeQuery(i32*, i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @fmtId(i8*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
