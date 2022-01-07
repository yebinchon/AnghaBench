; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_http_send_digest_auth_request.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_http_send_digest_auth_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }

@.str = private unnamed_addr constant [111 x i8] c"HTTP/1.1 401 Unauthorized\0D\0AWWW-Authenticate: Digest qop=\22auth\22, realm=\22%s\22, nonce=\22%lx\22\0D\0AContent-Length: 0\0D\0A\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_http_send_digest_auth_request(%struct.mg_connection* %0, i8* %1) #0 {
  %3 = alloca %struct.mg_connection*, align 8
  %4 = alloca i8*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.mg_connection*, %struct.mg_connection** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 (...) @mg_time()
  %8 = call i32 @mg_printf(%struct.mg_connection* %5, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str, i64 0, i64 0), i8* %6, i64 %7)
  ret void
}

declare dso_local i32 @mg_printf(%struct.mg_connection*, i8*, i8*, i64) #1

declare dso_local i64 @mg_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
