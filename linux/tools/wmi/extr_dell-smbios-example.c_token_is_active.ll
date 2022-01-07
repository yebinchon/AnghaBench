; ModuleID = '/home/carl/AnghaBench/linux/tools/wmi/extr_dell-smbios-example.c_token_is_active.c'
source_filename = "/home/carl/AnghaBench/linux/tools/wmi/extr_dell-smbios-example.c_token_is_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dell_wmi_smbios_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i64*, i32, i32 }

@CLASS_TOKEN_READ = common dso_local global i32 0, align 4
@SELECT_TOKEN_STD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, %struct.dell_wmi_smbios_buffer*)* @token_is_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @token_is_active(i64* %0, i64* %1, %struct.dell_wmi_smbios_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.dell_wmi_smbios_buffer*, align 8
  %8 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.dell_wmi_smbios_buffer* %2, %struct.dell_wmi_smbios_buffer** %7, align 8
  %9 = load i32, i32* @CLASS_TOKEN_READ, align 4
  %10 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %7, align 8
  %11 = getelementptr inbounds %struct.dell_wmi_smbios_buffer, %struct.dell_wmi_smbios_buffer* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @SELECT_TOKEN_STD, align 4
  %14 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %7, align 8
  %15 = getelementptr inbounds %struct.dell_wmi_smbios_buffer, %struct.dell_wmi_smbios_buffer* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 8
  %17 = load i64*, i64** %5, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %7, align 8
  %20 = getelementptr inbounds %struct.dell_wmi_smbios_buffer, %struct.dell_wmi_smbios_buffer* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  store i64 %18, i64* %23, align 8
  %24 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %7, align 8
  %25 = call i32 @run_wmi_smbios_cmd(%struct.dell_wmi_smbios_buffer* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %3
  %29 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %7, align 8
  %30 = getelementptr inbounds %struct.dell_wmi_smbios_buffer, %struct.dell_wmi_smbios_buffer* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28, %3
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %50

38:                                               ; preds = %28
  %39 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %7, align 8
  %40 = getelementptr inbounds %struct.dell_wmi_smbios_buffer, %struct.dell_wmi_smbios_buffer* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %6, align 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %44, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %38, %36
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @run_wmi_smbios_cmd(%struct.dell_wmi_smbios_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
