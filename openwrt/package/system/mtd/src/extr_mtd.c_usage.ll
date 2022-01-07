; ModuleID = '/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_mtd.c_usage.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_mtd.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [573 x i8] c"Usage: mtd [<options> ...] <command> [<arguments> ...] <device>[:<device>...]\0A\0AThe device is in the format of mtdX (eg: mtd4) or its label.\0Amtd recognizes these commands:\0A        unlock                  unlock the device\0A        refresh                 refresh mtd partition\0A        erase                   erase all data on device\0A        verify <imagefile>|-    verify <imagefile> (use - for stdin) to device\0A        write <imagefile>|-     write <imagefile> (use - for stdin) to device\0A        jffs2write <file>       append <file> to the jffs2 partition on the device\0A\00", align 1
@mtd_resetbc = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"        resetbc <device>        reset the uboot boot counter\0A\00", align 1
@mtd_fixtrx = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [80 x i8] c"        fixtrx                  fix the checksum in a trx header on first boot\0A\00", align 1
@mtd_fixseama = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [82 x i8] c"        fixseama                fix the checksum in a seama header on first boot\0A\00", align 1
@mtd_fixwrg = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [80 x i8] c"        fixwrg                  fix the checksum in a wrg header on first boot\0A\00", align 1
@mtd_fixwrgg = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [81 x i8] c"        fixwrgg                 fix the checksum in a wrgg header on first boot\0A\00", align 1
@.str.6 = private unnamed_addr constant [864 x i8] c"Following options are available:\0A        -q                      quiet mode (once: no [w] on writing,\0A                                           twice: no status messages)\0A        -n                      write without first erasing the blocks\0A        -r                      reboot after successful command\0A        -f                      force write without trx checks\0A        -e <device>             erase <device> before executing the command\0A        -d <name>               directory for jffs2write, defaults to \22tmp\22\0A        -j <name>               integrate <file> into jffs2 data when writing an image\0A        -s <number>             skip the first n bytes when appending data to the jffs2 partiton, defaults to \220\22\0A        -p <number>             write beginning at partition offset\0A        -l <length>             the length of data that we want to dump\0A\00", align 1
@.str.7 = private unnamed_addr constant [89 x i8] c"        -o offset               offset of the image header in the partition(for fixtrx)\0A\00", align 1
@.str.8 = private unnamed_addr constant [127 x i8] c"        -c datasize             amount of data to be used for checksum calculation (for fixtrx / fixseama / fixwrg / fixwrgg)\0A\00", align 1
@mtd_tpl_recoverflag_write = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [88 x i8] c"        -t <partition>          write TP-Link recovery-flag to <partition> (for write)\0A\00", align 1
@.str.10 = private unnamed_addr constant [116 x i8] c"\0AExample: To write linux.trx to mtd4 labeled as linux and reboot afterwards\0A         mtd -r write linux.trx linux\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([573 x i8], [573 x i8]* @.str, i64 0, i64 0))
  %3 = load i64, i64* @mtd_resetbc, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i64, i64* @mtd_fixtrx, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i64, i64* @mtd_fixseama, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i64, i64* @mtd_fixwrg, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i64, i64* @mtd_fixwrgg, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([864 x i8], [864 x i8]* @.str.6, i64 0, i64 0))
  %35 = load i64, i64* @mtd_fixtrx, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.7, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i64, i64* @mtd_fixtrx, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* @mtd_fixseama, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* @mtd_fixwrg, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i64, i64* @mtd_fixwrgg, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49, %46, %43, %40
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.8, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i64, i64* @mtd_tpl_recoverflag_write, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* @stderr, align 4
  %60 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.9, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* @stderr, align 4
  %63 = call i32 @fprintf(i32 %62, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.10, i64 0, i64 0))
  %64 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*) #1

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
