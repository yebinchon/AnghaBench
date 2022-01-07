; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dumpall.c_dropDBs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dumpall.c_dropDBs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [70 x i8] c"SELECT datname FROM pg_database d WHERE datallowconn ORDER BY datname\00", align 1
@OPF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"--\0A-- Drop databases (except postgres and template1)\0A--\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"template1\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"template0\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"DROP DATABASE %s%s;\0A\00", align 1
@if_exists = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"IF EXISTS \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @dropDBs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dropDBs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32* @executeQuery(i32* %6, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @PQntuples(i32* %8)
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @OPF, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %45, %14
  %16 = load i32, i32* %4, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @PQntuples(i32* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %15
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i8* @PQgetvalue(i32* %21, i32 %22, i32 0)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %20
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i32, i32* @OPF, align 4
  %37 = load i64, i64* @if_exists, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @fmtId(i8* %41)
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %40, i32 %42)
  br label %44

44:                                               ; preds = %35, %31, %27, %20
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %15

48:                                               ; preds = %15
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @PQclear(i32* %49)
  %51 = load i32, i32* @OPF, align 4
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32* @executeQuery(i32*, i8*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fmtId(i8*) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
