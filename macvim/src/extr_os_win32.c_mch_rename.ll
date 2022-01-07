; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_win32.c_mch_rename.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_win32.c_mch_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_MAX_PATH = common dso_local global i32 0, align 4
@NUL = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [4 x i8] c"VIM\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_NEW = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@enc_codepage = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mch_rename(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @_MAX_PATH, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @_MAX_PATH, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %21 = call i32 (...) @mch_windows95()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = call i64 @gettail(i32* %25)
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @STRLEN(i8* %28)
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %37, label %31

31:                                               ; preds = %23
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 6
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 126
  br i1 %36, label %37, label %41

37:                                               ; preds = %31, %23
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @rename(i8* %38, i8* %39)
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %94

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* @_MAX_PATH, align 4
  %45 = call i64 @GetFullPathName(i8* %43, i32 %44, i8* %20, i8** %9)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %9, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %42
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %94

51:                                               ; preds = %47
  %52 = load i8, i8* @NUL, align 1
  %53 = load i8*, i8** %9, align 8
  store i8 %52, i8* %53, align 1
  %54 = call i64 @GetTempFileName(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0, i8* %16)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 -2, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %94

57:                                               ; preds = %51
  %58 = call i32 @DeleteFile(i8* %16)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store i32 -3, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %94

61:                                               ; preds = %57
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @MoveFile(i8* %62, i8* %16)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  store i32 -4, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %94

66:                                               ; preds = %61
  %67 = load i8*, i8** %4, align 8
  %68 = load i32, i32* @GENERIC_WRITE, align 4
  %69 = load i32, i32* @CREATE_NEW, align 4
  %70 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %71 = call i32 @CreateFile(i8* %67, i32 %68, i32 0, i32* null, i32 %69, i32 %70, i32* null)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i32 -5, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %94

75:                                               ; preds = %66
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @CloseHandle(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  store i32 -6, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %94

80:                                               ; preds = %75
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @MoveFile(i8* %16, i8* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 @MoveFile(i8* %16, i8* %85)
  store i32 -7, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %94

87:                                               ; preds = %80
  %88 = call i32 @DeleteFile(i8* %16)
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 @DeleteFile(i8* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  store i32 -8, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %94

93:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %94

94:                                               ; preds = %93, %92, %84, %79, %74, %65, %60, %56, %50, %37
  %95 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mch_windows95(...) #2

declare dso_local i64 @gettail(i32*) #2

declare dso_local i32 @STRLEN(i8*) #2

declare dso_local i32 @rename(i8*, i8*) #2

declare dso_local i64 @GetFullPathName(i8*, i32, i8*, i8**) #2

declare dso_local i64 @GetTempFileName(i8*, i8*, i32, i8*) #2

declare dso_local i32 @DeleteFile(i8*) #2

declare dso_local i32 @MoveFile(i8*, i8*) #2

declare dso_local i32 @CreateFile(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @CloseHandle(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
