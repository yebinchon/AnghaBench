; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_main.c_sapi_cgi_deactivate.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_main.c_sapi_cgi_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sapi_started = common dso_local global i32 0, align 4
@parent = common dso_local global i32 0, align 4
@server_context = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sapi_cgi_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sapi_cgi_deactivate() #0 {
  %1 = load i32, i32* @sapi_started, align 4
  %2 = call i64 @SG(i32 %1)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %16

4:                                                ; preds = %0
  %5 = load i32, i32* @parent, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = load i32, i32* @server_context, align 4
  %9 = call i64 @SG(i32 %8)
  %10 = inttoptr i64 %9 to i32*
  %11 = call i32 @fcgi_finish_request(i32* %10, i32 0)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = call i32 (...) @php_handle_aborted_connection()
  br label %15

15:                                               ; preds = %13, %7, %4
  br label %16

16:                                               ; preds = %15, %0
  %17 = load i32, i32* @SUCCESS, align 4
  ret i32 %17
}

declare dso_local i64 @SG(i32) #1

declare dso_local i32 @fcgi_finish_request(i32*, i32) #1

declare dso_local i32 @php_handle_aborted_connection(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
