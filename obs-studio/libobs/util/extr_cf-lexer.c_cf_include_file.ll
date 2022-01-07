; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_include_file.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_include_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_preprocessor = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.cf_lexer* }
%struct.cf_lexer = type { i32 }
%struct.cf_token = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dstr = type { i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not open file '$1'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cf_preprocessor*, %struct.cf_token*)* @cf_include_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_include_file(%struct.cf_preprocessor* %0, %struct.cf_token* %1) #0 {
  %3 = alloca %struct.cf_preprocessor*, align 8
  %4 = alloca %struct.cf_token*, align 8
  %5 = alloca %struct.cf_lexer, align 4
  %6 = alloca %struct.dstr, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cf_token*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.cf_lexer*, align 8
  store %struct.cf_preprocessor* %0, %struct.cf_preprocessor** %3, align 8
  store %struct.cf_token* %1, %struct.cf_token** %4, align 8
  %12 = call i32 @dstr_init(%struct.dstr* %6)
  %13 = load %struct.cf_token*, %struct.cf_token** %4, align 8
  %14 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %13, i32 0, i32 0
  %15 = call i32 @dstr_copy_strref(%struct.dstr* %6, %struct.TYPE_3__* %14)
  %16 = getelementptr inbounds %struct.dstr, %struct.dstr* %6, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %17, 2
  %19 = call i32 @dstr_mid(%struct.dstr* %6, %struct.dstr* %6, i32 1, i64 %18)
  %20 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %21 = call i32 @insert_path(%struct.cf_preprocessor* %20, %struct.dstr* %6)
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %49, %2
  %23 = load i64, i64* %10, align 8
  %24 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %25 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %23, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %22
  %30 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %31 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.cf_lexer*, %struct.cf_lexer** %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %33, i64 %34
  store %struct.cf_lexer* %35, %struct.cf_lexer** %11, align 8
  %36 = load %struct.cf_lexer*, %struct.cf_lexer** %11, align 8
  %37 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.dstr, %struct.dstr* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @strcmp(i32 %38, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %29
  %44 = load %struct.cf_lexer*, %struct.cf_lexer** %11, align 8
  %45 = call %struct.cf_token* @cf_lexer_get_tokens(%struct.cf_lexer* %44)
  store %struct.cf_token* %45, %struct.cf_token** %9, align 8
  %46 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %47 = call i32 @cf_preprocess_tokens(%struct.cf_preprocessor* %46, i32 0, %struct.cf_token** %9)
  br label %89

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %10, align 8
  br label %22

52:                                               ; preds = %22
  %53 = getelementptr inbounds %struct.dstr, %struct.dstr* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32* @os_fopen(i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %55, i32** %7, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %52
  %59 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %60 = load %struct.cf_token*, %struct.cf_token** %4, align 8
  %61 = load %struct.cf_token*, %struct.cf_token** %4, align 8
  %62 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cf_adderror(%struct.cf_preprocessor* %59, %struct.cf_token* %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32* null, i32* null)
  br label %89

66:                                               ; preds = %52
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @os_fread_utf8(i32* %67, i8** %8)
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @fclose(i32* %69)
  %71 = call i32 @cf_lexer_init(%struct.cf_lexer* %5)
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds %struct.dstr, %struct.dstr* %6, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @cf_lexer_lex(%struct.cf_lexer* %5, i8* %72, i32 %74)
  %76 = call %struct.cf_token* @cf_lexer_get_tokens(%struct.cf_lexer* %5)
  store %struct.cf_token* %76, %struct.cf_token** %9, align 8
  %77 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %78 = call i32 @cf_preprocess_tokens(%struct.cf_preprocessor* %77, i32 0, %struct.cf_token** %9)
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @bfree(i8* %79)
  %81 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %82 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %81, i32 0, i32 0
  %83 = bitcast %struct.TYPE_4__* %82 to { i64, %struct.cf_lexer* }*
  %84 = getelementptr inbounds { i64, %struct.cf_lexer* }, { i64, %struct.cf_lexer* }* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds { i64, %struct.cf_lexer* }, { i64, %struct.cf_lexer* }* %83, i32 0, i32 1
  %87 = load %struct.cf_lexer*, %struct.cf_lexer** %86, align 8
  %88 = call i32 @da_push_back(i64 %85, %struct.cf_lexer* %87, %struct.cf_lexer* %5)
  br label %89

89:                                               ; preds = %66, %58, %43
  %90 = call i32 @dstr_free(%struct.dstr* %6)
  ret void
}

declare dso_local i32 @dstr_init(%struct.dstr*) #1

declare dso_local i32 @dstr_copy_strref(%struct.dstr*, %struct.TYPE_3__*) #1

declare dso_local i32 @dstr_mid(%struct.dstr*, %struct.dstr*, i32, i64) #1

declare dso_local i32 @insert_path(%struct.cf_preprocessor*, %struct.dstr*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local %struct.cf_token* @cf_lexer_get_tokens(%struct.cf_lexer*) #1

declare dso_local i32 @cf_preprocess_tokens(%struct.cf_preprocessor*, i32, %struct.cf_token**) #1

declare dso_local i32* @os_fopen(i32, i8*) #1

declare dso_local i32 @cf_adderror(%struct.cf_preprocessor*, %struct.cf_token*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @os_fread_utf8(i32*, i8**) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @cf_lexer_init(%struct.cf_lexer*) #1

declare dso_local i32 @cf_lexer_lex(%struct.cf_lexer*, i8*, i32) #1

declare dso_local i32 @bfree(i8*) #1

declare dso_local i32 @da_push_back(i64, %struct.cf_lexer*, %struct.cf_lexer*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
