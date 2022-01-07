; ModuleID = '/home/carl/AnghaBench/php-src/sapi/apache2handler/extr_sapi_apache2.c_php_ap2_register_hook.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/apache2handler/extr_sapi_apache2.c_php_ap2_register_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@php_pre_config = common dso_local global i32 0, align 4
@APR_HOOK_MIDDLE = common dso_local global i32 0, align 4
@php_apache_server_startup = common dso_local global i32 0, align 4
@php_handler = common dso_local global i32 0, align 4
@php_apache_child_init = common dso_local global i32 0, align 4
@php_apache_signal_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @php_ap2_register_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @php_pre_config, align 4
  %4 = load i32, i32* @APR_HOOK_MIDDLE, align 4
  %5 = call i32 @ap_hook_pre_config(i32 %3, i32* null, i32* null, i32 %4)
  %6 = load i32, i32* @php_apache_server_startup, align 4
  %7 = load i32, i32* @APR_HOOK_MIDDLE, align 4
  %8 = call i32 @ap_hook_post_config(i32 %6, i32* null, i32* null, i32 %7)
  %9 = load i32, i32* @php_handler, align 4
  %10 = load i32, i32* @APR_HOOK_MIDDLE, align 4
  %11 = call i32 @ap_hook_handler(i32 %9, i32* null, i32* null, i32 %10)
  %12 = load i32, i32* @php_apache_child_init, align 4
  %13 = load i32, i32* @APR_HOOK_MIDDLE, align 4
  %14 = call i32 @ap_hook_child_init(i32 %12, i32* null, i32* null, i32 %13)
  ret void
}

declare dso_local i32 @ap_hook_pre_config(i32, i32*, i32*, i32) #1

declare dso_local i32 @ap_hook_post_config(i32, i32*, i32*, i32) #1

declare dso_local i32 @ap_hook_handler(i32, i32*, i32*, i32) #1

declare dso_local i32 @ap_hook_child_init(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
