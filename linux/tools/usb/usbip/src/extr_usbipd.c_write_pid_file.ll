; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbipd.c_write_pid_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbipd.c_write_pid_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pid_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"creating pid file %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"pid_file: %s: %d (%s)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_pid_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_pid_file() #0 {
  %1 = alloca i32*, align 8
  %2 = load i64, i64* @pid_file, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %23

4:                                                ; preds = %0
  %5 = load i64, i64* @pid_file, align 8
  %6 = call i32 @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %5)
  %7 = load i64, i64* @pid_file, align 8
  %8 = call i32* @fopen(i64 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %8, i32** %1, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %4
  %12 = load i64, i64* @pid_file, align 8
  %13 = load i32, i32* @errno, align 4
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 @strerror(i32 %14)
  %16 = call i32 @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %12, i32 %13, i32 %15)
  br label %23

17:                                               ; preds = %4
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 (...) @getpid()
  %20 = call i32 @fprintf(i32* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @fclose(i32* %21)
  br label %23

23:                                               ; preds = %11, %17, %0
  ret void
}

declare dso_local i32 @dbg(i8*, i64) #1

declare dso_local i32* @fopen(i64, i8*) #1

declare dso_local i32 @err(i8*, i64, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
