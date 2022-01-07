; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapi_main.c_cli_usage.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapi_main.c_cli_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cli_usage.usage = internal global i8* getelementptr inbounds ([602 x i8], [602 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [602 x i8] c"Usage: php\0A      php -[b|c|n|h|i|q|s|v|?] [<file>] [args...]\0A  Run in LSAPI mode, only '-b', '-s' and '-c' are effective\0A  Run in Command Line Interpreter mode when parameters are specified\0A\0A  -b <address:port>|<port> Bind Path for external LSAPI Server mode\0A  -c <path>|<file> Look for php.ini file in this directory\0A  -n    No php.ini file will be used\0A  -h    This help\0A  -i    PHP information\0A  -l    Syntax check\0A  -q    Quiet-mode.  Suppress HTTP Header output.\0A  -s    Display colour syntax highlighted source.\0A  -v    Version number\0A  -?    This help\0A\0A  args...    Arguments passed to script.\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cli_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cli_usage() #0 {
  %1 = call i32 (...) @php_output_startup()
  %2 = call i32 (...) @php_output_activate()
  %3 = load i8*, i8** @cli_usage.usage, align 8
  %4 = call i32 @php_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %3)
  %5 = call i32 @php_end_ob_buffers(i32 1)
  ret void
}

declare dso_local i32 @php_output_startup(...) #1

declare dso_local i32 @php_output_activate(...) #1

declare dso_local i32 @php_printf(i8*, i8*) #1

declare dso_local i32 @php_end_ob_buffers(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
