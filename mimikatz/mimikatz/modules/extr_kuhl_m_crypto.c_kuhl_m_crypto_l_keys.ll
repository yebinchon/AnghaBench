; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_crypto.c_kuhl_m_crypto_l_keys.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_crypto.c_kuhl_m_crypto_l_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i32] [i32 101, i32 120, i32 112, i32 111, i32 114, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [9 x i32] [i32 112, i32 114, i32 111, i32 118, i32 105, i32 100, i32 101, i32 114, i32 0], align 4
@.str.2 = private unnamed_addr constant [17 x i32] [i32 77, i32 83, i32 95, i32 69, i32 78, i32 72, i32 65, i32 78, i32 67, i32 69, i32 68, i32 95, i32 80, i32 82, i32 79, i32 86, i32 0], align 4
@.str.3 = private unnamed_addr constant [13 x i32] [i32 112, i32 114, i32 111, i32 118, i32 105, i32 100, i32 101, i32 114, i32 116, i32 121, i32 112, i32 101, i32 0], align 4
@.str.4 = private unnamed_addr constant [14 x i32] [i32 80, i32 82, i32 79, i32 86, i32 95, i32 82, i32 83, i32 65, i32 95, i32 70, i32 85, i32 76, i32 76, i32 0], align 4
@.str.5 = private unnamed_addr constant [8 x i32] [i32 109, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 0], align 4
@CRYPT_MACHINE_KEYSET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i32] [i32 117, i32 115, i32 101, i32 114, i32 0], align 4
@.str.7 = private unnamed_addr constant [7 x i32] [i32 115, i32 105, i32 108, i32 101, i32 110, i32 116, i32 0], align 4
@CRYPT_SILENT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i32] [i32 99, i32 110, i32 103, i32 112, i32 114, i32 111, i32 118, i32 105, i32 100, i32 101, i32 114, i32 0], align 4
@MS_KEY_STORAGE_PROVIDER = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [109 x i32] [i32 32, i32 42, i32 32, i32 83, i32 116, i32 111, i32 114, i32 101, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 39, i32 37, i32 115, i32 39, i32 10, i32 32, i32 42, i32 32, i32 80, i32 114, i32 111, i32 118, i32 105, i32 100, i32 101, i32 114, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 39, i32 37, i32 115, i32 39, i32 32, i32 40, i32 39, i32 37, i32 115, i32 39, i32 41, i32 10, i32 32, i32 42, i32 32, i32 80, i32 114, i32 111, i32 118, i32 105, i32 100, i32 101, i32 114, i32 32, i32 116, i32 121, i32 112, i32 101, i32 32, i32 58, i32 32, i32 39, i32 37, i32 115, i32 39, i32 32, i32 40, i32 37, i32 117, i32 41, i32 10, i32 32, i32 42, i32 32, i32 67, i32 78, i32 71, i32 32, i32 80, i32 114, i32 111, i32 118, i32 105, i32 100, i32 101, i32 114, i32 32, i32 32, i32 58, i32 32, i32 39, i32 37, i32 115, i32 39, i32 10, i32 0], align 4
@.str.10 = private unnamed_addr constant [19 x i32] [i32 10, i32 67, i32 114, i32 121, i32 112, i32 116, i32 111, i32 65, i32 80, i32 73, i32 32, i32 107, i32 101, i32 121, i32 115, i32 32, i32 58, i32 10, i32 0], align 4
@.str.11 = private unnamed_addr constant [13 x i32] [i32 10, i32 67, i32 78, i32 71, i32 32, i32 107, i32 101, i32 121, i32 115, i32 32, i32 58, i32 10, i32 0], align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_crypto_l_keys(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32**, i32*** %4, align 8
  %15 = call i32 @kull_m_string_args_byName(i32 %13, i32** %14, i8* bitcast ([7 x i32]* @.str to i8*), i8** null, i8* null)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32**, i32*** %4, align 8
  %18 = call i32 @kull_m_string_args_byName(i32 %16, i32** %17, i8* bitcast ([9 x i32]* @.str.1 to i8*), i8** %5, i8* bitcast ([17 x i32]* @.str.2 to i8*))
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @kull_m_crypto_provider_to_realname(i8* %19)
  store i8* %20, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %6, align 8
  br label %24

24:                                               ; preds = %22, %2
  %25 = load i32, i32* %3, align 4
  %26 = load i32**, i32*** %4, align 8
  %27 = call i32 @kull_m_string_args_byName(i32 %25, i32** %26, i8* bitcast ([13 x i32]* @.str.3 to i8*), i8** %7, i8* bitcast ([14 x i32]* @.str.4 to i8*))
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @kull_m_crypto_provider_type_to_dword(i8* %28)
  store i32 %29, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @wcstoul(i8* %32, i32* null, i32 0)
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %31, %24
  %35 = load i32, i32* %3, align 4
  %36 = load i32**, i32*** %4, align 8
  %37 = call i32 @kull_m_string_args_byName(i32 %35, i32** %36, i8* bitcast ([8 x i32]* @.str.5 to i8*), i8** null, i8* null)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @CRYPT_MACHINE_KEYSET, align 4
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %39, %34
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @.str.5, i64 0, i64 0), i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.6, i64 0, i64 0)
  %46 = bitcast i32* %45 to i8*
  store i8* %46, i8** %8, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32**, i32*** %4, align 8
  %49 = call i32 @kull_m_string_args_byName(i32 %47, i32** %48, i8* bitcast ([7 x i32]* @.str.7 to i8*), i8** null, i8* null)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i32, i32* @CRYPT_SILENT, align 4
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %51, %41
  %56 = load i32, i32* %3, align 4
  %57 = load i32**, i32*** %4, align 8
  %58 = load i8*, i8** @MS_KEY_STORAGE_PROVIDER, align 8
  %59 = call i32 @kull_m_string_args_byName(i32 %56, i32** %57, i8* bitcast ([12 x i32]* @.str.8 to i8*), i8** %9, i8* %58)
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 (i8*, ...) @kprintf(i8* bitcast ([109 x i32]* @.str.9 to i8*), i8* %60, i8* %61, i8* %62, i8* %63, i32 %64, i8* %65)
  %67 = call i32 (i8*, ...) @kprintf(i8* bitcast ([19 x i32]* @.str.10 to i8*))
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @kuhl_m_crypto_l_keys_capi(i32* null, i8* %68, i32 %69, i32 %70, i32 %71, i8* %72)
  %74 = call i32 (i8*, ...) @kprintf(i8* bitcast ([13 x i32]* @.str.11 to i8*))
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @kuhl_m_crypto_l_keys_cng(i32* null, i8* %75, i32 %76, i32 %77, i8* %78)
  %80 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %80
}

declare dso_local i32 @kull_m_string_args_byName(i32, i32**, i8*, i8**, i8*) #1

declare dso_local i8* @kull_m_crypto_provider_to_realname(i8*) #1

declare dso_local i32 @kull_m_crypto_provider_type_to_dword(i8*) #1

declare dso_local i32 @wcstoul(i8*, i32*, i32) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kuhl_m_crypto_l_keys_capi(i32*, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @kuhl_m_crypto_l_keys_cng(i32*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
