; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_type.c_symt_get_tag_str.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_type.c_symt_get_tag_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"SymTagNull\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"SymTagExe\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"SymTagCompiland\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"SymTagCompilandDetails\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"SymTagCompilandEnv\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"SymTagFunction\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"SymTagBlock\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"SymTagData\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"SymTagAnnotation\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"SymTagLabel\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"SymTagPublicSymbol\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"SymTagUDT\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"SymTagEnum\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"SymTagFunctionType\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"SymTagPointerType\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"SymTagArrayType\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"SymTagBaseType\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"SymTagTypedef,\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"SymTagBaseClass\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"SymTagFriend\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"SymTagFunctionArgType,\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"SymTagFuncDebugStart,\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"SymTagFuncDebugEnd\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"SymTagUsingNamespace,\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"SymTagVTableShape\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"SymTagVTable\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"SymTagCustom\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"SymTagThunk\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"SymTagCustomType\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"SymTagManagedType\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"SymTagDimension\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @symt_get_tag_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @symt_get_tag_str(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %36 [
    i32 136, label %5
    i32 145, label %6
    i32 153, label %7
    i32 152, label %8
    i32 151, label %9
    i32 141, label %10
    i32 154, label %11
    i32 148, label %12
    i32 158, label %13
    i32 138, label %14
    i32 134, label %15
    i32 131, label %16
    i32 146, label %17
    i32 139, label %18
    i32 135, label %19
    i32 157, label %20
    i32 155, label %21
    i32 132, label %22
    i32 156, label %23
    i32 144, label %24
    i32 140, label %25
    i32 142, label %26
    i32 143, label %27
    i32 130, label %28
    i32 128, label %29
    i32 129, label %30
    i32 150, label %31
    i32 133, label %32
    i32 149, label %33
    i32 137, label %34
    i32 147, label %35
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %37

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %37

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %37

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %37

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %37

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %37

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %37

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %37

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %37

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %37

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %37

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %37

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %37

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %37

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %37

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %37

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %37

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %37

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %37

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %37

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %37

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %37

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %37

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %37

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %37

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %37

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %37

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %37

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %37

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %37

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %37

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %37

37:                                               ; preds = %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %38 = load i8*, i8** %2, align 8
  ret i8* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
