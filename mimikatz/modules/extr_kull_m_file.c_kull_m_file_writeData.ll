; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_file.c_kull_m_file_writeData.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_file.c_kull_m_file_writeData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@isBase64InterceptOutput = common dso_local global i64 0, align 8
@CRYPT_STRING_BASE64 = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i32] [i32 10, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 10, i32 66, i32 97, i32 115, i32 101, i32 54, i32 52, i32 32, i32 111, i32 102, i32 32, i32 102, i32 105, i32 108, i32 101, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [3 x i32] [i32 37, i32 99, i32 0], align 4
@.str.2 = private unnamed_addr constant [22 x i32] [i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 61, i32 10, i32 0], align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kull_m_file_writeData(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %10, align 8
  %13 = load i64, i64* @isBase64InterceptOutput, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %63

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @CRYPT_STRING_BASE64, align 4
  %20 = call i64 @CryptBinaryToString(i32* %17, i32 %18, i32 %19, i32* null, i32* %8)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %15
  %23 = load i32, i32* @LPTR, align 4
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call i64 @LocalAlloc(i32 %23, i32 %27)
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %11, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %61

31:                                               ; preds = %22
  %32 = load i64, i64* %5, align 8
  %33 = inttoptr i64 %32 to i32*
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @CRYPT_STRING_BASE64, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = call i64 @CryptBinaryToString(i32* %33, i32 %34, i32 %35, i32* %36, i32* %8)
  store i64 %37, i64* %7, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i8*, ...) @kprintf(i8* bitcast ([64 x i32]* @.str to i8*), i32 %40)
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %53, %39
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @kprintf(i8* bitcast ([3 x i32]* @.str.1 to i8*), i32 %51)
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %42

56:                                               ; preds = %42
  %57 = call i32 (i8*, ...) @kprintf(i8* bitcast ([22 x i32]* @.str.2 to i8*))
  br label %58

58:                                               ; preds = %56, %31
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @LocalFree(i32* %59)
  br label %61

61:                                               ; preds = %58, %22
  br label %62

62:                                               ; preds = %61, %15
  br label %90

63:                                               ; preds = %3
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @GENERIC_WRITE, align 4
  %66 = load i32, i32* @CREATE_ALWAYS, align 4
  %67 = call i64 @CreateFile(i32 %64, i32 %65, i32 0, i32* null, i32 %66, i32 0, i32* null)
  store i64 %67, i64* %10, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %63
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @WriteFile(i64 %74, i64 %75, i32 %76, i32* %8, i32* null)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i64, i64* %10, align 8
  %85 = call i64 @FlushFileBuffers(i64 %84)
  store i64 %85, i64* %7, align 8
  br label %86

86:                                               ; preds = %83, %79, %73
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @CloseHandle(i64 %87)
  br label %89

89:                                               ; preds = %86, %69, %63
  br label %90

90:                                               ; preds = %89, %62
  %91 = load i64, i64* %7, align 8
  ret i64 %91
}

declare dso_local i64 @CryptBinaryToString(i32*, i32, i32, i32*, i32*) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i64 @CreateFile(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @WriteFile(i64, i64, i32, i32*, i32*) #1

declare dso_local i64 @FlushFileBuffers(i64) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
