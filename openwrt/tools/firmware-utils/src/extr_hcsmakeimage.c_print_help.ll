; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_hcsmakeimage.c_print_help.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_hcsmakeimage.c_print_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [65 x i8] c"Firmware image packer and calculator for broadcom-based modems.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Part of bcm-utils package.\0A\00", align 1
@.str.2 = private unnamed_addr constant [87 x i8] c"(c) 2009 Necromant (http://necromant.ath.cx). Thanks to Luke-jr for his initial work.\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"usage: %s [options]\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Valid options are:\0A\00", align 1
@.str.5 = private unnamed_addr constant [90 x i8] c"--magic_bytes=value \09- specify magic bytes at the beginning of the image. default - 3349\0A\00", align 1
@.str.6 = private unnamed_addr constant [142 x i8] c"\09\09\09 these can be sa2100 (for DPC2100 modem),\0A\09\09\09 sa3349 (haxorware guys use this one for some reason),\0A\09\09\09 or a custom hex value e.g. 0xFFFF\0A\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"--compress \09\09 - Make use of LZMA (weird!) compression (Doesn't work yet).\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"--rev_maj=value\09\09 - major revision number. default 0\0A\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"--rev_min=value\09\09 - minor revision number default 0\0A\00", align 1
@.str.10 = private unnamed_addr constant [85 x i8] c"--filename=value\09 - use this filename in header instead of default (input filename)\0A\00", align 1
@.str.11 = private unnamed_addr constant [83 x i8] c"--ldaddress=value\09 - hex value of the target load address. defaults to 0x80010000\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"--input_file=value\09 - What file are we packing?\0A\00", align 1
@.str.13 = private unnamed_addr constant [71 x i8] c"--output_file=value\09 - What file shall we write? (default: image.bin)\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @print_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_help(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0))
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %6)
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.5, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.6, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.7, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.10, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.11, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.13, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
