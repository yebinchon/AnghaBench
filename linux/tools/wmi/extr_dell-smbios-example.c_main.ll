; ModuleID = '/home/carl/AnghaBench/linux/tools/wmi/extr_dell-smbios-example.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/wmi/extr_dell-smbios-example.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dell_wmi_smbios_buffer = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32*, i32, i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unable to read buffer size\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Detected required buffer size %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to alloc memory for ioctl\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CLASS_FLASH_INTERFACE = common dso_local global i32 0, align 4
@SELECT_FLASH_INTERFACE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"smbios ioctl failed: %d\0A\00", align 1
@CAPSULE_EN_TOKEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"UEFI Capsule enabled token is: %d\0A\00", align 1
@CAPSULE_DIS_TOKEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"UEFI Capsule disabled token is: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Enabling UEFI capsule token\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"activate failed\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.dell_wmi_smbios_buffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 0, i64* %4, align 8
  %5 = call i32 @query_buffer_size(i64* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @EXIT_FAILURE, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9, %0
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %76

14:                                               ; preds = %9
  %15 = load i64, i64* %4, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  %17 = load i64, i64* %4, align 8
  %18 = call %struct.dell_wmi_smbios_buffer* @malloc(i64 %17)
  store %struct.dell_wmi_smbios_buffer* %18, %struct.dell_wmi_smbios_buffer** %2, align 8
  %19 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %2, align 8
  %20 = icmp eq %struct.dell_wmi_smbios_buffer* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %76

25:                                               ; preds = %14
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %2, align 8
  %28 = getelementptr inbounds %struct.dell_wmi_smbios_buffer, %struct.dell_wmi_smbios_buffer* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* @CLASS_FLASH_INTERFACE, align 4
  %30 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %2, align 8
  %31 = getelementptr inbounds %struct.dell_wmi_smbios_buffer, %struct.dell_wmi_smbios_buffer* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @SELECT_FLASH_INTERFACE, align 4
  %34 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %2, align 8
  %35 = getelementptr inbounds %struct.dell_wmi_smbios_buffer, %struct.dell_wmi_smbios_buffer* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  %37 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %2, align 8
  %38 = getelementptr inbounds %struct.dell_wmi_smbios_buffer, %struct.dell_wmi_smbios_buffer* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 2, i32* %41, align 4
  %42 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %2, align 8
  %43 = call i32 @run_wmi_smbios_cmd(%struct.dell_wmi_smbios_buffer* %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %25
  %47 = load i32, i32* %3, align 4
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %49, i32* %3, align 4
  br label %76

50:                                               ; preds = %25
  %51 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %2, align 8
  %52 = call i32 @show_buffer(%struct.dell_wmi_smbios_buffer* %51)
  %53 = load i32, i32* @CAPSULE_EN_TOKEN, align 4
  %54 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %2, align 8
  %55 = call i32 @query_token(i32 %53, %struct.dell_wmi_smbios_buffer* %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @CAPSULE_DIS_TOKEN, align 4
  %59 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %2, align 8
  %60 = call i32 @query_token(i32 %58, %struct.dell_wmi_smbios_buffer* %59)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %50
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %67 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %2, align 8
  %68 = load i32, i32* @CAPSULE_EN_TOKEN, align 4
  %69 = call i64 @activate_token(%struct.dell_wmi_smbios_buffer* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %76

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %50
  %75 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %71, %46, %21, %12
  %77 = load %struct.dell_wmi_smbios_buffer*, %struct.dell_wmi_smbios_buffer** %2, align 8
  %78 = call i32 @free(%struct.dell_wmi_smbios_buffer* %77)
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @query_buffer_size(i64*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.dell_wmi_smbios_buffer* @malloc(i64) #1

declare dso_local i32 @run_wmi_smbios_cmd(%struct.dell_wmi_smbios_buffer*) #1

declare dso_local i32 @show_buffer(%struct.dell_wmi_smbios_buffer*) #1

declare dso_local i32 @query_token(i32, %struct.dell_wmi_smbios_buffer*) #1

declare dso_local i64 @activate_token(%struct.dell_wmi_smbios_buffer*, i32) #1

declare dso_local i32 @free(%struct.dell_wmi_smbios_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
