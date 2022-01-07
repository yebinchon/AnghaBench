; ModuleID = '/home/carl/AnghaBench/linux/tools/wmi/extr_dell-smbios-example.c_run_wmi_smbios_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/wmi/extr_dell-smbios-example.c_run_wmi_smbios_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dell_wmi_smbios_buffer = type { i32 }

@ioctl_devfs = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@DELL_WMI_SMBIOS_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dell_wmi_smbios_buffer*)* @run_wmi_smbios_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_wmi_smbios_cmd(%struct.dell_wmi_smbios_buffer* %0) #0 {
  %2 = alloca %struct.dell_wmi_smbios_buffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dell_wmi_smbios_buffer* %0, %struct.dell_wmi_smbios_buffer** %2, align 8
  %5 = load i32, i32* @ioctl_devfs, align 4
  %6 = load i32, i32* @O_NONBLOCK, align 4
  %7 = call i32 @open(i32 %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @DELL_WMI_SMBIOS_CMD, align 4
  %10 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %2, align 8
  %11 = call i32 @ioctl(i32 %8, i32 %9, %struct.dell_wmi_smbios_buffer* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @close(i32 %12)
  %14 = load i32, i32* %4, align 4
  ret i32 %14
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.dell_wmi_smbios_buffer*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
