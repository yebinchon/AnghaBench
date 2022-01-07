; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_interactive.c_BlockDNSErrHandler.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_interactive.c_BlockDNSErrHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"Unknown Win32 Error\00", align 1
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_ARGUMENT_ARRAY = common dso_local global i32 0, align 4
@M_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%s (status = %lu): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @BlockDNSErrHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BlockDNSErrHandler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [256 x i32], align 16
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %29

10:                                               ; preds = %2
  %11 = call i32* @TEXT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %6, align 8
  %12 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %13 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @FORMAT_MESSAGE_ARGUMENT_ARRAY, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %3, align 4
  %18 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  %19 = call i64 @FormatMessage(i32 %16, i32* null, i32 %17, i32 0, i32* %18, i32 1024, i32* null)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %10
  %22 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 0
  store i32* %22, i32** %6, align 8
  br label %23

23:                                               ; preds = %21, %10
  %24 = load i32, i32* @M_ERR, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @MsgToEventLog(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %25, i32 %26, i32* %27)
  br label %29

29:                                               ; preds = %23, %9
  ret void
}

declare dso_local i32* @TEXT(i8*) #1

declare dso_local i64 @FormatMessage(i32, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @MsgToEventLog(i32, i8*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
