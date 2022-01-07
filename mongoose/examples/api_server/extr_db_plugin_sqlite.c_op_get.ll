; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_db_plugin_sqlite.c_op_get.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_db_plugin_sqlite.c_op_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.http_message = type { i32 }
%struct.mg_str = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"SELECT val FROM kv WHERE key = ?;\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"HTTP/1.1 200 OK\0D\0AContent-Type: text/plain\0D\0AContent-Length: %d\0D\0A\0D\0A%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"HTTP/1.1 404 Not Found\0D\0AContent-Length: 0\0D\0A\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"HTTP/1.1 500 Server Error\0D\0AContent-Length: 0\0D\0A\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, %struct.http_message*, %struct.mg_str*, i8*)* @op_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @op_get(%struct.mg_connection* %0, %struct.http_message* %1, %struct.mg_str* %2, i8* %3) #0 {
  %5 = alloca %struct.mg_connection*, align 8
  %6 = alloca %struct.http_message*, align 8
  %7 = alloca %struct.mg_str*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %5, align 8
  store %struct.http_message* %1, %struct.http_message** %6, align 8
  store %struct.mg_str* %2, %struct.mg_str** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32* null, i32** %9, align 8
  store i8* null, i8** %10, align 8
  %12 = load %struct.http_message*, %struct.http_message** %6, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @sqlite3_prepare_v2(i8* %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 -1, i32** %9, i32* null)
  %15 = load i32, i32* @SQLITE_OK, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %4
  %18 = load i32*, i32** %9, align 8
  %19 = load %struct.mg_str*, %struct.mg_str** %7, align 8
  %20 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mg_str*, %struct.mg_str** %7, align 8
  %23 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SQLITE_STATIC, align 4
  %26 = call i32 @sqlite3_bind_text(i32* %18, i32 1, i32 %21, i32 %24, i32 %25)
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @sqlite3_step(i32* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = call i64 @sqlite3_column_text(i32* %29, i32 0)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @SQLITE_OK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %17
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @SQLITE_ROW, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %35, %17
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = trunc i64 %45 to i32
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 (%struct.mg_connection*, i8*, ...) @mg_printf(%struct.mg_connection* %43, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %46, i8* %47)
  br label %52

49:                                               ; preds = %39, %35
  %50 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %51 = call i32 (%struct.mg_connection*, i8*, ...) @mg_printf(%struct.mg_connection* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %42
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @sqlite3_finalize(i32* %53)
  br label %58

55:                                               ; preds = %4
  %56 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %57 = call i32 (%struct.mg_connection*, i8*, ...) @mg_printf(%struct.mg_connection* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %52
  ret void
}

declare dso_local i32 @sqlite3_prepare_v2(i8*, i8*, i32, i32**, i32*) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
