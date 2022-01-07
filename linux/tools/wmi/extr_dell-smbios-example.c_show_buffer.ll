; ModuleID = '/home/carl/AnghaBench/linux/tools/wmi/extr_dell-smbios-example.c_show_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/wmi/extr_dell-smbios-example.c_show_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dell_wmi_smbios_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [54 x i8] c"Call: %x/%x [%x,%x,%x,%x]\0AResults: [%8x,%8x,%8x,%8x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dell_wmi_smbios_buffer*)* @show_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_buffer(%struct.dell_wmi_smbios_buffer* %0) #0 {
  %2 = alloca %struct.dell_wmi_smbios_buffer*, align 8
  store %struct.dell_wmi_smbios_buffer* %0, %struct.dell_wmi_smbios_buffer** %2, align 8
  %3 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %2, align 8
  %4 = getelementptr inbounds %struct.dell_wmi_smbios_buffer, %struct.dell_wmi_smbios_buffer* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %2, align 8
  %8 = getelementptr inbounds %struct.dell_wmi_smbios_buffer, %struct.dell_wmi_smbios_buffer* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %2, align 8
  %12 = getelementptr inbounds %struct.dell_wmi_smbios_buffer, %struct.dell_wmi_smbios_buffer* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %2, align 8
  %18 = getelementptr inbounds %struct.dell_wmi_smbios_buffer, %struct.dell_wmi_smbios_buffer* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %2, align 8
  %24 = getelementptr inbounds %struct.dell_wmi_smbios_buffer, %struct.dell_wmi_smbios_buffer* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %2, align 8
  %30 = getelementptr inbounds %struct.dell_wmi_smbios_buffer, %struct.dell_wmi_smbios_buffer* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %2, align 8
  %36 = getelementptr inbounds %struct.dell_wmi_smbios_buffer, %struct.dell_wmi_smbios_buffer* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %2, align 8
  %42 = getelementptr inbounds %struct.dell_wmi_smbios_buffer, %struct.dell_wmi_smbios_buffer* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %2, align 8
  %48 = getelementptr inbounds %struct.dell_wmi_smbios_buffer, %struct.dell_wmi_smbios_buffer* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %2, align 8
  %54 = getelementptr inbounds %struct.dell_wmi_smbios_buffer, %struct.dell_wmi_smbios_buffer* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %10, i32 %16, i32 %22, i32 %28, i32 %34, i32 %40, i32 %46, i32 %52, i32 %58)
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
