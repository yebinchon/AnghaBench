; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/mach0/extr_mach0.c_cmd_to_pf_definition.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/mach0/extr_mach0.c_cmd_to_pf_definition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"mach0_build_version_command\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"mach0_code_signature_command\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"mach0_data_in_code_command\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"mach0_dyld_info_only_command\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"mach0_dysymtab_command\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"mach0_encryption_info_command\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"mach0_encryption_info64_command\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"mach0_function_starts_command\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"mach0_id_dylib_command\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"mach0_id_dylinker_command\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"mach0_load_dylinker_command\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"mach0_dylib_command\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"mach0_entry_point_command\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"mach0_rpath_command\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"mach0_segment\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"mach0_segment64\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"mach0_segment_split_info_command\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"mach0_source_version_command\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"mach0_symtab_command\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"mach0_uuid_command\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"mach0_version_min_command\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"mach0_unixthread_command\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @cmd_to_pf_definition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cmd_to_pf_definition(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %49 [
    i32 177, label %5
    i32 176, label %6
    i32 175, label %7
    i32 173, label %8
    i32 172, label %8
    i32 174, label %9
    i32 171, label %10
    i32 170, label %11
    i32 169, label %12
    i32 168, label %13
    i32 167, label %14
    i32 166, label %15
    i32 163, label %16
    i32 162, label %17
    i32 165, label %18
    i32 164, label %19
    i32 159, label %20
    i32 160, label %21
    i32 156, label %22
    i32 161, label %23
    i32 155, label %23
    i32 157, label %23
    i32 158, label %24
    i32 154, label %25
    i32 153, label %26
    i32 152, label %27
    i32 151, label %28
    i32 150, label %29
    i32 149, label %30
    i32 148, label %31
    i32 147, label %32
    i32 146, label %33
    i32 145, label %34
    i32 144, label %35
    i32 143, label %36
    i32 142, label %37
    i32 140, label %38
    i32 138, label %39
    i32 141, label %40
    i32 139, label %41
    i32 136, label %42
    i32 137, label %43
    i32 134, label %44
    i32 132, label %45
    i32 130, label %46
    i32 131, label %46
    i32 129, label %46
    i32 128, label %46
    i32 135, label %47
    i32 133, label %48
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %50

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %50

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %50

8:                                                ; preds = %1, %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %50

9:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %50

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %50

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %50

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %50

15:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %50

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %50

18:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

19:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

20:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

21:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %50

23:                                               ; preds = %1, %1, %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %50

24:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %50

26:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

27:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

28:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

29:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

30:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

31:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

32:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %50

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %50

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %50

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %50

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %50

38:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

39:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

40:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

41:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %50

43:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

44:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

45:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %50

46:                                               ; preds = %1, %1, %1, %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %50

47:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

48:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %50

49:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %50

50:                                               ; preds = %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %51 = load i8*, i8** %2, align 8
  ret i8* %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
