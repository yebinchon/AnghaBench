; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-tcp-telnet.c_telnet_selftest_item.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-tcp-telnet.c_telnet_selftest_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Banner1 = type { i32 }
%struct.ProtocolState = type { i32 }
%struct.BannerOutput = type { i32 }
%struct.InteractiveData = type { i32 }

@PROTO_TELNET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"telnet parser failure: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @telnet_selftest_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telnet_selftest_item(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.Banner1*, align 8
  %6 = alloca [1 x %struct.ProtocolState], align 4
  %7 = alloca [1 x %struct.BannerOutput], align 4
  %8 = alloca %struct.InteractiveData, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = call %struct.Banner1* (...) @banner1_create()
  store %struct.Banner1* %10, %struct.Banner1** %5, align 8
  %11 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %7, i64 0, i64 0
  %12 = call i32 @banout_init(%struct.BannerOutput* %11)
  %13 = getelementptr inbounds [1 x %struct.ProtocolState], [1 x %struct.ProtocolState]* %6, i64 0, i64 0
  %14 = call i32 @memset(%struct.ProtocolState* %13, i32 0, i32 4)
  %15 = load %struct.Banner1*, %struct.Banner1** %5, align 8
  %16 = getelementptr inbounds [1 x %struct.ProtocolState], [1 x %struct.ProtocolState]* %6, i64 0, i64 0
  %17 = load i8*, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %7, i64 0, i64 0
  %21 = call i32 @telnet_parse(%struct.Banner1* %15, i32 0, %struct.ProtocolState* %16, i8* %17, i32 %19, %struct.BannerOutput* %20, %struct.InteractiveData* %8)
  %22 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %7, i64 0, i64 0
  %23 = load i32, i32* @PROTO_TELNET, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @banout_is_contains(%struct.BannerOutput* %22, i32 %23, i8* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %2
  %32 = load %struct.Banner1*, %struct.Banner1** %5, align 8
  %33 = call i32 @banner1_destroy(%struct.Banner1* %32)
  %34 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %7, i64 0, i64 0
  %35 = call i32 @banout_release(%struct.BannerOutput* %34)
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  ret i32 %39
}

declare dso_local %struct.Banner1* @banner1_create(...) #1

declare dso_local i32 @banout_init(%struct.BannerOutput*) #1

declare dso_local i32 @memset(%struct.ProtocolState*, i32, i32) #1

declare dso_local i32 @telnet_parse(%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i32, %struct.BannerOutput*, %struct.InteractiveData*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @banout_is_contains(%struct.BannerOutput*, i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @banner1_destroy(%struct.Banner1*) #1

declare dso_local i32 @banout_release(%struct.BannerOutput*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
