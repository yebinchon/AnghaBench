; ModuleID = '/home/carl/AnghaBench/mongoose/examples/big_upload/extr_big_upload.c_handle_upload.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/big_upload/extr_big_upload.c_handle_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32*, i32 }
%struct.file_writer_data = type { i32*, i32 }
%struct.mg_http_multipart_part = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"HTTP/1.1 500 Failed to open a file\0D\0AContent-Length: 0\0D\0A\0D\0A\00", align 1
@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"HTTP/1.1 500 Failed to write to a file\0D\0AContent-Length: 0\0D\0A\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"HTTP/1.1 200 OK\0D\0AContent-Type: text/plain\0D\0AConnection: close\0D\0A\0D\0AWritten %ld of POST data to a temp file\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @handle_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_upload(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.file_writer_data*, align 8
  %8 = alloca %struct.mg_http_multipart_part*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %10 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = bitcast i32* %11 to %struct.file_writer_data*
  store %struct.file_writer_data* %12, %struct.file_writer_data** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.mg_http_multipart_part*
  store %struct.mg_http_multipart_part* %14, %struct.mg_http_multipart_part** %8, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %102 [
    i32 130, label %16
    i32 129, label %47
    i32 128, label %82
  ]

16:                                               ; preds = %3
  %17 = load %struct.file_writer_data*, %struct.file_writer_data** %7, align 8
  %18 = icmp eq %struct.file_writer_data* %17, null
  br i1 %18, label %19, label %46

19:                                               ; preds = %16
  %20 = call %struct.file_writer_data* @calloc(i32 1, i32 16)
  store %struct.file_writer_data* %20, %struct.file_writer_data** %7, align 8
  %21 = call i32* (...) @tmpfile()
  %22 = load %struct.file_writer_data*, %struct.file_writer_data** %7, align 8
  %23 = getelementptr inbounds %struct.file_writer_data, %struct.file_writer_data* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.file_writer_data*, %struct.file_writer_data** %7, align 8
  %25 = getelementptr inbounds %struct.file_writer_data, %struct.file_writer_data* %24, i32 0, i32 1
  store i32 0, i32* %25, align 8
  %26 = load %struct.file_writer_data*, %struct.file_writer_data** %7, align 8
  %27 = getelementptr inbounds %struct.file_writer_data, %struct.file_writer_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %19
  %31 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %32 = call i32 (%struct.mg_connection*, i8*, ...) @mg_printf(%struct.mg_connection* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %34 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %35 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.file_writer_data*, %struct.file_writer_data** %7, align 8
  %39 = call i32 @free(%struct.file_writer_data* %38)
  br label %102

40:                                               ; preds = %19
  %41 = load %struct.file_writer_data*, %struct.file_writer_data** %7, align 8
  %42 = bitcast %struct.file_writer_data* %41 to i8*
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %45 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %44, i32 0, i32 0
  store i32* %43, i32** %45, align 8
  br label %46

46:                                               ; preds = %40, %16
  br label %102

47:                                               ; preds = %3
  %48 = load %struct.mg_http_multipart_part*, %struct.mg_http_multipart_part** %8, align 8
  %49 = getelementptr inbounds %struct.mg_http_multipart_part, %struct.mg_http_multipart_part* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mg_http_multipart_part*, %struct.mg_http_multipart_part** %8, align 8
  %53 = getelementptr inbounds %struct.mg_http_multipart_part, %struct.mg_http_multipart_part* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.file_writer_data*, %struct.file_writer_data** %7, align 8
  %57 = getelementptr inbounds %struct.file_writer_data, %struct.file_writer_data* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @fwrite(i32 %51, i32 1, i32 %55, i32* %58)
  %60 = load %struct.mg_http_multipart_part*, %struct.mg_http_multipart_part** %8, align 8
  %61 = getelementptr inbounds %struct.mg_http_multipart_part, %struct.mg_http_multipart_part* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %59, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %47
  %66 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %67 = call i32 (%struct.mg_connection*, i8*, ...) @mg_printf(%struct.mg_connection* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %69 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %70 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %102

73:                                               ; preds = %47
  %74 = load %struct.mg_http_multipart_part*, %struct.mg_http_multipart_part** %8, align 8
  %75 = getelementptr inbounds %struct.mg_http_multipart_part, %struct.mg_http_multipart_part* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.file_writer_data*, %struct.file_writer_data** %7, align 8
  %79 = getelementptr inbounds %struct.file_writer_data, %struct.file_writer_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %102

82:                                               ; preds = %3
  %83 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %84 = load %struct.file_writer_data*, %struct.file_writer_data** %7, align 8
  %85 = getelementptr inbounds %struct.file_writer_data, %struct.file_writer_data* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i64 @ftell(i32* %86)
  %88 = call i32 (%struct.mg_connection*, i8*, ...) @mg_printf(%struct.mg_connection* %83, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i64 %87)
  %89 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %90 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %91 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.file_writer_data*, %struct.file_writer_data** %7, align 8
  %95 = getelementptr inbounds %struct.file_writer_data, %struct.file_writer_data* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @fclose(i32* %96)
  %98 = load %struct.file_writer_data*, %struct.file_writer_data** %7, align 8
  %99 = call i32 @free(%struct.file_writer_data* %98)
  %100 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %101 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %100, i32 0, i32 0
  store i32* null, i32** %101, align 8
  br label %102

102:                                              ; preds = %30, %65, %3, %82, %73, %46
  ret void
}

declare dso_local %struct.file_writer_data* @calloc(i32, i32) #1

declare dso_local i32* @tmpfile(...) #1

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, ...) #1

declare dso_local i32 @free(%struct.file_writer_data*) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32*) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
