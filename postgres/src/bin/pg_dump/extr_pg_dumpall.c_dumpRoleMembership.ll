; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dumpall.c_dumpRoleMembership.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dumpall.c_dumpRoleMembership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [294 x i8] c"SELECT ur.rolname AS roleid, um.rolname AS member, a.admin_option, ug.rolname AS grantor FROM pg_auth_members a LEFT JOIN %s ur on ur.oid = a.roleid LEFT JOIN %s um on um.oid = a.member LEFT JOIN %s ug on ug.oid = a.grantor WHERE NOT (ur.rolname ~ '^pg_' AND um.rolname ~ '^pg_')ORDER BY 1,2,3\00", align 1
@role_catalog = common dso_local global i32 0, align 4
@OPF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"--\0A-- Role memberships\0A--\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"GRANT %s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" TO %s\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c" WITH ADMIN OPTION\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" GRANTED BY %s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @dumpRoleMembership to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dumpRoleMembership(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %10 = call %struct.TYPE_5__* (...) @createPQExpBuffer()
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %3, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = load i32, i32* @role_catalog, align 4
  %13 = load i32, i32* @role_catalog, align 4
  %14 = load i32, i32* @role_catalog, align 4
  %15 = call i32 @printfPQExpBuffer(%struct.TYPE_5__* %11, i8* getelementptr inbounds ([294 x i8], [294 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @executeQuery(i32* %16, i32 %19)
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @PQntuples(i32* %21)
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @OPF, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %1
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %74, %27
  %29 = load i32, i32* %5, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @PQntuples(i32* %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %77

33:                                               ; preds = %28
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i8* @PQgetvalue(i32* %34, i32 %35, i32 0)
  store i8* %36, i8** %6, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i8* @PQgetvalue(i32* %37, i32 %38, i32 1)
  store i8* %39, i8** %7, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i8* @PQgetvalue(i32* %40, i32 %41, i32 2)
  store i8* %42, i8** %8, align 8
  %43 = load i32, i32* @OPF, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = call i8* @fmtId(i8* %44)
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* @OPF, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = call i8* @fmtId(i8* %48)
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %8, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 116
  br i1 %54, label %55, label %58

55:                                               ; preds = %33
  %56 = load i32, i32* @OPF, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %33
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @PQgetisnull(i32* %59, i32 %60, i32 3)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %58
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i8* @PQgetvalue(i32* %64, i32 %65, i32 3)
  store i8* %66, i8** %9, align 8
  %67 = load i32, i32* @OPF, align 4
  %68 = load i8*, i8** %9, align 8
  %69 = call i8* @fmtId(i8* %68)
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %63, %58
  %72 = load i32, i32* @OPF, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %28

77:                                               ; preds = %28
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @PQclear(i32* %78)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = call i32 @destroyPQExpBuffer(%struct.TYPE_5__* %80)
  %82 = load i32, i32* @OPF, align 4
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local %struct.TYPE_5__* @createPQExpBuffer(...) #1

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_5__*, i8*, i32, i32, i32) #1

declare dso_local i32* @executeQuery(i32*, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i8* @fmtId(i8*) #1

declare dso_local i32 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
