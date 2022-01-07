; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mktplinkfw2.c_usage.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mktplinkfw2.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.board_info = type { i32 }

@EXIT_SUCCESS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Usage: %s [OPTIONS...]\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1387 x i8] c"\0AOptions:\0A  -c              use combined kernel image\0A  -e              swap endianness in kernel load address and entry point\0A  -E <ep>         overwrite kernel entry point with <ep> (hexval prefixed with 0x)\0A  -L <la>         overwrite kernel load address with <la> (hexval prefixed with 0x)\0A  -H <hwid>       use hardware id specified with <hwid>\0A  -W <hwrev>      use hardware revision specified with <hwrev>\0A  -w <hwveradd>   use additional hardware version specified with <hwveradd>\0A  -F <id>         use flash layout specified with <id>\0A  -k <file>       read kernel image from the file <file>\0A  -r <file>       read rootfs image from the file <file>\0A  -a <align>      align the rootfs start on an <align> bytes boundary\0A  -R <offset>     overwrite rootfs offset with <offset> (hexval prefixed with 0x)\0A  -o <file>       write output to the file <file>\0A  -s              strip padding from the end of the image\0A  -j              add jffs2 end-of-filesystem markers\0A  -N <vendor>     set image vendor to <vendor>\0A  -T <version>    set header version to <version>\0A  -V <version>    set image version to <version>\0A  -v <version>    set firmware version to <version>\0A  -y <version>    set secondary version to <version>\0A  -i <file>       inspect given firmware file <file>\0A  -x              extract kernel and rootfs while inspecting (requires -i)\0A  -h              show this screen\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.board_info*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @EXIT_SUCCESS, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32*, i32** @stderr, align 8
  br label %12

10:                                               ; preds = %1
  %11 = load i32*, i32** @stdout, align 8
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32* [ %9, %8 ], [ %11, %10 ]
  store i32* %13, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load i8*, i8** @progname, align 8
  %16 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 (i32*, i8*, ...) @fprintf(i32* %17, i8* getelementptr inbounds ([1387 x i8], [1387 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @exit(i32 %19) #3
  unreachable
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

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
