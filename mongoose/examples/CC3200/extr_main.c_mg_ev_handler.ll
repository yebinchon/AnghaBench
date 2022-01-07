; ModuleID = '/home/carl/AnghaBench/mongoose/examples/CC3200/extr_main.c_mg_ev_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/CC3200/extr_main.c_mg_ev_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i8*, i32, i32, i32 }
%struct.http_message = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.mg_serve_http_opts = type { i8* }
%struct.mg_str = type { i32, i32 }
%struct.mg_http_multipart_part = type { i32 }

@MG_SOCK_STRINGIFY_REMOTE = common dso_local global i32 0, align 4
@MG_SOCK_STRINGIFY_IP = common dso_local global i32 0, align 4
@MG_SOCK_STRINGIFY_PORT = common dso_local global i32 0, align 4
@LL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%p conn from %s\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"HTTP request from %s: %.*s %.*s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/upload\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"SL:index.html\00", align 1
@upload_form = common dso_local global i32 0, align 4
@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"SL:\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"%p closed\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"%p switching to data mode\00", align 1
@data_conn_handler = common dso_local global i32 0, align 4
@DATA_COLLECTION_INTERVAL_MS = common dso_local global double 0.000000e+00, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Begin file upload: %s\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"End file upload: %s\00", align 1
@upload_fname = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @mg_ev_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_ev_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
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
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %190 [
    i32 136, label %18
    i32 130, label %31
    i32 135, label %96
    i32 128, label %101
    i32 129, label %112
    i32 134, label %122
    i32 133, label %159
    i32 132, label %159
    i32 131, label %159
  ]

18:                                               ; preds = %3
  %19 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %21 = load i32, i32* @MG_SOCK_STRINGIFY_REMOTE, align 4
  %22 = load i32, i32* @MG_SOCK_STRINGIFY_IP, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @MG_SOCK_STRINGIFY_PORT, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @mg_conn_addr_to_str(%struct.mg_connection* %19, i8* %20, i32 32, i32 %25)
  %27 = load i32, i32* @LL_INFO, align 4
  %28 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %30 = call i32 @LOG(i32 %27, i8* %29)
  br label %190

31:                                               ; preds = %3
  %32 = load i8*, i8** %6, align 8
  %33 = bitcast i8* %32 to %struct.http_message*
  store %struct.http_message* %33, %struct.http_message** %9, align 8
  %34 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %36 = load i32, i32* @MG_SOCK_STRINGIFY_REMOTE, align 4
  %37 = load i32, i32* @MG_SOCK_STRINGIFY_IP, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @MG_SOCK_STRINGIFY_PORT, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @mg_conn_addr_to_str(%struct.mg_connection* %34, i8* %35, i32 32, i32 %40)
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
  %67 = call i32 @mg_vcmp(%struct.TYPE_4__* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %31
  %70 = load %struct.http_message*, %struct.http_message** %9, align 8
  %71 = getelementptr inbounds %struct.http_message, %struct.http_message* %70, i32 0, i32 0
  %72 = call i32 @mg_vcmp(%struct.TYPE_4__* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = call i32 @mg_stat(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %10)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %74, %31
  %78 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %79 = load i32, i32* @upload_form, align 4
  %80 = load i32, i32* @upload_form, align 4
  %81 = call i32 @strlen(i32 %80)
  %82 = call i32 @mg_send(%struct.mg_connection* %78, i32 %79, i32 %81)
  %83 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %84 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %85 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %190

88:                                               ; preds = %74, %69
  %89 = call i32 @memset(%struct.mg_serve_http_opts* %11, i32 0, i32 8)
  %90 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %90, align 8
  %91 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %92 = load %struct.http_message*, %struct.http_message** %9, align 8
  %93 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %11, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @mg_serve_http(%struct.mg_connection* %91, %struct.http_message* %92, i8* %94)
  br label %190

96:                                               ; preds = %3
  %97 = load i32, i32* @LL_INFO, align 4
  %98 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %99 = bitcast %struct.mg_connection* %98 to i8*
  %100 = call i32 @LOG(i32 %97, i8* %99)
  br label %190

101:                                              ; preds = %3
  %102 = load i32, i32* @LL_INFO, align 4
  %103 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %104 = bitcast %struct.mg_connection* %103 to i8*
  %105 = call i32 @LOG(i32 %102, i8* %104)
  %106 = load i32, i32* @data_conn_handler, align 4
  %107 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %108 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = call i32 (...) @mg_time()
  %110 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %111 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  br label %190

112:                                              ; preds = %3
  %113 = call i32 (...) @data_collect()
  %114 = call i32 (...) @mg_time()
  %115 = sitofp i32 %114 to double
  %116 = load double, double* @DATA_COLLECTION_INTERVAL_MS, align 8
  %117 = fmul double %116, 1.000000e-03
  %118 = fadd double %115, %117
  %119 = fptosi double %118 to i32
  %120 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %121 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  br label %190

122:                                              ; preds = %3
  %123 = load i8*, i8** %6, align 8
  %124 = bitcast i8* %123 to %struct.http_message*
  store %struct.http_message* %124, %struct.http_message** %12, align 8
  %125 = load %struct.http_message*, %struct.http_message** %12, align 8
  %126 = call %struct.mg_str* @mg_get_http_header(%struct.http_message* %125, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  store %struct.mg_str* %126, %struct.mg_str** %13, align 8
  store i64 -1, i64* %14, align 8
  %127 = load %struct.mg_str*, %struct.mg_str** %13, align 8
  %128 = icmp ne %struct.mg_str* %127, null
  br i1 %128, label %129, label %154

129:                                              ; preds = %122
  %130 = load %struct.mg_str*, %struct.mg_str** %13, align 8
  %131 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %132, 20
  br i1 %133, label %134, label %154

134:                                              ; preds = %129
  %135 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %136 = load %struct.mg_str*, %struct.mg_str** %13, align 8
  %137 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.mg_str*, %struct.mg_str** %13, align 8
  %140 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @memcpy(i8* %135, i32 %138, i32 %141)
  %143 = load %struct.mg_str*, %struct.mg_str** %13, align 8
  %144 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 %146
  store i8 0, i8* %147, align 1
  %148 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %149 = call i64 @atoi(i8* %148)
  store i64 %149, i64* %14, align 8
  %150 = load i64, i64* %14, align 8
  %151 = icmp slt i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %134
  store i64 -1, i64* %14, align 8
  br label %153

153:                                              ; preds = %152, %134
  br label %154

154:                                              ; preds = %153, %129, %122
  %155 = load i64, i64* %14, align 8
  %156 = inttoptr i64 %155 to i8*
  %157 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %158 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %157, i32 0, i32 0
  store i8* %156, i8** %158, align 8
  br label %190

159:                                              ; preds = %3, %3, %3
  %160 = load i8*, i8** %6, align 8
  %161 = bitcast i8* %160 to %struct.mg_http_multipart_part*
  store %struct.mg_http_multipart_part* %161, %struct.mg_http_multipart_part** %16, align 8
  %162 = load i32, i32* %5, align 4
  %163 = icmp eq i32 %162, 133
  br i1 %163, label %164, label %172

164:                                              ; preds = %159
  %165 = load i32, i32* @LL_INFO, align 4
  %166 = load %struct.mg_http_multipart_part*, %struct.mg_http_multipart_part** %16, align 8
  %167 = getelementptr inbounds %struct.mg_http_multipart_part, %struct.mg_http_multipart_part* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = inttoptr i64 %169 to i8*
  %171 = call i32 @LOG(i32 %165, i8* %170)
  br label %184

172:                                              ; preds = %159
  %173 = load i32, i32* %5, align 4
  %174 = icmp eq i32 %173, 131
  br i1 %174, label %175, label %183

175:                                              ; preds = %172
  %176 = load i32, i32* @LL_INFO, align 4
  %177 = load %struct.mg_http_multipart_part*, %struct.mg_http_multipart_part** %16, align 8
  %178 = getelementptr inbounds %struct.mg_http_multipart_part, %struct.mg_http_multipart_part* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = inttoptr i64 %180 to i8*
  %182 = call i32 @LOG(i32 %176, i8* %181)
  br label %183

183:                                              ; preds = %175, %172
  br label %184

184:                                              ; preds = %183, %164
  %185 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %186 = load i32, i32* %5, align 4
  %187 = load i8*, i8** %6, align 8
  %188 = load i32, i32* @upload_fname, align 4
  %189 = call i32 @mg_file_upload_handler(%struct.mg_connection* %185, i32 %186, i8* %187, i32 %188)
  br label %190

190:                                              ; preds = %184, %3, %154, %112, %101, %96, %88, %77, %18
  ret void
}

declare dso_local i32 @mg_conn_addr_to_str(%struct.mg_connection*, i8*, i32, i32) #1

declare dso_local i32 @LOG(i32, i8*) #1

declare dso_local i32 @mg_vcmp(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @mg_stat(i8*, i32*) #1

declare dso_local i32 @mg_send(%struct.mg_connection*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memset(%struct.mg_serve_http_opts*, i32, i32) #1

declare dso_local i32 @mg_serve_http(%struct.mg_connection*, %struct.http_message*, i8*) #1

declare dso_local i32 @mg_time(...) #1

declare dso_local i32 @data_collect(...) #1

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
