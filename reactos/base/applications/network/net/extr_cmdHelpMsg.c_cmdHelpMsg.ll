; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdHelpMsg.c_cmdHelpMsg.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_cmdHelpMsg.c_cmdHelpMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i32] [i32 42, i32 42, i32 42, i32 0], align 4
@__const.cmdHelpMsg.pInserts = private unnamed_addr constant [10 x i8*] [i8* bitcast ([4 x i32]* @.str to i8*), i8* bitcast ([4 x i32]* @.str to i8*), i8* bitcast ([4 x i32]* @.str to i8*), i8* bitcast ([4 x i32]* @.str to i8*), i8* bitcast ([4 x i32]* @.str to i8*), i8* bitcast ([4 x i32]* @.str to i8*), i8* bitcast ([4 x i32]* @.str to i8*), i8* bitcast ([4 x i32]* @.str to i8*), i8* bitcast ([4 x i32]* @.str to i8*), i8* null], align 16
@StdOut = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@MSG_HELPMSG_SYNTAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i32] [i32 47, i32 104, i32 101, i32 108, i32 112, i32 0], align 4
@MSG_HELPMSG_HELP = common dso_local global i32 0, align 4
@MIN_LANMAN_MESSAGE_ID = common dso_local global i64 0, align 8
@MAX_LANMAN_MESSAGE_ID = common dso_local global i64 0, align 8
@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_HMODULE = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_ARGUMENT_ARRAY = common dso_local global i32 0, align 4
@hModuleNetMsg = common dso_local global i32* null, align 8
@LANG_USER_DEFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i32] [i32 10, i32 37, i32 115, i32 10, i32 0], align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmdHelpMsg(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [10 x i8*], align 16
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %11 = bitcast [10 x i8*]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([10 x i8*]* @__const.cmdHelpMsg.pInserts to i8*), i64 80, i1 false)
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 3
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = call i32 @PrintMessageString(i32 4381)
  %16 = load i32, i32* @StdOut, align 4
  %17 = call i32 @ConPuts(i32 %16, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %18 = load i32, i32* @MSG_HELPMSG_SYNTAX, align 4
  %19 = call i32 @PrintNetMessage(i32 %18)
  store i32 1, i32* %3, align 4
  br label %116

20:                                               ; preds = %2
  store i32 2, i32* %6, align 4
  br label %21

21:                                               ; preds = %42, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = load i32**, i32*** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @_wcsicmp(i32* %30, i8* bitcast ([6 x i32]* @.str.2 to i8*))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = call i32 @PrintMessageString(i32 4381)
  %35 = load i32, i32* @StdOut, align 4
  %36 = call i32 @ConPuts(i32 %35, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %37 = load i32, i32* @MSG_HELPMSG_SYNTAX, align 4
  %38 = call i32 @PrintNetMessage(i32 %37)
  %39 = load i32, i32* @MSG_HELPMSG_HELP, align 4
  %40 = call i32 @PrintNetMessage(i32 %39)
  store i32 1, i32* %3, align 4
  br label %116

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %21

45:                                               ; preds = %21
  %46 = load i32**, i32*** %5, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 2
  %48 = load i32*, i32** %47, align 8
  %49 = call i64 @wcstol(i32* %48, i8** %8, i32 10)
  store i64 %49, i64* %7, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = call i32 @PrintMessageString(i32 4381)
  %56 = load i32, i32* @StdOut, align 4
  %57 = call i32 @ConPuts(i32 %56, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %58 = load i32, i32* @MSG_HELPMSG_SYNTAX, align 4
  %59 = call i32 @PrintNetMessage(i32 %58)
  store i32 1, i32* %3, align 4
  br label %116

60:                                               ; preds = %45
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @MIN_LANMAN_MESSAGE_ID, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %92

64:                                               ; preds = %60
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @MAX_LANMAN_MESSAGE_ID, align 8
  %67 = icmp sle i64 %65, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %64
  %69 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %70 = load i32, i32* @FORMAT_MESSAGE_FROM_HMODULE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @FORMAT_MESSAGE_ARGUMENT_ARRAY, align 4
  %73 = or i32 %71, %72
  %74 = load i32*, i32** @hModuleNetMsg, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i32, i32* @LANG_USER_DEFAULT, align 4
  %77 = ptrtoint i8** %9 to i32
  %78 = getelementptr inbounds [10 x i8*], [10 x i8*]* %10, i64 0, i64 0
  %79 = bitcast i8** %78 to i32*
  %80 = call i32 @FormatMessageW(i32 %73, i32* %74, i64 %75, i32 %76, i32 %77, i32 0, i32* %79)
  %81 = load i8*, i8** %9, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %68
  %84 = load i32, i32* @StdOut, align 4
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 @ConPrintf(i32 %84, i8* bitcast ([5 x i32]* @.str.3 to i8*), i8* %85)
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @LocalFree(i8* %87)
  br label %91

89:                                               ; preds = %68
  %90 = call i32 @PrintErrorMessage(i32 3871)
  br label %91

91:                                               ; preds = %89, %83
  br label %115

92:                                               ; preds = %64, %60
  %93 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %94 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @FORMAT_MESSAGE_ARGUMENT_ARRAY, align 4
  %97 = or i32 %95, %96
  %98 = load i64, i64* %7, align 8
  %99 = load i32, i32* @LANG_USER_DEFAULT, align 4
  %100 = ptrtoint i8** %9 to i32
  %101 = getelementptr inbounds [10 x i8*], [10 x i8*]* %10, i64 0, i64 0
  %102 = bitcast i8** %101 to i32*
  %103 = call i32 @FormatMessageW(i32 %97, i32* null, i64 %98, i32 %99, i32 %100, i32 0, i32* %102)
  %104 = load i8*, i8** %9, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %92
  %107 = load i32, i32* @StdOut, align 4
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 @ConPrintf(i32 %107, i8* bitcast ([5 x i32]* @.str.3 to i8*), i8* %108)
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @LocalFree(i8* %110)
  br label %114

112:                                              ; preds = %92
  %113 = call i32 @PrintErrorMessage(i32 3871)
  br label %114

114:                                              ; preds = %112, %106
  br label %115

115:                                              ; preds = %114, %91
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %115, %54, %33, %14
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @PrintMessageString(i32) #2

declare dso_local i32 @ConPuts(i32, i8*) #2

declare dso_local i32 @PrintNetMessage(i32) #2

declare dso_local i64 @_wcsicmp(i32*, i8*) #2

declare dso_local i64 @wcstol(i32*, i8**, i32) #2

declare dso_local i32 @FormatMessageW(i32, i32*, i64, i32, i32, i32, i32*) #2

declare dso_local i32 @ConPrintf(i32, i8*, i8*) #2

declare dso_local i32 @LocalFree(i8*) #2

declare dso_local i32 @PrintErrorMessage(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
