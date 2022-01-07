; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_rabin2.c_rabin_show_help.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_rabin2.c_rabin_show_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [223 x i8] c"Usage: rabin2 [-AcdeEghHiIjlLMqrRsSUvVxzZ] [-@ at] [-a arch] [-b bits] [-B addr]\0A              [-C F:C:D] [-f str] [-m addr] [-n str] [-N m:M] [-P[-P] pdb]\0A              [-o str] [-O str] [-k query] [-D lang symname] file\0A\00", align 1
@.str.1 = private unnamed_addr constant [2710 x i8] c" -@ [addr]       show section, symbol or import at addr\0A -A              list sub-binaries and their arch-bits pairs\0A -a [arch]       set arch (x86, arm, .. or <arch>_<bits>)\0A -b [bits]       set bits (32, 64 ...)\0A -B [addr]       override base address (pie bins)\0A -c              list classes\0A -cc             list classes in header format\0A -C [fmt:C:D]    create [elf,mach0,pe] with Code and Data hexpairs (see -a)\0A -d              show debug/dwarf information\0A -D lang name    demangle symbol name (-D all for bin.demangle=true)\0A -e              entrypoint\0A -ee             constructor/destructor entrypoints\0A -E              globally exportable symbols\0A -f [str]        select sub-bin named str\0A -F [binfmt]     force to use that bin plugin (ignore header check)\0A -g              same as -SMZIHVResizcld -SS -ee (show all info)\0A -G [addr]       load address . offset to header\0A -h              this help message\0A -H              header fields\0A -i              imports (symbols imported from libraries)\0A -I              binary info\0A -j              output in json\0A -k [sdb-query]  run sdb query. for example: '*'\0A -K [algo]       calculate checksums (md5, sha1, ..)\0A -l              linked libraries\0A -L [plugin]     list supported bin plugins or plugin details\0A -m [addr]       show source line at addr\0A -M              main (show address of main symbol)\0A -n [str]        show section, symbol or import named str\0A -N [min:max]    force min:max number of chars per string (see -z and -zz)\0A -o [str]        output file/folder for write operations (out by default)\0A -O [str]        write/extract operations (-O help)\0A -p              show physical addresses\0A -P              show debug/pdb information\0A -PP             download pdb file for binary\0A -q              be quiet, just show fewer data\0A -qq             show less info (no offset/size for -z for ex.)\0A -Q              show load address used by dlopen (non-aslr libs)\0A -r              radare output\0A -R              relocations\0A -s              symbols\0A -S              sections\0A -SS             segments\0A -t              display file hashes\0A -T              display file signature\0A -u              unfiltered (no rename duplicated symbols/sections)\0A -U              resoUrces\0A -v              display version and quit\0A -V              Show binary version information\0A -w              display try/catch blocks\0A -x              extract bins contained in file\0A -X [fmt] [f] .. package in fat or zip the given files and bins contained in file\0A -z              strings (from data section)\0A -zz             strings (from raw bins [e bin.rawstr=1])\0A -zzz            dump raw strings to stdout (for huge files)\0A -Z              guess size of binary program\0A\00", align 1
@.str.2 = private unnamed_addr constant [790 x i8] c"Environment:\0A RABIN2_LANG:      e bin.lang         # assume lang for demangling\0A RABIN2_NOPLUGINS: # do not load shared plugins (speedup loading)\0A RABIN2_DEMANGLE=0:e bin.demangle     # do not demangle symbols\0A RABIN2_MAXSTRBUF: e bin.maxstrbuf    # specify maximum buffer size\0A RABIN2_STRFILTER: e bin.str.filter   #  r2 -qc 'e bin.str.filter=??' -\0A RABIN2_STRPURGE:  e bin.str.purge    # try to purge false positives\0A RABIN2_DEBASE64:  e bin.debase64     # try to debase64 all strings\0A RABIN2_DMNGLRCMD: e bin.demanglercmd # try to purge false positives\0A RABIN2_PDBSERVER: e pdb.server       # use alternative PDB server\0A RABIN2_SYMSTORE:  e pdb.symstore     # path to downstream symbol store\0A RABIN2_PREFIX:    e bin.prefix       # prefix symbols/sections/relocs with a specific string\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rabin_show_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rabin_show_help(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @printf(i8* getelementptr inbounds ([223 x i8], [223 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @printf(i8* getelementptr inbounds ([2710 x i8], [2710 x i8]* @.str.1, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 @printf(i8* getelementptr inbounds ([790 x i8], [790 x i8]* @.str.2, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %8
  ret i32 1
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
