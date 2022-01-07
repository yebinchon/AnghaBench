; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sid.c_kuhl_m_sid_lookup.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_sid.c_kuhl_m_sid_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i32] [i32 115, i32 121, i32 115, i32 116, i32 101, i32 109, i32 0], align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 115, i32 105, i32 100, i32 0], align 4
@.str.2 = private unnamed_addr constant [12 x i32] [i32 83, i32 73, i32 68, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.3 = private unnamed_addr constant [34 x i32] [i32 84, i32 121, i32 112, i32 101, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 68, i32 111, i32 109, i32 97, i32 105, i32 110, i32 58, i32 32, i32 37, i32 115, i32 10, i32 78, i32 97, i32 109, i32 101, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [34 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 116, i32 111, i32 107, i32 101, i32 110, i32 95, i32 103, i32 101, i32 116, i32 78, i32 97, i32 109, i32 101, i32 68, i32 111, i32 109, i32 97, i32 105, i32 110, i32 70, i32 114, i32 111, i32 109, i32 83, i32 73, i32 68, i32 0], align 4
@.str.5 = private unnamed_addr constant [13 x i32] [i32 73, i32 110, i32 118, i32 97, i32 108, i32 105, i32 100, i32 32, i32 83, i32 73, i32 68, i32 10, i32 0], align 4
@.str.6 = private unnamed_addr constant [22 x i32] [i32 67, i32 111, i32 110, i32 118, i32 101, i32 114, i32 116, i32 83, i32 116, i32 114, i32 105, i32 110, i32 103, i32 83, i32 105, i32 100, i32 84, i32 111, i32 83, i32 105, i32 100, i32 0], align 4
@.str.7 = private unnamed_addr constant [5 x i32] [i32 110, i32 97, i32 109, i32 101, i32 0], align 4
@.str.8 = private unnamed_addr constant [12 x i32] [i32 78, i32 97, i32 109, i32 101, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@.str.9 = private unnamed_addr constant [31 x i32] [i32 84, i32 121, i32 112, i32 101, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 68, i32 111, i32 109, i32 97, i32 105, i32 110, i32 58, i32 32, i32 37, i32 115, i32 10, i32 83, i32 73, i32 68, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.10 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.11 = private unnamed_addr constant [34 x i32] [i32 107, i32 117, i32 108, i32 108, i32 95, i32 109, i32 95, i32 116, i32 111, i32 107, i32 101, i32 110, i32 95, i32 103, i32 101, i32 116, i32 83, i32 105, i32 100, i32 68, i32 111, i32 109, i32 97, i32 105, i32 110, i32 70, i32 114, i32 111, i32 109, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.12 = private unnamed_addr constant [26 x i32] [i32 47, i32 115, i32 105, i32 100, i32 32, i32 111, i32 114, i32 32, i32 47, i32 110, i32 97, i32 109, i32 101, i32 32, i32 105, i32 115, i32 32, i32 109, i32 105, i32 115, i32 115, i32 105, i32 110, i32 103, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_sid_lookup(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  store i32* null, i32** %10, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32**, i32*** %4, align 8
  %13 = call i64 @kull_m_string_args_byName(i32 %11, i32** %12, i8* bitcast ([7 x i32]* @.str to i8*), i32** %10, i32* null)
  %14 = load i32, i32* %3, align 4
  %15 = load i32**, i32*** %4, align 8
  %16 = call i64 @kull_m_string_args_byName(i32 %14, i32** %15, i8* bitcast ([4 x i32]* @.str.1 to i8*), i32** %9, i32* null)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %54

18:                                               ; preds = %2
  %19 = load i32*, i32** %9, align 8
  %20 = call i64 @ConvertStringSidToSid(i32* %19, i32* %7)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %18
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 (i8*, ...) @kprintf(i8* bitcast ([12 x i32]* @.str.2 to i8*), i32* %23)
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @IsValidSid(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = call i64 @kull_m_token_getNameDomainFromSID(i32 %29, i32* %5, i32* %6, i32* %8, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @kull_m_token_getSidNameUse(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i8*, ...) @kprintf(i8* bitcast ([34 x i32]* @.str.3 to i8*), i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @LocalFree(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @LocalFree(i32 %41)
  br label %45

43:                                               ; preds = %28
  %44 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([34 x i32]* @.str.4 to i8*))
  br label %45

45:                                               ; preds = %43, %33
  br label %48

46:                                               ; preds = %22
  %47 = call i32 @PRINT_ERROR(i8* bitcast ([13 x i32]* @.str.5 to i8*))
  br label %48

48:                                               ; preds = %46, %45
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @LocalFree(i32 %49)
  br label %53

51:                                               ; preds = %18
  %52 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([22 x i32]* @.str.6 to i8*))
  br label %53

53:                                               ; preds = %51, %48
  br label %84

54:                                               ; preds = %2
  %55 = load i32, i32* %3, align 4
  %56 = load i32**, i32*** %4, align 8
  %57 = call i64 @kull_m_string_args_byName(i32 %55, i32** %56, i8* bitcast ([5 x i32]* @.str.7 to i8*), i32** %9, i32* null)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %54
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 (i8*, ...) @kprintf(i8* bitcast ([12 x i32]* @.str.8 to i8*), i32* %60)
  %62 = load i32*, i32** %9, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = call i64 @kull_m_token_getSidDomainFromName(i32* %62, i32* %7, i32* %6, i32* %8, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %59
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @kull_m_token_getSidNameUse(i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = call i32 (i8*, ...) @kprintf(i8* bitcast ([31 x i32]* @.str.9 to i8*), i32 %68, i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @kull_m_string_displaySID(i32 %71)
  %73 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.10 to i8*))
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @LocalFree(i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @LocalFree(i32 %76)
  br label %80

78:                                               ; preds = %59
  %79 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([34 x i32]* @.str.11 to i8*))
  br label %80

80:                                               ; preds = %78, %66
  br label %83

81:                                               ; preds = %54
  %82 = call i32 @PRINT_ERROR(i8* bitcast ([26 x i32]* @.str.12 to i8*))
  br label %83

83:                                               ; preds = %81, %80
  br label %84

84:                                               ; preds = %83, %53
  %85 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %85
}

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i32**, i32*) #1

declare dso_local i64 @ConvertStringSidToSid(i32*, i32*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i64 @IsValidSid(i32) #1

declare dso_local i64 @kull_m_token_getNameDomainFromSID(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @kull_m_token_getSidNameUse(i32) #1

declare dso_local i32 @LocalFree(i32) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

declare dso_local i64 @kull_m_token_getSidDomainFromName(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @kull_m_string_displaySID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
