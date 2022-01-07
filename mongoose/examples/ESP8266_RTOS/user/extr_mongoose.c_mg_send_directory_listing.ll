; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_send_directory_listing.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_send_directory_listing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.http_message = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.mg_serve_http_opts = type { i32 }

@mg_send_directory_listing.sort_js_code = internal global i8* getelementptr inbounds ([453 x i8], [453 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [453 x i8] c"<script>function srt(tb, sc, so, d) {var tr = Array.prototype.slice.call(tb.rows, 0),tr = tr.sort(function (a, b) { var c1 = a.cells[sc], c2 = b.cells[sc],n1 = c1.getAttribute('name'), n2 = c2.getAttribute('name'), t1 = a.cells[2].getAttribute('name'), t2 = b.cells[2].getAttribute('name'); return so * (t1 < 0 && t2 >= 0 ? -1 : t2 < 0 && t1 >= 0 ? 1 : n1 ? parseInt(n2) - parseInt(n1) : c1.textContent.trim().localeCompare(c2.textContent.trim())); });\00", align 1
@mg_send_directory_listing.sort_js_code2 = internal global i8* getelementptr inbounds ([452 x i8], [452 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [452 x i8] c"for (var i = 0; i < tr.length; i++) tb.appendChild(tr[i]); if (!d) window.location.hash = ('sc=' + sc + '&so=' + so); };window.onload = function() {var tb = document.getElementById('tb');var m = /sc=([012]).so=(1|-1)/.exec(window.location.hash) || [0, 2, 1];var sc = m[1], so = m[2]; document.onclick = function(ev) { var c = ev.target.rel; if (c) {if (c == sc) so *= -1; srt(tb, c, so); sc = c; ev.preventDefault();}};srt(tb, sc, so, true);}</script>\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: %s\0D\0A%s: %s\0D\0A\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Transfer-Encoding\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"text/html; charset=utf-8\00", align 1
@.str.7 = private unnamed_addr constant [361 x i8] c"<html><head><title>Index of %.*s</title>%s%s<style>th,td {text-align: left; padding-right: 1em; font-family: monospace; }</style></head>\0A<body><h1>Index of %.*s</h1>\0A<table cellpadding=0><thead><tr><th><a href=# rel=0>Name</a></th><th><a href=# rel=1>Modified</a</th><th><a href=# rel=2>Size</a></th></tr><tr><td colspan=3><hr></td></tr>\0A</thead>\0A<tbody id=tb>\00", align 1
@mg_print_dir_entry = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [87 x i8] c"</tbody><tr><td colspan=3><hr></td></tr>\0A</table>\0A<address>%s</address>\0A</body></html>\00", align 1
@mg_version_header = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i8*, %struct.http_message*, %struct.mg_serve_http_opts*)* @mg_send_directory_listing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_send_directory_listing(%struct.mg_connection* %0, i8* %1, %struct.http_message* %2, %struct.mg_serve_http_opts* %3) #0 {
  %5 = alloca %struct.mg_connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.http_message*, align 8
  %8 = alloca %struct.mg_serve_http_opts*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.http_message* %2, %struct.http_message** %7, align 8
  store %struct.mg_serve_http_opts* %3, %struct.mg_serve_http_opts** %8, align 8
  %9 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %10 = load %struct.mg_serve_http_opts*, %struct.mg_serve_http_opts** %8, align 8
  %11 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mg_send_response_line(%struct.mg_connection* %9, i32 200, i32 %12)
  %14 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %15 = call i32 @mg_printf(%struct.mg_connection* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %16 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %17 = load %struct.http_message*, %struct.http_message** %7, align 8
  %18 = getelementptr inbounds %struct.http_message, %struct.http_message* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load %struct.http_message*, %struct.http_message** %7, align 8
  %23 = getelementptr inbounds %struct.http_message, %struct.http_message* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** @mg_send_directory_listing.sort_js_code, align 8
  %27 = load i8*, i8** @mg_send_directory_listing.sort_js_code2, align 8
  %28 = load %struct.http_message*, %struct.http_message** %7, align 8
  %29 = getelementptr inbounds %struct.http_message, %struct.http_message* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.http_message*, %struct.http_message** %7, align 8
  %34 = getelementptr inbounds %struct.http_message, %struct.http_message* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (%struct.mg_connection*, i8*, i32, ...) @mg_printf_http_chunk(%struct.mg_connection* %16, i8* getelementptr inbounds ([361 x i8], [361 x i8]* @.str.7, i64 0, i64 0), i32 %21, i32 %25, i8* %26, i8* %27, i32 %32, i32 %36)
  %38 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.mg_serve_http_opts*, %struct.mg_serve_http_opts** %8, align 8
  %41 = load i32, i32* @mg_print_dir_entry, align 4
  %42 = call i32 @mg_scan_directory(%struct.mg_connection* %38, i8* %39, %struct.mg_serve_http_opts* %40, i32 %41)
  %43 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %44 = load i32, i32* @mg_version_header, align 4
  %45 = call i32 (%struct.mg_connection*, i8*, i32, ...) @mg_printf_http_chunk(%struct.mg_connection* %43, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.8, i64 0, i64 0), i32 %44)
  %46 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %47 = call i32 @mg_send_http_chunk(%struct.mg_connection* %46, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %48 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %49 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %50 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  ret void
}

declare dso_local i32 @mg_send_response_line(%struct.mg_connection*, i32, i32) #1

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @mg_printf_http_chunk(%struct.mg_connection*, i8*, i32, ...) #1

declare dso_local i32 @mg_scan_directory(%struct.mg_connection*, i8*, %struct.mg_serve_http_opts*, i32) #1

declare dso_local i32 @mg_send_http_chunk(%struct.mg_connection*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
