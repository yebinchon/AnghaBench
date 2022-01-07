; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_config-file.c_config_parse_section.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_config-file.c_config_parse_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_section = type { i32 }
%struct.lexer = type { i32 }
%struct.base_token = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.strref = type { i32, i32 }
%struct.config_item = type { i32, i32 }

@PARSE_WHITESPACE = common dso_local global i32 0, align 4
@BASETOKEN_WHITESPACE = common dso_local global i64 0, align 8
@BASETOKEN_OTHER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_section*, %struct.lexer*)* @config_parse_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_parse_section(%struct.config_section* %0, %struct.lexer* %1) #0 {
  %3 = alloca %struct.config_section*, align 8
  %4 = alloca %struct.lexer*, align 8
  %5 = alloca %struct.base_token, align 8
  %6 = alloca %struct.strref, align 4
  %7 = alloca %struct.strref, align 4
  %8 = alloca %struct.config_item, align 4
  store %struct.config_section* %0, %struct.config_section** %3, align 8
  store %struct.lexer* %1, %struct.lexer** %4, align 8
  br label %9

9:                                                ; preds = %99, %76, %55, %2
  %10 = load %struct.lexer*, %struct.lexer** %4, align 8
  %11 = load i32, i32* @PARSE_WHITESPACE, align 4
  %12 = call i64 @lexer_getbasetoken(%struct.lexer* %10, %struct.base_token* %5, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %100

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %26, %14
  %16 = getelementptr inbounds %struct.base_token, %struct.base_token* %5, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BASETOKEN_WHITESPACE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.lexer*, %struct.lexer** %4, align 8
  %22 = load i32, i32* @PARSE_WHITESPACE, align 4
  %23 = call i64 @lexer_getbasetoken(%struct.lexer* %21, %struct.base_token* %5, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %100

26:                                               ; preds = %20
  br label %15

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.base_token, %struct.base_token* %5, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BASETOKEN_OTHER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.base_token, %struct.base_token* %5, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 35
  br i1 %38, label %39, label %56

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %47, %39
  %41 = load %struct.lexer*, %struct.lexer** %4, align 8
  %42 = load i32, i32* @PARSE_WHITESPACE, align 4
  %43 = call i64 @lexer_getbasetoken(%struct.lexer* %41, %struct.base_token* %5, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %100

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.base_token, %struct.base_token* %5, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @is_newline(i8 signext %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br i1 %54, label %40, label %55

55:                                               ; preds = %47
  br label %9

56:                                               ; preds = %32
  %57 = getelementptr inbounds %struct.base_token, %struct.base_token* %5, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 91
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.lexer*, %struct.lexer** %4, align 8
  %65 = getelementptr inbounds %struct.lexer, %struct.lexer* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 4
  br label %100

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69, %27
  %71 = getelementptr inbounds %struct.base_token, %struct.base_token* %5, i32 0, i32 1
  %72 = call i32 @strref_copy(%struct.strref* %6, %struct.TYPE_2__* %71)
  %73 = load %struct.lexer*, %struct.lexer** %4, align 8
  %74 = call i32 @config_parse_string(%struct.lexer* %73, %struct.strref* %6, i8 signext 61)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  br label %9

77:                                               ; preds = %70
  %78 = call i32 @strref_clear(%struct.strref* %7)
  %79 = load %struct.lexer*, %struct.lexer** %4, align 8
  %80 = call i32 @config_parse_string(%struct.lexer* %79, %struct.strref* %7, i8 signext 0)
  %81 = call i64 @strref_is_empty(%struct.strref* %7)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.strref, %struct.strref* %6, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.strref, %struct.strref* %6, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @bstrdup_n(i32 %85, i32 %87)
  %89 = getelementptr inbounds %struct.config_item, %struct.config_item* %8, i32 0, i32 1
  store i32 %88, i32* %89, align 4
  %90 = call i32 @bzalloc(i32 1)
  %91 = getelementptr inbounds %struct.config_item, %struct.config_item* %8, i32 0, i32 0
  store i32 %90, i32* %91, align 4
  %92 = load %struct.config_section*, %struct.config_section** %3, align 8
  %93 = getelementptr inbounds %struct.config_section, %struct.config_section* %92, i32 0, i32 0
  %94 = call i32 @darray_push_back(i32 8, i32* %93, %struct.config_item* %8)
  br label %99

95:                                               ; preds = %77
  %96 = load %struct.config_section*, %struct.config_section** %3, align 8
  %97 = getelementptr inbounds %struct.config_section, %struct.config_section* %96, i32 0, i32 0
  %98 = call i32 @config_add_item(i32* %97, %struct.strref* %6, %struct.strref* %7)
  br label %99

99:                                               ; preds = %95, %83
  br label %9

100:                                              ; preds = %25, %45, %63, %9
  ret void
}

declare dso_local i64 @lexer_getbasetoken(%struct.lexer*, %struct.base_token*, i32) #1

declare dso_local i32 @is_newline(i8 signext) #1

declare dso_local i32 @strref_copy(%struct.strref*, %struct.TYPE_2__*) #1

declare dso_local i32 @config_parse_string(%struct.lexer*, %struct.strref*, i8 signext) #1

declare dso_local i32 @strref_clear(%struct.strref*) #1

declare dso_local i64 @strref_is_empty(%struct.strref*) #1

declare dso_local i32 @bstrdup_n(i32, i32) #1

declare dso_local i32 @bzalloc(i32) #1

declare dso_local i32 @darray_push_back(i32, i32*, %struct.config_item*) #1

declare dso_local i32 @config_add_item(i32*, %struct.strref*, %struct.strref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
