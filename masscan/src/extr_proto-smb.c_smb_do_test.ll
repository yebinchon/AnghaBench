; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-smb.c_smb_do_test.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-smb.c_smb_do_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Banner1 = type { i32 }
%struct.ProtocolState = type { i32 }
%struct.BannerOutput = type { i32 }
%struct.InteractiveData = type { i32 }

@PROTO_SMB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"smb parser failure: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @smb_do_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_do_test(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.Banner1*, align 8
  %8 = alloca [1 x %struct.ProtocolState], align 4
  %9 = alloca [1 x %struct.BannerOutput], align 4
  %10 = alloca %struct.InteractiveData, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = call %struct.Banner1* (...) @banner1_create()
  store %struct.Banner1* %12, %struct.Banner1** %7, align 8
  %13 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %9, i64 0, i64 0
  %14 = call i32 @banout_init(%struct.BannerOutput* %13)
  %15 = getelementptr inbounds [1 x %struct.ProtocolState], [1 x %struct.ProtocolState]* %8, i64 0, i64 0
  %16 = call i32 @memset(%struct.ProtocolState* %15, i32 0, i32 4)
  %17 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %18 = getelementptr inbounds [1 x %struct.ProtocolState], [1 x %struct.ProtocolState]* %8, i64 0, i64 0
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %9, i64 0, i64 0
  %22 = call i32 @smb_parse_record(%struct.Banner1* %17, i32 0, %struct.ProtocolState* %18, i8* %19, i64 %20, %struct.BannerOutput* %21, %struct.InteractiveData* %10)
  %23 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %9, i64 0, i64 0
  %24 = load i32, i32* @PROTO_SMB, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @banout_is_contains(%struct.BannerOutput* %23, i32 %24, i8* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %29, %3
  %33 = load %struct.Banner1*, %struct.Banner1** %7, align 8
  %34 = call i32 @banner1_destroy(%struct.Banner1* %33)
  %35 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %9, i64 0, i64 0
  %36 = call i32 @banout_release(%struct.BannerOutput* %35)
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 0, i32 1
  ret i32 %40
}

declare dso_local %struct.Banner1* @banner1_create(...) #1

declare dso_local i32 @banout_init(%struct.BannerOutput*) #1

declare dso_local i32 @memset(%struct.ProtocolState*, i32, i32) #1

declare dso_local i32 @smb_parse_record(%struct.Banner1*, i32, %struct.ProtocolState*, i8*, i64, %struct.BannerOutput*, %struct.InteractiveData*) #1

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
