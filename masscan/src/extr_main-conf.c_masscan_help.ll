; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_masscan_help.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_masscan_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1306 x i8] c"MASSCAN is a fast port scanner. The primary input parameters are the\0AIP addresses/ranges you want to scan, and the port numbers. An example\0Ais the following, which scans the 10.x.x.x network for web servers:\0A masscan 10.0.0.0/8 -p80\0AThe program auto-detects network interface/adapter settings. If this\0Afails, you'll have to set these manually. The following is an\0Aexample of all the parameters that are needed:\0A --adapter-ip 192.168.10.123\0A --adapter-mac 00-11-22-33-44-55\0A --router-mac 66-55-44-33-22-11\0AParameters can be set either via the command-line or config-file. The\0Anames are the same for both. Thus, the above adapter settings would\0Aappear as follows in a configuration file:\0A adapter-ip = 192.168.10.123\0A adapter-mac = 00-11-22-33-44-55\0A router-mac = 66-55-44-33-22-11\0AAll single-dash parameters have a spelled out double-dash equivalent,\0Aso '-p80' is the same as '--ports 80' (or 'ports = 80' in config file).\0ATo use the config file, type:\0A masscan -c <filename>\0ATo generate a config-file from the current settings, use the --echo\0Aoption. This stops the program from actually running, and just echoes\0Athe current configuration instead. This is a useful way to generate\0Ayour first config file, or see a list of parameters you didn't know\0Aabout. I suggest you try it now:\0A masscan -p1234 --echo\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @masscan_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @masscan_help() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([1306 x i8], [1306 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
