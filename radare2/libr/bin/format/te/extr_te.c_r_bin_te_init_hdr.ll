; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/te/extr_te.c_r_bin_te_init_hdr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/te/extr_te.c_r_bin_te_init_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_bin_te_obj_t = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"malloc (header)\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Error: read (header)\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Error: sdb instance is empty\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"te_machine.cparse\00", align 1
@.str.4 = private unnamed_addr constant [1096 x i8] c"enum te_machine { TE_IMAGE_FILE_MACHINE_UNKNOWN=0x0, TE_IMAGE_FILE_MACHINE_ALPHA=0x184, TE_IMAGE_FILE_MACHINE_ALPHA64=0x284, TE_IMAGE_FILE_MACHINE_AM33=0x1d3, TE_IMAGE_FILE_MACHINE_AMD64=0x8664, TE_IMAGE_FILE_MACHINE_ARM=0x1c0, TE_IMAGE_FILE_MACHINE_AXP64=0x184, TE_IMAGE_FILE_MACHINE_CEE=0xc0ee, TE_IMAGE_FILE_MACHINE_CEF=0x0cef, TE_IMAGE_FILE_MACHINE_EBC=0x0ebc, TE_IMAGE_FILE_MACHINE_I386=0x014c, TE_IMAGE_FILE_MACHINE_IA64=0x0200, TE_IMAGE_FILE_MACHINE_M32R=0x9041, TE_IMAGE_FILE_MACHINE_M68K=0x0268, TE_IMAGE_FILE_MACHINE_MIPS16=0x0266, TE_IMAGE_FILE_MACHINE_MIPSFPU=0x0366, TE_IMAGE_FILE_MACHINE_MIPSFPU16=0x0466, TE_IMAGE_FILE_MACHINE_POWERPC=0x01f0, TE_IMAGE_FILE_MACHINE_POWERPCFP=0x01f1, TE_IMAGE_FILE_MACHINE_R10000=0x0168, TE_IMAGE_FILE_MACHINE_R3000=0x0162, TE_IMAGE_FILE_MACHINE_R4000=0x0166, TE_IMAGE_FILE_MACHINE_SH3=0x01a2, TE_IMAGE_FILE_MACHINE_SH3DSP=0x01a3, TE_IMAGE_FILE_MACHINE_SH3E=0x01a4, TE_IMAGE_FILE_MACHINE_SH4=0x01a6, TE_IMAGE_FILE_MACHINE_SH5=0x01a8, TE_IMAGE_FILE_MACHINE_THUMB=0x01c2, TE_IMAGE_FILE_MACHINE_TRICORE=0x0520, TE_IMAGE_FILE_MACHINE_WCEMIPSV2=0x0169};\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"te_subsystem.cparse\00", align 1
@.str.6 = private unnamed_addr constant [403 x i8] c"enum te_subsystem { TE_IMAGE_SUBSYSTEM_UNKNOWN=0, TE_IMAGE_SUBSYSTEM_NATIVE=1, TE_IMAGE_SUBSYSTEM_WINDOWS_GUI=2, TE_IMAGE_SUBSYSTEM_WINDOWS_CUI=3, TE_IMAGE_SUBSYSTEM_POSIX_CUI=7, TE_IMAGE_SUBSYSTEM_WINDOWS_CE_GU=9, TE_IMAGE_SUBSYSTEM_EFI_APPLICATION=10, TE_IMAGE_SUBSYSTEM_EFI_BOOT_SERVICE_DRIVER=11, TE_IMAGE_SUBSYSTEM_EFI_RUNTIME_DRIVER=12, TE_IMAGE_SUBSYSTEM_EFI_ROM=13, TE_IMAGE_SUBSYSTEM_XBOX=14};\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"te_header.offset\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"te_header.format\00", align 1
@.str.9 = private unnamed_addr constant [143 x i8] c"[2]z[2]Eb[1]Ewxxq Signature (te_machine)Machine NumberOfSections (te_subsystem)Subsystem StrippedSize AddressOfEntryPoint BaseOfCode ImageBase\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"te_directory1_header.offset\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"te_directory1_header.format\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"xx VirtualAddress Size\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"te_directory2_header.offset\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"te_directory2_header.format\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"VZ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r_bin_te_obj_t*)* @r_bin_te_init_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_bin_te_init_hdr(%struct.r_bin_te_obj_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r_bin_te_obj_t*, align 8
  store %struct.r_bin_te_obj_t* %0, %struct.r_bin_te_obj_t** %3, align 8
  %4 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %5 = icmp ne %struct.r_bin_te_obj_t* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %75

7:                                                ; preds = %1
  %8 = call %struct.TYPE_2__* @malloc(i32 4)
  %9 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %10 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %9, i32 0, i32 0
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %10, align 8
  %11 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = call i32 @r_sys_perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %75

14:                                               ; preds = %7
  %15 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %16 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %19 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = bitcast %struct.TYPE_2__* %20 to i32*
  %22 = call i32 @r_buf_read_at(i32 %17, i32 0, i32* %21, i32 4)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = call i32 @eprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %75

26:                                               ; preds = %14
  %27 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %28 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = call i32 @eprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %75

33:                                               ; preds = %26
  %34 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %35 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @sdb_set(i32 %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1096 x i8], [1096 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %38 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %39 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @sdb_set(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([403 x i8], [403 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %42 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %43 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @sdb_num_set(i32 %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 0)
  %46 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %47 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @sdb_set(i32 %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.9, i64 0, i64 0), i32 0)
  %50 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %51 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @sdb_num_set(i32 %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 24, i32 0)
  %54 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %55 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @sdb_set(i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %58 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %59 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @sdb_num_set(i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 32, i32 0)
  %62 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %63 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @sdb_set(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 0)
  %66 = load %struct.r_bin_te_obj_t*, %struct.r_bin_te_obj_t** %3, align 8
  %67 = getelementptr inbounds %struct.r_bin_te_obj_t, %struct.r_bin_te_obj_t* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = bitcast i32* %69 to i8*
  %71 = call i64 @strncmp(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 2)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %75

74:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %73, %31, %24, %12, %6
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.TYPE_2__* @malloc(i32) #1

declare dso_local i32 @r_sys_perror(i8*) #1

declare dso_local i32 @r_buf_read_at(i32, i32, i32*, i32) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @sdb_set(i32, i8*, i8*, i32) #1

declare dso_local i32 @sdb_num_set(i32, i8*, i32, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
