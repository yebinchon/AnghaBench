; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_db_plugin_sqlite.c_op_del.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_db_plugin_sqlite.c_op_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.http_message = type { i32 }
%struct.mg_str = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"DELETE FROM kv WHERE key = ?;\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"HTTP/1.1 200 OK\0D\0AContent-Length: 0\0D\0A\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"HTTP/1.1 404 Not Found\0D\0AContent-Length: 0\0D\0A\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"HTTP/1.1 500 Server Error\0D\0AContent-Length: 0\0D\0A\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, %struct.http_message*, %struct.mg_str*, i8*)* @op_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @op_del(%struct.mg_connection* %0, %struct.http_message* %1, %struct.mg_str* %2, i8* %3) #0 {
  %5 = alloca %struct.mg_connection*, align 8
  %6 = alloca %struct.http_message*, align 8
  %7 = alloca %struct.mg_str*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %5, align 8
  store %struct.http_message* %1, %struct.http_message** %6, align 8
  store %struct.mg_str* %2, %struct.mg_str** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32* null, i32** %9, align 8
  %11 = load %struct.http_message*, %struct.http_message** %6, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 @sqlite3_prepare_v2(i8* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 -1, i32** %9, i32* null)
  %14 = load i32, i32* @SQLITE_OK, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %4
  %17 = load i32*, i32** %9, align 8
  %18 = load %struct.mg_str*, %struct.mg_str** %7, align 8
  %19 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mg_str*, %struct.mg_str** %7, align 8
  %22 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SQLITE_STATIC, align 4
  %25 = call i32 @sqlite3_bind_text(i32* %17, i32 1, i32 %20, i32 %23, i32 %24)
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @sqlite3_step(i32* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @SQLITE_OK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %16
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @SQLITE_ROW, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %16
  %36 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %37 = call i32 @mg_printf(%struct.mg_connection* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %41

38:                                               ; preds = %31
  %39 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %40 = call i32 @mg_printf(%struct.mg_connection* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @sqlite3_finalize(i32* %42)
  br label %47

44:                                               ; preds = %4
  %45 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %46 = call i32 @mg_printf(%struct.mg_connection* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %41
  ret void
}

declare dso_local i32 @sqlite3_prepare_v2(i8*, i8*, i32, i32**, i32*) #1

declare dso_local i32 @sqlite3_bind_text(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, i8*) #1

declare dso_local i32 @sqlite3_finalize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
