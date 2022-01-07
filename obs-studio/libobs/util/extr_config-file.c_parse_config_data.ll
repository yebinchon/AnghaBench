; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_config-file.c_parse_config_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_config-file.c_parse_config_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.darray = type { i32 }
%struct.lexer = type { i32 }
%struct.strref = type { i32, i32 }
%struct.base_token = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.config_section = type { i32 }

@PARSE_WHITESPACE = common dso_local global i32 0, align 4
@BASETOKEN_WHITESPACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.darray*, %struct.lexer*)* @parse_config_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_config_data(%struct.darray* %0, %struct.lexer* %1) #0 {
  %3 = alloca %struct.darray*, align 8
  %4 = alloca %struct.lexer*, align 8
  %5 = alloca %struct.strref, align 4
  %6 = alloca %struct.base_token, align 8
  %7 = alloca %struct.config_section*, align 8
  store %struct.darray* %0, %struct.darray** %3, align 8
  store %struct.lexer* %1, %struct.lexer** %4, align 8
  %8 = call i32 @base_token_clear(%struct.base_token* %6)
  br label %9

9:                                                ; preds = %59, %50, %2
  %10 = load %struct.lexer*, %struct.lexer** %4, align 8
  %11 = load i32, i32* @PARSE_WHITESPACE, align 4
  %12 = call i64 @lexer_getbasetoken(%struct.lexer* %10, %struct.base_token* %6, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %72

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %26, %14
  %16 = getelementptr inbounds %struct.base_token, %struct.base_token* %6, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BASETOKEN_WHITESPACE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.lexer*, %struct.lexer** %4, align 8
  %22 = load i32, i32* @PARSE_WHITESPACE, align 4
  %23 = call i64 @lexer_getbasetoken(%struct.lexer* %21, %struct.base_token* %6, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %72

26:                                               ; preds = %20
  br label %15

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.base_token, %struct.base_token* %6, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 91
  br i1 %33, label %34, label %51

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %49, %34
  %36 = getelementptr inbounds %struct.base_token, %struct.base_token* %6, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call i32 @is_newline(i8 signext %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = load %struct.lexer*, %struct.lexer** %4, align 8
  %45 = load i32, i32* @PARSE_WHITESPACE, align 4
  %46 = call i64 @lexer_getbasetoken(%struct.lexer* %44, %struct.base_token* %6, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %72

49:                                               ; preds = %43
  br label %35

50:                                               ; preds = %35
  br label %9

51:                                               ; preds = %27
  %52 = call i32 @strref_clear(%struct.strref* %5)
  %53 = load %struct.lexer*, %struct.lexer** %4, align 8
  %54 = call i32 @config_parse_string(%struct.lexer* %53, %struct.strref* %5, i8 signext 93)
  %55 = getelementptr inbounds %struct.strref, %struct.strref* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %72

59:                                               ; preds = %51
  %60 = load %struct.darray*, %struct.darray** %3, align 8
  %61 = call %struct.config_section* @darray_push_back_new(i32 4, %struct.darray* %60)
  store %struct.config_section* %61, %struct.config_section** %7, align 8
  %62 = getelementptr inbounds %struct.strref, %struct.strref* %5, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.strref, %struct.strref* %5, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @bstrdup_n(i32 %63, i32 %65)
  %67 = load %struct.config_section*, %struct.config_section** %7, align 8
  %68 = getelementptr inbounds %struct.config_section, %struct.config_section* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.config_section*, %struct.config_section** %7, align 8
  %70 = load %struct.lexer*, %struct.lexer** %4, align 8
  %71 = call i32 @config_parse_section(%struct.config_section* %69, %struct.lexer* %70)
  br label %9

72:                                               ; preds = %25, %48, %58, %9
  ret void
}

declare dso_local i32 @base_token_clear(%struct.base_token*) #1

declare dso_local i64 @lexer_getbasetoken(%struct.lexer*, %struct.base_token*, i32) #1

declare dso_local i32 @is_newline(i8 signext) #1

declare dso_local i32 @strref_clear(%struct.strref*) #1

declare dso_local i32 @config_parse_string(%struct.lexer*, %struct.strref*, i8 signext) #1

declare dso_local %struct.config_section* @darray_push_back_new(i32, %struct.darray*) #1

declare dso_local i32 @bstrdup_n(i32, i32) #1

declare dso_local i32 @config_parse_section(%struct.config_section*, %struct.lexer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
