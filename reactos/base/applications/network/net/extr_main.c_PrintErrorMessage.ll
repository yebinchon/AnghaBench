; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/net/extr_main.c_PrintErrorMessage.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/net/extr_main.c_PrintErrorMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIN_LANMAN_MESSAGE_ID = common dso_local global i8* null, align 8
@MAX_LANMAN_MESSAGE_ID = common dso_local global i8* null, align 8
@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_HMODULE = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@hModuleNetMsg = common dso_local global i32 0, align 4
@LANG_USER_DEFAULT = common dso_local global i32 0, align 4
@StdErr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i32] [i32 37, i32 115, i32 10, i32 0], align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i32] [i32 37, i32 108, i32 117, i32 0], align 4
@FORMAT_MESSAGE_ARGUMENT_ARRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PrintErrorMessage(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [16 x i32], align 16
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i32*], align 16
  store i8* %0, i8** %3, align 8
  %7 = bitcast [2 x i32*]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 16, i1 false)
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** @MIN_LANMAN_MESSAGE_ID, align 8
  %10 = icmp uge i8* %8, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** @MAX_LANMAN_MESSAGE_ID, align 8
  %14 = icmp ule i8* %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %17 = load i32, i32* @FORMAT_MESSAGE_FROM_HMODULE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @hModuleNetMsg, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* @LANG_USER_DEFAULT, align 4
  %24 = ptrtoint i32** %5 to i32
  %25 = call i32 (i32, i32, ...) @FormatMessageW(i32 %20, i32 %21, i8* %22, i32 %23, i32 %24, i32 0, i8* null)
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %15
  %29 = load i32, i32* @StdErr, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @ConPrintf(i32 %29, i8* bitcast ([4 x i32]* @.str to i8*), i32* %30)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @LocalFree(i32* %32)
  store i32* null, i32** %5, align 8
  br label %34

34:                                               ; preds = %28, %15
  br label %54

35:                                               ; preds = %11, %1
  %36 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %37 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %40 = or i32 %38, %39
  %41 = load i8*, i8** %3, align 8
  %42 = load i32, i32* @LANG_USER_DEFAULT, align 4
  %43 = ptrtoint i32** %5 to i32
  %44 = call i32 (i32, i32, ...) @FormatMessageW(i32 %40, i32 0, i8* %41, i32 %42, i32 %43, i32 0, i8* null)
  %45 = load i32*, i32** %5, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %35
  %48 = load i32, i32* @StdErr, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @ConPrintf(i32 %48, i8* bitcast ([4 x i32]* @.str to i8*), i32* %49)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @LocalFree(i32* %51)
  store i32* null, i32** %5, align 8
  br label %53

53:                                               ; preds = %47, %35
  br label %54

54:                                               ; preds = %53, %34
  %55 = load i8*, i8** %3, align 8
  %56 = load i8*, i8** @ERROR_SUCCESS, align 8
  %57 = icmp ne i8* %55, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %54
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 @swprintf(i32* %59, i8* bitcast ([4 x i32]* @.str.1 to i8*), i8* %60)
  %62 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %63 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  store i32* %62, i32** %63, align 16
  %64 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %65 = load i32, i32* @FORMAT_MESSAGE_FROM_HMODULE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @FORMAT_MESSAGE_ARGUMENT_ARRAY, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @hModuleNetMsg, align 4
  %70 = load i32, i32* @LANG_USER_DEFAULT, align 4
  %71 = ptrtoint i32** %5 to i32
  %72 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  %73 = bitcast i32** %72 to i32*
  %74 = call i32 (i32, i32, ...) @FormatMessageW(i32 %68, i32 %69, i32 3514, i32 %70, i32 %71, i32 0, i32* %73)
  %75 = load i32*, i32** %5, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %58
  %78 = load i32, i32* @StdErr, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @ConPrintf(i32 %78, i8* bitcast ([4 x i32]* @.str to i8*), i32* %79)
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @LocalFree(i32* %81)
  store i32* null, i32** %5, align 8
  br label %83

83:                                               ; preds = %77, %58
  br label %84

84:                                               ; preds = %83, %54
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @FormatMessageW(i32, i32, ...) #2

declare dso_local i32 @ConPrintf(i32, i8*, i32*) #2

declare dso_local i32 @LocalFree(i32*) #2

declare dso_local i32 @swprintf(i32*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
