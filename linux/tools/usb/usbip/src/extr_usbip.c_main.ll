; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/src/extr_usbip.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32*, i32 }
%struct.TYPE_3__ = type { i32* }

@main.opts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8 -127, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8 -127, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8 -128, i32* null, i32 116 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"tcp-port\00", align 1
@usbip_use_stderr = common dso_local global i32 0, align 4
@opterr = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"+dlt:\00", align 1
@usbip_use_debug = common dso_local global i32 0, align 4
@usbip_use_syslog = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LOG_PID = common dso_local global i32 0, align 4
@LOG_USER = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"usbip: invalid option\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@cmds = common dso_local global %struct.TYPE_3__* null, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %9, align 4
  store i32 1, i32* @usbip_use_stderr, align 4
  store i64 0, i64* @opterr, align 8
  br label %10

10:                                               ; preds = %31, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt_long(i32 %11, i8** %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @main.opts, i64 0, i64 0), i32* null)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %32

17:                                               ; preds = %10
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %29 [
    i32 100, label %19
    i32 108, label %20
    i32 116, label %24
    i32 63, label %27
  ]

19:                                               ; preds = %17
  store i32 1, i32* @usbip_use_debug, align 4
  br label %31

20:                                               ; preds = %17
  store i32 1, i32* @usbip_use_syslog, align 4
  %21 = load i32, i32* @LOG_PID, align 4
  %22 = load i32, i32* @LOG_USER, align 4
  %23 = call i32 @openlog(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 %21, i32 %22)
  br label %31

24:                                               ; preds = %17
  %25 = load i32, i32* @optarg, align 4
  %26 = call i32 @usbip_setup_port_number(i32 %25)
  br label %31

27:                                               ; preds = %17
  %28 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %29

29:                                               ; preds = %17, %27
  %30 = call i32 (...) @usbip_usage()
  br label %81

31:                                               ; preds = %24, %20, %19
  br label %10

32:                                               ; preds = %16
  %33 = load i8**, i8*** %5, align 8
  %34 = load i64, i64* @optind, align 8
  %35 = getelementptr inbounds i8*, i8** %33, i64 %34
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %79

39:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %75, %39
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmds, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %78

48:                                               ; preds = %40
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmds, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @strcmp(i32* %54, i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %48
  %59 = load i64, i64* @optind, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %4, align 4
  %64 = load i64, i64* @optind, align 8
  %65 = load i8**, i8*** %5, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 %64
  store i8** %66, i8*** %5, align 8
  store i64 0, i64* @optind, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmds, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = load i32, i32* %4, align 4
  %72 = load i8**, i8*** %5, align 8
  %73 = call i32 @run_command(%struct.TYPE_3__* %70, i32 %71, i8** %72)
  store i32 %73, i32* %9, align 4
  br label %81

74:                                               ; preds = %48
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %40

78:                                               ; preds = %40
  br label %79

79:                                               ; preds = %78, %32
  %80 = call i32 @usbip_help(i32 0, i32* null)
  br label %81

81:                                               ; preds = %79, %58, %29
  %82 = load i32, i32* %9, align 4
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @EXIT_FAILURE, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  ret i32 %89
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i32 @usbip_setup_port_number(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @usbip_usage(...) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i32 @run_command(%struct.TYPE_3__*, i32, i8**) #1

declare dso_local i32 @usbip_help(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
