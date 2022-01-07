; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_print_nmap_help.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_print_nmap_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2703 x i8] c"Masscan (https://github.com/robertdavidgraham/masscan)\0AUsage: masscan [Options] -p{Target-Ports} {Target-IP-Ranges}\0ATARGET SPECIFICATION:\0A  Can pass only IPv4 address, CIDR networks, or ranges (non-nmap style)\0A  Ex: 10.0.0.0/8, 192.168.0.1, 10.0.0.1-10.0.0.254\0A  -iL <inputfilename>: Input from list of hosts/networks\0A  --exclude <host1[,host2][,host3],...>: Exclude hosts/networks\0A  --excludefile <exclude_file>: Exclude list from file\0A  --randomize-hosts: Randomize order of hosts (default)\0AHOST DISCOVERY:\0A  -Pn: Treat all hosts as online (default)\0A  -n: Never do DNS resolution (default)\0ASCAN TECHNIQUES:\0A  -sS: TCP SYN (always on, default)\0ASERVICE/VERSION DETECTION:\0A  --banners: get the banners of the listening service if available. The\0A    default timeout for waiting to recieve data is 30 seconds.\0APORT SPECIFICATION AND SCAN ORDER:\0A  -p <port ranges>: Only scan specified ports\0A    Ex: -p22; -p1-65535; -p 111,137,80,139,8080\0ATIMING AND PERFORMANCE:\0A  --max-rate <number>: Send packets no faster than <number> per second\0A  --connection-timeout <number>: time in seconds a TCP connection will\0A    timeout while waiting for banner data from a port.\0AFIREWALL/IDS EVASION AND SPOOFING:\0A  -S/--source-ip <IP_Address>: Spoof source address\0A  -e <iface>: Use specified interface\0A  -g/--source-port <portnum>: Use given port number\0A  --ttl <val>: Set IP time-to-live field\0A  --spoof-mac <mac address/prefix/vendor name>: Spoof your MAC address\0AOUTPUT:\0A  --output-format <format>: Sets output to binary/list/unicornscan/json/ndjson/grepable/xml\0A  --output-file <file>: Write scan results to file. If --output-format is\0A     not given default is xml\0A  -oL/-oJ/-oD/-oG/-oB/-oX/-oU <file>: Output scan in List/JSON/nDjson/Grepable/Binary/XML/Unicornscan format,\0A     respectively, to the given filename. Shortcut for\0A     --output-format <format> --output-file <file>\0A  -v: Increase verbosity level (use -vv or more for greater effect)\0A  -d: Increase debugging level (use -dd or more for greater effect)\0A  --open: Only show open (or possibly open) ports\0A  --packet-trace: Show all packets sent and received\0A  --iflist: Print host interfaces and routes (for debugging)\0A  --append-output: Append to rather than clobber specified output files\0A  --resume <filename>: Resume an aborted scan\0AMISC:\0A  --send-eth: Send using raw ethernet frames (default)\0A  -V: Print version number\0A  -h: Print this help summary page.\0AEXAMPLES:\0A  masscan -v -sS 192.168.0.0/16 10.0.0.0/8 -p 80\0A  masscan 23.0.0.0/0 -p80 --banners -output-format binary --output-filename internet.scan\0A  masscan --open --banners --readscan internet.scan -oG internet_scan.grepable\0ASEE (https://github.com/robertdavidgraham/masscan) FOR MORE HELP\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_nmap_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_nmap_help() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([2703 x i8], [2703 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
