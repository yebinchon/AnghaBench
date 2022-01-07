; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_server.c_check_pghost_envvar.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_server.c_check_pghost_envvar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32* }

@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"PGHOST\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"PGHOSTADDR\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"::1\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"libpq environment variable %s has a non-local server value: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_pghost_envvar() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = call %struct.TYPE_4__* (...) @PQconndefaults()
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %1, align 8
  br label %11

11:                                               ; preds = %70, %9
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %73

16:                                               ; preds = %11
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %69

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %69

33:                                               ; preds = %27, %21
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @getenv(i8* %36)
  store i8* %37, i8** %3, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %68

40:                                               ; preds = %33
  %41 = load i8*, i8** %3, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %40
  %45 = load i8*, i8** %3, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load i8*, i8** %3, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load i8*, i8** %3, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 47
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 (i8*, ...) @pg_fatal(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i8* %65, i8* %66)
  br label %68

68:                                               ; preds = %62, %56, %52, %48, %44, %40, %33
  br label %69

69:                                               ; preds = %68, %27, %16
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 1
  store %struct.TYPE_4__* %72, %struct.TYPE_4__** %1, align 8
  br label %11

73:                                               ; preds = %11
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %75 = call i32 @PQconninfoFree(%struct.TYPE_4__* %74)
  ret void
}

declare dso_local %struct.TYPE_4__* @PQconndefaults(...) #1

declare dso_local i32 @pg_fatal(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @PQconninfoFree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
