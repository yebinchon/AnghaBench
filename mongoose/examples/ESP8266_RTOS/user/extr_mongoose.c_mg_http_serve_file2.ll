; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_http_serve_file2.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_http_serve_file2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.http_message = type { i32 }
%struct.mg_serve_http_opts = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i8*, %struct.http_message*, %struct.mg_serve_http_opts*)* @mg_http_serve_file2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mg_http_serve_file2(%struct.mg_connection* %0, i8* %1, %struct.http_message* %2, %struct.mg_serve_http_opts* %3) #0 {
  %5 = alloca %struct.mg_connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.http_message*, align 8
  %8 = alloca %struct.mg_serve_http_opts*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.http_message* %2, %struct.http_message** %7, align 8
  store %struct.mg_serve_http_opts* %3, %struct.mg_serve_http_opts** %8, align 8
  %9 = load %struct.mg_connection*, %struct.mg_connection** %5, align 8
  %10 = load %struct.http_message*, %struct.http_message** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.mg_serve_http_opts*, %struct.mg_serve_http_opts** %8, align 8
  %14 = call i32 @mg_get_mime_type(i8* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.mg_serve_http_opts* %13)
  %15 = load %struct.mg_serve_http_opts*, %struct.mg_serve_http_opts** %8, align 8
  %16 = getelementptr inbounds %struct.mg_serve_http_opts, %struct.mg_serve_http_opts* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mg_mk_str(i32 %17)
  %19 = call i32 @mg_http_serve_file(%struct.mg_connection* %9, %struct.http_message* %10, i8* %11, i32 %14, i32 %18)
  ret void
}

declare dso_local i32 @mg_http_serve_file(%struct.mg_connection*, %struct.http_message*, i8*, i32, i32) #1

declare dso_local i32 @mg_get_mime_type(i8*, i8*, %struct.mg_serve_http_opts*) #1

declare dso_local i32 @mg_mk_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
