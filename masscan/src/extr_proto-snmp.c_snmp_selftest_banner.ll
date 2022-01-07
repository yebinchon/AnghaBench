; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-snmp.c_snmp_selftest_banner.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-snmp.c_snmp_selftest_banner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BannerOutput = type { i32 }

@snmp_selftest_banner.snmp_response = internal constant [59 x i8] c"09\02\01\00\04\06public\A2,\02\01&\02\01\00\02\01\000!0\1F\06\09+\06\01\80\02\01\01\02\00\06\12+\06\01\04\01\8FQ\01\01\01\82)]\01\1B\02\02\01", align 16
@PROTO_SNMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"sysObjectID:okidata.1.1.1.297.93.1.27.2.2.1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @snmp_selftest_banner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snmp_selftest_banner() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.BannerOutput], align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  %6 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %3, i64 0, i64 0
  %7 = call i32 @banout_init(%struct.BannerOutput* %6)
  %8 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %3, i64 0, i64 0
  %9 = call i32 @snmp_parse(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @snmp_selftest_banner.snmp_response, i64 0, i64 0), i32 59, %struct.BannerOutput* %8, i32* %2)
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 38
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %28

13:                                               ; preds = %0
  %14 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %3, i64 0, i64 0
  %15 = load i32, i32* @PROTO_SNMP, align 4
  %16 = call i8* @banout_string(%struct.BannerOutput* %14, i32 %15)
  store i8* %16, i8** %4, align 8
  %17 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %3, i64 0, i64 0
  %18 = load i32, i32* @PROTO_SNMP, align 4
  %19 = call i64 @banout_string_length(%struct.BannerOutput* %17, i32 %18)
  store i64 %19, i64* %5, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @memcmp(i8* %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  store i32 1, i32* %1, align 4
  br label %28

25:                                               ; preds = %13
  %26 = getelementptr inbounds [1 x %struct.BannerOutput], [1 x %struct.BannerOutput]* %3, i64 0, i64 0
  %27 = call i32 @banout_release(%struct.BannerOutput* %26)
  store i32 0, i32* %1, align 4
  br label %28

28:                                               ; preds = %25, %24, %12
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @banout_init(%struct.BannerOutput*) #1

declare dso_local i32 @snmp_parse(i8*, i32, %struct.BannerOutput*, i32*) #1

declare dso_local i8* @banout_string(%struct.BannerOutput*, i32) #1

declare dso_local i64 @banout_string_length(%struct.BannerOutput*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @banout_release(%struct.BannerOutput*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
