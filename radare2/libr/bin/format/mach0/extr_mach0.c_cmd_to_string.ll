; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/mach0/extr_mach0.c_cmd_to_string.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/mach0/extr_mach0.c_cmd_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"LC_DATA_IN_CODE\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"LC_CODE_SIGNATURE\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"LC_RPATH\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"LC_TWOLEVEL_HINTS\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"LC_PREBIND_CKSUM\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"LC_SEGMENT\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"LC_SEGMENT_64\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"LC_SYMTAB\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"LC_SYMSEG\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"LC_DYSYMTAB\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"LC_PREBOUND_DYLIB\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"LC_ROUTINES\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"LC_ROUTINES_64\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"LC_SUB_FRAMEWORK\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"LC_SUB_UMBRELLA\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"LC_SUB_CLIENT\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"LC_SUB_LIBRARY\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"LC_FUNCTION_STARTS\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"LC_DYLIB_CODE_SIGN_DRS\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"LC_NOTE\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"LC_BUILD_VERSION\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"LC_VERSION_MIN_MACOSX\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"LC_VERSION_MIN_IPHONEOS\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"LC_VERSION_MIN_TVOS\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"LC_VERSION_MIN_WATCHOS\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"LC_DYLD_INFO\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"LC_DYLD_INFO_ONLY\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"LC_DYLD_ENVIRONMENT\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"LC_SOURCE_VERSION\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"LC_MAIN\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"LC_UUID\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"LC_ID_DYLIB\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"LC_ID_DYLINKER\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"LC_LAZY_LOAD_DYLIB\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"LC_ENCRYPTION_INFO\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"LC_ENCRYPTION_INFO_64\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"LC_SEGMENT_SPLIT_INFO\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"LC_REEXPORT_DYLIB\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"LC_LINKER_OPTION\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"LC_LINKER_OPTIMIZATION_HINT\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"LC_LOAD_DYLINKER\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"LC_LOAD_DYLIB\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"LC_LOAD_WEAK_DYLIB\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"LC_THREAD\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"LC_UNIXTHREAD\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"LC_LOADFVMLIB\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"LC_IDFVMLIB\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"LC_IDENT\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"LC_FVMFILE\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"LC_PREPAGE\00", align 1
@.str.50 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @cmd_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cmd_to_string(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %55 [
    i32 175, label %5
    i32 176, label %6
    i32 146, label %7
    i32 134, label %8
    i32 152, label %9
    i32 145, label %10
    i32 144, label %11
    i32 136, label %12
    i32 137, label %13
    i32 170, label %14
    i32 151, label %15
    i32 148, label %16
    i32 147, label %17
    i32 140, label %18
    i32 138, label %19
    i32 141, label %20
    i32 139, label %21
    i32 167, label %22
    i32 171, label %23
    i32 153, label %24
    i32 177, label %25
    i32 130, label %26
    i32 131, label %27
    i32 129, label %28
    i32 128, label %29
    i32 173, label %30
    i32 172, label %31
    i32 174, label %32
    i32 142, label %33
    i32 154, label %34
    i32 132, label %35
    i32 163, label %36
    i32 162, label %37
    i32 161, label %38
    i32 169, label %39
    i32 168, label %40
    i32 143, label %41
    i32 149, label %42
    i32 159, label %43
    i32 160, label %44
    i32 156, label %45
    i32 157, label %46
    i32 155, label %47
    i32 135, label %48
    i32 133, label %49
    i32 158, label %50
    i32 164, label %51
    i32 165, label %52
    i32 166, label %53
    i32 150, label %54
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %56

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %56

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %56

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %56

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %56

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %56

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %56

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %56

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %56

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %56

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %56

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %56

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %56

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %56

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %56

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %56

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %56

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %56

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %56

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %56

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %56

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %56

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %56

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %56

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %56

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %56

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %56

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %56

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %56

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %56

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %56

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %56

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8
  br label %56

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0), i8** %2, align 8
  br label %56

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0), i8** %2, align 8
  br label %56

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i64 0, i64 0), i8** %2, align 8
  br label %56

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0), i8** %2, align 8
  br label %56

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0), i8** %2, align 8
  br label %56

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8** %2, align 8
  br label %56

44:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i64 0, i64 0), i8** %2, align 8
  br label %56

45:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i64 0, i64 0), i8** %2, align 8
  br label %56

46:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0), i8** %2, align 8
  br label %56

47:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i64 0, i64 0), i8** %2, align 8
  br label %56

48:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i64 0, i64 0), i8** %2, align 8
  br label %56

49:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0), i8** %2, align 8
  br label %56

50:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i64 0, i64 0), i8** %2, align 8
  br label %56

51:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i8** %2, align 8
  br label %56

52:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0), i8** %2, align 8
  br label %56

53:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i64 0, i64 0), i8** %2, align 8
  br label %56

54:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i64 0, i64 0), i8** %2, align 8
  br label %56

55:                                               ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.50, i64 0, i64 0), i8** %2, align 8
  br label %56

56:                                               ; preds = %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %57 = load i8*, i8** %2, align 8
  ret i8* %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
