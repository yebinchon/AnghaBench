; ModuleID = '/home/carl/AnghaBench/mongoose/examples/CC3200/ccs/MG_hello/extr_main.c_mg_ev_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/CC3200/ccs/MG_hello/extr_main.c_mg_ev_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i8*, i32, i32 }
%struct.http_message = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.mg_serve_http_opts = type { i8* }
%struct.mg_str = type { i32, i32 }
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
@.str.8 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Begin file upload: %s\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"End file upload: %s\00", align 1
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
  %12 = alloca %struct.http_message*, align 8
  %13 = alloca %struct.mg_str*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [20 x i8], align 16
  %16 = alloca %struct.mg_http_multipart_part*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %17 = load i32, i32* @LL_DEBUG, align 4
  %18 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @LOG(i32 %17, i8* %21)
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %173 [
    i32 134, label %24
    i32 128, label %36
    i32 133, label %100
    i32 132, label %105
    i32 131, label %142
    i32 130, label %142
    i32 129, label %142
  ]

24:                                               ; preds = %3
  %25 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %26 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %25, i32 0, i32 2
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %28 = load i32, i32* @MG_SOCK_STRINGIFY_IP, align 4
  %29 = load i32, i32* @MG_SOCK_STRINGIFY_PORT, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @mg_sock_addr_to_str(i32* %26, i8* %27, i32 32, i32 %30)
  %32 = load i32, i32* @LL_INFO, align 4
  %33 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %35 = call i32 @LOG(i32 %32, i8* %34)
  br label %173

36:                                               ; preds = %3
  %37 = load i8*, i8** %6, align 8
  %38 = bitcast i8* %37 to %struct.http_message*
  store %struct.http_message* %38, %struct.http_message** %9, align 8
  %39 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %40 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %39, i32 0, i32 2
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %42 = load i32, i32* @MG_SOCK_STRINGIFY_IP, align 4
  %43 = load i32, i32* @MG_SOCK_STRINGIFY_PORT, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @mg_sock_addr_to_str(i32* %40, i8* %41, i32 32, i32 %44)
  %46 = load i32, i32* @LL_INFO, align 4
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %48 = load %struct.http_message*, %struct.http_message** %9, align 8
  %49 = getelementptr inbounds %struct.http_message, %struct.http_message* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load %struct.http_message*, %struct.http_message** %9, align 8
  %54 = getelementptr inbounds %struct.http_message, %struct.http_message* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.http_message*, %struct.http_message** %9, align 8
  %58 = getelementptr inbounds %struct.http_message, %struct.http_message* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load %struct.http_message*, %struct.http_message** %9, align 8
  %63 = getelementptr inbounds %struct.http_message, %struct.http_message* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 @LOG(i32 %46, i8* %67)
  %69 = load %struct.http_message*, %struct.http_message** %9, align 8
  %70 = getelementptr inbounds %struct.http_message, %struct.http_message* %69, i32 0, i32 0
  %71 = call i32 @mg_vcmp(%struct.TYPE_4__* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %36
  %74 = load %struct.http_message*, %struct.http_message** %9, align 8
  %75 = getelementptr inbounds %struct.http_message, %struct.http_message* %74, i32 0, i32 0
  %76 = call i32 @mg_vcmp(%struct.TYPE_4__* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %73
  %79 = call i32 @mg_stat(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32* %10)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %78, %36
  %82 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %83 = load i32, i32* @upload_form, align 4
  %84 = load i32, i32* @upload_form, align 4
  %85 = call i32 @strlen(i32 %84)
  %86 = call i32 @mg_send(%struct.mg_connection* %82, i32 %83, i32 %85)
  %87 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %88 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %89 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %173

92:                                               ; preds = %78, %73
  %93 = call i32 @memset(%struct.mg_serve_http_opts* %11, i32 0, i32 8)
  %94 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %94, align 8
  %95 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %96 = load %struct.http_message*, %struct.http_message** %9, align 8
  %97 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %11, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @mg_serve_http(%struct.mg_connection* %95, %struct.http_message* %96, i8* %98)
  br label %173

100:                                              ; preds = %3
  %101 = load i32, i32* @LL_INFO, align 4
  %102 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %103 = bitcast %struct.mg_connection* %102 to i8*
  %104 = call i32 @LOG(i32 %101, i8* %103)
  br label %173

105:                                              ; preds = %3
  %106 = load i8*, i8** %6, align 8
  %107 = bitcast i8* %106 to %struct.http_message*
  store %struct.http_message* %107, %struct.http_message** %12, align 8
  %108 = load %struct.http_message*, %struct.http_message** %12, align 8
  %109 = call %struct.mg_str* @mg_get_http_header(%struct.http_message* %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  store %struct.mg_str* %109, %struct.mg_str** %13, align 8
  store i64 -1, i64* %14, align 8
  %110 = load %struct.mg_str*, %struct.mg_str** %13, align 8
  %111 = icmp ne %struct.mg_str* %110, null
  br i1 %111, label %112, label %137

112:                                              ; preds = %105
  %113 = load %struct.mg_str*, %struct.mg_str** %13, align 8
  %114 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %115, 20
  br i1 %116, label %117, label %137

117:                                              ; preds = %112
  %118 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %119 = load %struct.mg_str*, %struct.mg_str** %13, align 8
  %120 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.mg_str*, %struct.mg_str** %13, align 8
  %123 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @memcpy(i8* %118, i32 %121, i32 %124)
  %126 = load %struct.mg_str*, %struct.mg_str** %13, align 8
  %127 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 %129
  store i8 0, i8* %130, align 1
  %131 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %132 = call i64 @atoi(i8* %131)
  store i64 %132, i64* %14, align 8
  %133 = load i64, i64* %14, align 8
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %117
  store i64 -1, i64* %14, align 8
  br label %136

136:                                              ; preds = %135, %117
  br label %137

137:                                              ; preds = %136, %112, %105
  %138 = load i64, i64* %14, align 8
  %139 = inttoptr i64 %138 to i8*
  %140 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %141 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  br label %173

142:                                              ; preds = %3, %3, %3
  %143 = load i8*, i8** %6, align 8
  %144 = bitcast i8* %143 to %struct.mg_http_multipart_part*
  store %struct.mg_http_multipart_part* %144, %struct.mg_http_multipart_part** %16, align 8
  %145 = load i32, i32* %5, align 4
  %146 = icmp eq i32 %145, 131
  br i1 %146, label %147, label %155

147:                                              ; preds = %142
  %148 = load i32, i32* @LL_INFO, align 4
  %149 = load %struct.mg_http_multipart_part*, %struct.mg_http_multipart_part** %16, align 8
  %150 = getelementptr inbounds %struct.mg_http_multipart_part, %struct.mg_http_multipart_part* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = inttoptr i64 %152 to i8*
  %154 = call i32 @LOG(i32 %148, i8* %153)
  br label %167

155:                                              ; preds = %142
  %156 = load i32, i32* %5, align 4
  %157 = icmp eq i32 %156, 129
  br i1 %157, label %158, label %166

158:                                              ; preds = %155
  %159 = load i32, i32* @LL_INFO, align 4
  %160 = load %struct.mg_http_multipart_part*, %struct.mg_http_multipart_part** %16, align 8
  %161 = getelementptr inbounds %struct.mg_http_multipart_part, %struct.mg_http_multipart_part* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = inttoptr i64 %163 to i8*
  %165 = call i32 @LOG(i32 %159, i8* %164)
  br label %166

166:                                              ; preds = %158, %155
  br label %167

167:                                              ; preds = %166, %147
  %168 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %169 = load i32, i32* %5, align 4
  %170 = load i8*, i8** %6, align 8
  %171 = load i32, i32* @upload_fname, align 4
  %172 = call i32 @mg_file_upload_handler(%struct.mg_connection* %168, i32 %169, i8* %170, i32 %171)
  br label %173

173:                                              ; preds = %167, %3, %137, %100, %92, %81, %24
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

declare dso_local %struct.mg_str* @mg_get_http_header(%struct.http_message*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @mg_file_upload_handler(%struct.mg_connection*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
