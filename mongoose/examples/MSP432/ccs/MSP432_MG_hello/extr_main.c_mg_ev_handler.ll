; ModuleID = '/home/carl/AnghaBench/mongoose/examples/MSP432/ccs/MSP432_MG_hello/extr_main.c_mg_ev_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/MSP432/ccs/MSP432_MG_hello/extr_main.c_mg_ev_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, i32 }
%struct.http_message = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.mg_serve_http_opts = type { i8* }
%struct.mg_http_multipart_part = type { i32 }

@LL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%p ev %d\00", align 1
@MG_SOCK_STRINGIFY_IP = common dso_local global i32 0, align 4
@MG_SOCK_STRINGIFY_PORT = common dso_local global i32 0, align 4
@LL_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Connection %p from %s\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"HTTP request from %s: %.*s %.*s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"/upload\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"SL:index.html\00", align 1
@upload_form = common dso_local global i32 0, align 4
@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"SL:\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Connection %p closed\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Begin file upload: %s\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"End file upload: %s\00", align 1
@upload_fname = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_ev_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca [32 x i8], align 16
  %9 = alloca %struct.http_message*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mg_serve_http_opts, align 8
  %12 = alloca %struct.mg_http_multipart_part*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load i32, i32* @LL_DEBUG, align 4
  %14 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @LOG(i32 %13, i8* %17)
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %132 [
    i32 133, label %20
    i32 128, label %32
    i32 132, label %96
    i32 131, label %101
    i32 130, label %101
    i32 129, label %101
  ]

20:                                               ; preds = %3
  %21 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %22 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %21, i32 0, i32 1
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %24 = load i32, i32* @MG_SOCK_STRINGIFY_IP, align 4
  %25 = load i32, i32* @MG_SOCK_STRINGIFY_PORT, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @mg_sock_addr_to_str(i32* %22, i8* %23, i32 32, i32 %26)
  %28 = load i32, i32* @LL_INFO, align 4
  %29 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %31 = call i32 @LOG(i32 %28, i8* %30)
  br label %132

32:                                               ; preds = %3
  %33 = load i8*, i8** %6, align 8
  %34 = bitcast i8* %33 to %struct.http_message*
  store %struct.http_message* %34, %struct.http_message** %9, align 8
  %35 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %36 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %35, i32 0, i32 1
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %38 = load i32, i32* @MG_SOCK_STRINGIFY_IP, align 4
  %39 = load i32, i32* @MG_SOCK_STRINGIFY_PORT, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @mg_sock_addr_to_str(i32* %36, i8* %37, i32 32, i32 %40)
  %42 = load i32, i32* @LL_INFO, align 4
  %43 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %44 = load %struct.http_message*, %struct.http_message** %9, align 8
  %45 = getelementptr inbounds %struct.http_message, %struct.http_message* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = load %struct.http_message*, %struct.http_message** %9, align 8
  %50 = getelementptr inbounds %struct.http_message, %struct.http_message* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.http_message*, %struct.http_message** %9, align 8
  %54 = getelementptr inbounds %struct.http_message, %struct.http_message* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.http_message*, %struct.http_message** %9, align 8
  %59 = getelementptr inbounds %struct.http_message, %struct.http_message* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @LOG(i32 %42, i8* %63)
  %65 = load %struct.http_message*, %struct.http_message** %9, align 8
  %66 = getelementptr inbounds %struct.http_message, %struct.http_message* %65, i32 0, i32 0
  %67 = call i32 @mg_vcmp(%struct.TYPE_4__* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %32
  %70 = load %struct.http_message*, %struct.http_message** %9, align 8
  %71 = getelementptr inbounds %struct.http_message, %struct.http_message* %70, i32 0, i32 0
  %72 = call i32 @mg_vcmp(%struct.TYPE_4__* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = call i32 @mg_stat(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32* %10)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %74, %32
  %78 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %79 = load i32, i32* @upload_form, align 4
  %80 = load i32, i32* @upload_form, align 4
  %81 = call i32 @strlen(i32 %80)
  %82 = call i32 @mg_send(%struct.mg_connection* %78, i32 %79, i32 %81)
  %83 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %84 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %85 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %132

88:                                               ; preds = %74, %69
  %89 = call i32 @memset(%struct.mg_serve_http_opts* %11, i32 0, i32 8)
  %90 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %90, align 8
  %91 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %92 = load %struct.http_message*, %struct.http_message** %9, align 8
  %93 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %11, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @mg_serve_http(%struct.mg_connection* %91, %struct.http_message* %92, i8* %94)
  br label %132

96:                                               ; preds = %3
  %97 = load i32, i32* @LL_INFO, align 4
  %98 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %99 = bitcast %struct.mg_connection* %98 to i8*
  %100 = call i32 @LOG(i32 %97, i8* %99)
  br label %132

101:                                              ; preds = %3, %3, %3
  %102 = load i8*, i8** %6, align 8
  %103 = bitcast i8* %102 to %struct.mg_http_multipart_part*
  store %struct.mg_http_multipart_part* %103, %struct.mg_http_multipart_part** %12, align 8
  %104 = load i32, i32* %5, align 4
  %105 = icmp eq i32 %104, 131
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load i32, i32* @LL_INFO, align 4
  %108 = load %struct.mg_http_multipart_part*, %struct.mg_http_multipart_part** %12, align 8
  %109 = getelementptr inbounds %struct.mg_http_multipart_part, %struct.mg_http_multipart_part* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i8*
  %113 = call i32 @LOG(i32 %107, i8* %112)
  br label %126

114:                                              ; preds = %101
  %115 = load i32, i32* %5, align 4
  %116 = icmp eq i32 %115, 129
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load i32, i32* @LL_INFO, align 4
  %119 = load %struct.mg_http_multipart_part*, %struct.mg_http_multipart_part** %12, align 8
  %120 = getelementptr inbounds %struct.mg_http_multipart_part, %struct.mg_http_multipart_part* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i8*
  %124 = call i32 @LOG(i32 %118, i8* %123)
  br label %125

125:                                              ; preds = %117, %114
  br label %126

126:                                              ; preds = %125, %106
  %127 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %128 = load i32, i32* %5, align 4
  %129 = load i8*, i8** %6, align 8
  %130 = load i32, i32* @upload_fname, align 4
  %131 = call i32 @mg_file_upload_handler(%struct.mg_connection* %127, i32 %128, i8* %129, i32 %130)
  br label %132

132:                                              ; preds = %126, %3, %96, %88, %77, %20
  ret void
}

declare dso_local i32 @LOG(i32, i8*) #1

declare dso_local i32 @mg_sock_addr_to_str(i32*, i8*, i32, i32) #1

declare dso_local i32 @mg_vcmp(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @mg_stat(i8*, i32*) #1

declare dso_local i32 @mg_send(%struct.mg_connection*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memset(%struct.mg_serve_http_opts*, i32, i32) #1

declare dso_local i32 @mg_serve_http(%struct.mg_connection*, %struct.http_message*, i8*) #1

declare dso_local i32 @mg_file_upload_handler(%struct.mg_connection*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
