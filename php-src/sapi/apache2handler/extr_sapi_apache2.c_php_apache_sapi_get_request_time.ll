; ModuleID = '/home/carl/AnghaBench/php-src/sapi/apache2handler/extr_sapi_apache2.c_php_apache_sapi_get_request_time.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/apache2handler/extr_sapi_apache2.c_php_apache_sapi_get_request_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@server_context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double ()* @php_apache_sapi_get_request_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @php_apache_sapi_get_request_time() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load i32, i32* @server_context, align 4
  %3 = call %struct.TYPE_5__* @SG(i32 %2)
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %1, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @apr_time_as_msec(i32 %8)
  %10 = sitofp i64 %9 to double
  %11 = fdiv double %10, 1.000000e+03
  ret double %11
}

declare dso_local %struct.TYPE_5__* @SG(i32) #1

declare dso_local i64 @apr_time_as_msec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
