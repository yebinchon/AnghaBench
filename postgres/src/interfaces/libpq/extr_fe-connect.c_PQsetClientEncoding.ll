; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_PQsetClientEncoding.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_PQsetClientEncoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64 }

@PQsetClientEncoding.query = internal constant [28 x i8] c"set client_encoding to '%s'\00", align 16
@CONNECTION_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"client_encoding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PQsetClientEncoding(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = icmp ne %struct.TYPE_9__* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CONNECTION_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %2
  store i32 -1, i32* %3, align 4
  br label %68

18:                                               ; preds = %11
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %68

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = call i32 @pg_get_encoding_from_locale(i32* null, i32 1)
  %28 = call i8* @pg_encoding_to_char(i32 %27)
  store i8* %28, i8** %5, align 8
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = sext i32 %31 to i64
  %33 = add i64 28, %32
  %34 = icmp ult i64 128, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %68

36:                                               ; preds = %29
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @PQsetClientEncoding.query, i64 0, i64 0), i8* %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %42 = call %struct.TYPE_8__* @PQexec(%struct.TYPE_9__* %40, i8* %41)
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %7, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = icmp eq %struct.TYPE_8__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %68

46:                                               ; preds = %36
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 -1, i32* %8, align 4
  br label %64

53:                                               ; preds = %46
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @PG_PROTOCOL_MAJOR(i32 %56)
  %58 = icmp slt i32 %57, 3
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @pqSaveParameterStatus(%struct.TYPE_9__* %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %59, %53
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %63, %52
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = call i32 @PQclear(%struct.TYPE_8__* %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %45, %35, %21, %17
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @pg_encoding_to_char(i32) #1

declare dso_local i32 @pg_get_encoding_from_locale(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_8__* @PQexec(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @PG_PROTOCOL_MAJOR(i32) #1

declare dso_local i32 @pqSaveParameterStatus(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i32 @PQclear(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
