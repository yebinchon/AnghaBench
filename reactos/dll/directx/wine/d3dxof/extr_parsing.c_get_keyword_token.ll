; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_get_keyword_token.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_get_keyword_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"template\00", align 1
@TOKEN_TEMPLATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"WORD\00", align 1
@TOKEN_WORD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"DWORD\00", align 1
@TOKEN_DWORD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"FLOAT\00", align 1
@TOKEN_FLOAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"DOUBLE\00", align 1
@TOKEN_DOUBLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"CHAR\00", align 1
@TOKEN_CHAR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"UCHAR\00", align 1
@TOKEN_UCHAR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"SWORD\00", align 1
@TOKEN_SWORD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"SDWORD\00", align 1
@TOKEN_SDWORD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"VOID\00", align 1
@TOKEN_VOID = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"STRING\00", align 1
@TOKEN_LPSTR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"UNICODE\00", align 1
@TOKEN_UNICODE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"CSTRING\00", align 1
@TOKEN_CSTRING = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@TOKEN_ARRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @get_keyword_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_keyword_token(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i64 @is_keyword(i32* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @TOKEN_TEMPLATE, align 4
  store i32 %8, i32* %2, align 4
  br label %88

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @is_keyword(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @TOKEN_WORD, align 4
  store i32 %14, i32* %2, align 4
  br label %88

15:                                               ; preds = %9
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @is_keyword(i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @TOKEN_DWORD, align 4
  store i32 %20, i32* %2, align 4
  br label %88

21:                                               ; preds = %15
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @is_keyword(i32* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @TOKEN_FLOAT, align 4
  store i32 %26, i32* %2, align 4
  br label %88

27:                                               ; preds = %21
  %28 = load i32*, i32** %3, align 8
  %29 = call i64 @is_keyword(i32* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @TOKEN_DOUBLE, align 4
  store i32 %32, i32* %2, align 4
  br label %88

33:                                               ; preds = %27
  %34 = load i32*, i32** %3, align 8
  %35 = call i64 @is_keyword(i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @TOKEN_CHAR, align 4
  store i32 %38, i32* %2, align 4
  br label %88

39:                                               ; preds = %33
  %40 = load i32*, i32** %3, align 8
  %41 = call i64 @is_keyword(i32* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @TOKEN_UCHAR, align 4
  store i32 %44, i32* %2, align 4
  br label %88

45:                                               ; preds = %39
  %46 = load i32*, i32** %3, align 8
  %47 = call i64 @is_keyword(i32* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @TOKEN_SWORD, align 4
  store i32 %50, i32* %2, align 4
  br label %88

51:                                               ; preds = %45
  %52 = load i32*, i32** %3, align 8
  %53 = call i64 @is_keyword(i32* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @TOKEN_SDWORD, align 4
  store i32 %56, i32* %2, align 4
  br label %88

57:                                               ; preds = %51
  %58 = load i32*, i32** %3, align 8
  %59 = call i64 @is_keyword(i32* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @TOKEN_VOID, align 4
  store i32 %62, i32* %2, align 4
  br label %88

63:                                               ; preds = %57
  %64 = load i32*, i32** %3, align 8
  %65 = call i64 @is_keyword(i32* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @TOKEN_LPSTR, align 4
  store i32 %68, i32* %2, align 4
  br label %88

69:                                               ; preds = %63
  %70 = load i32*, i32** %3, align 8
  %71 = call i64 @is_keyword(i32* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @TOKEN_UNICODE, align 4
  store i32 %74, i32* %2, align 4
  br label %88

75:                                               ; preds = %69
  %76 = load i32*, i32** %3, align 8
  %77 = call i64 @is_keyword(i32* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @TOKEN_CSTRING, align 4
  store i32 %80, i32* %2, align 4
  br label %88

81:                                               ; preds = %75
  %82 = load i32*, i32** %3, align 8
  %83 = call i64 @is_keyword(i32* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @TOKEN_ARRAY, align 4
  store i32 %86, i32* %2, align 4
  br label %88

87:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %85, %79, %73, %67, %61, %55, %49, %43, %37, %31, %25, %19, %13, %7
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i64 @is_keyword(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
