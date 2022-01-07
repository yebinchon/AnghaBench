; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/2/gcrisis/uart-boot/downloader/extr_raspiloader.c_open_serial.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson01/2/gcrisis/uart-boot/downloader/extr_raspiloader.c_open_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i64, i64, i64, i64* }

@O_RDWR = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fd=%d\0D\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"%s is not a tty\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to get attributes of device\00", align 1
@VTIME = common dso_local global i64 0, align 8
@VMIN = common dso_local global i64 0, align 8
@CS8 = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@B115200 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed to set baud-rate\00", align 1
@TCSAFLUSH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"tcsetattr()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @open_serial(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.termios, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @O_RDWR, align 4
  %8 = load i32, i32* @O_NOCTTY, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @open(i8* %6, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %78

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @isatty(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @stderr, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @EXIT_FAILURE, align 4
  %26 = call i32 @do_exit(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %20, %16
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @tcgetattr(i32 %28, %struct.termios* %4)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = call i32 @perror(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @EXIT_FAILURE, align 4
  %35 = call i32 @do_exit(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %27
  %37 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 4
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @VTIME, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 4
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @VMIN, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  store i64 0, i64* %44, align 8
  %45 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @CS8, align 4
  %48 = load i32, i32* @CREAD, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @CLOCAL, align 4
  %51 = or i32 %49, %50
  %52 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.termios, %struct.termios* %4, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* @B115200, align 4
  %55 = call i64 @cfsetispeed(%struct.termios* %4, i32 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %36
  %58 = load i32, i32* @B115200, align 4
  %59 = call i64 @cfsetospeed(%struct.termios* %4, i32 %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57, %36
  %62 = call i32 @perror(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @EXIT_FAILURE, align 4
  %65 = call i32 @do_exit(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %57
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @TCSAFLUSH, align 4
  %69 = call i32 @tcsetattr(i32 %67, i32 %68, %struct.termios* %4)
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @EXIT_FAILURE, align 4
  %75 = call i32 @do_exit(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %71, %66
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %15
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @do_exit(i32, i32) #1

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @cfsetispeed(%struct.termios*, i32) #1

declare dso_local i64 @cfsetospeed(%struct.termios*, i32) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
