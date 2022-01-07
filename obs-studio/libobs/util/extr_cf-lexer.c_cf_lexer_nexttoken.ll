; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_lexer_nexttoken.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_lexer_nexttoken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_lexer = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i8* }
%struct.cf_token = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8*, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.base_token = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i8*, i64 }

@PARSE_WHITESPACE = common dso_local global i32 0, align 4
@BASETOKEN_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cf_lexer*, %struct.cf_token*)* @cf_lexer_nexttoken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cf_lexer_nexttoken(%struct.cf_lexer* %0, %struct.cf_token* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cf_lexer*, align 8
  %5 = alloca %struct.cf_token*, align 8
  %6 = alloca %struct.base_token, align 8
  %7 = alloca %struct.base_token, align 8
  %8 = alloca i32, align 4
  store %struct.cf_lexer* %0, %struct.cf_lexer** %4, align 8
  store %struct.cf_token* %1, %struct.cf_token** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = call i32 @base_token_clear(%struct.base_token* %6)
  %10 = call i32 @base_token_clear(%struct.base_token* %7)
  %11 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %12 = call i32 @cf_token_clear(%struct.cf_token* %11)
  br label %13

13:                                               ; preds = %90, %35, %2
  %14 = load %struct.cf_lexer*, %struct.cf_lexer** %4, align 8
  %15 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %14, i32 0, i32 0
  %16 = load i32, i32* @PARSE_WHITESPACE, align 4
  %17 = call i64 @lexer_getbasetoken(%struct.TYPE_7__* %15, %struct.base_token* %6, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %104

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.base_token, %struct.base_token* %6, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 95
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @BASETOKEN_ALPHA, align 4
  %28 = getelementptr inbounds %struct.base_token, %struct.base_token* %6, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %19
  %30 = getelementptr inbounds %struct.base_token, %struct.base_token* %6, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @cf_is_splice(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.base_token, %struct.base_token* %6, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = call i32 @newline_size(i8* %39)
  %41 = load %struct.cf_lexer*, %struct.cf_lexer** %4, align 8
  %42 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = sext i32 %40 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %43, align 8
  br label %13

47:                                               ; preds = %29
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %76, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.base_token, %struct.base_token* %6, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %55 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  %57 = load %struct.cf_lexer*, %struct.cf_lexer** %4, align 8
  %58 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %61 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.cf_lexer*, %struct.cf_lexer** %4, align 8
  %64 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %65 = call i64 @cf_lexer_process_comment(%struct.cf_lexer* %63, %struct.cf_token* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %128

68:                                               ; preds = %50
  %69 = load %struct.cf_lexer*, %struct.cf_lexer** %4, align 8
  %70 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %71 = call i64 @cf_lexer_process_string(%struct.cf_lexer* %69, %struct.cf_token* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 1, i32* %3, align 4
  br label %128

74:                                               ; preds = %68
  %75 = call i32 @base_token_copy(%struct.base_token* %7, %struct.base_token* %6)
  store i32 1, i32* %8, align 4
  br label %90

76:                                               ; preds = %47
  %77 = call i64 @cf_is_token_break(%struct.base_token* %7, %struct.base_token* %6)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.base_token, %struct.base_token* %6, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.cf_lexer*, %struct.cf_lexer** %4, align 8
  %84 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = sub i64 0, %82
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %85, align 8
  br label %104

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %89, %74
  %91 = load %struct.cf_lexer*, %struct.cf_lexer** %4, align 8
  %92 = getelementptr inbounds %struct.base_token, %struct.base_token* %6, i32 0, i32 0
  %93 = call i32 @cf_lexer_write_strref(%struct.cf_lexer* %91, %struct.TYPE_8__* %92)
  %94 = getelementptr inbounds %struct.base_token, %struct.base_token* %6, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %98 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %96
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %99, align 8
  br label %13

104:                                              ; preds = %79, %13
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %104
  %108 = load %struct.cf_lexer*, %struct.cf_lexer** %4, align 8
  %109 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %113 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = ptrtoint i8* %111 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %120 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  store i64 %118, i64* %121, align 8
  %122 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %123 = call i32 @cf_get_token_type(%struct.cf_token* %122, %struct.base_token* %7)
  %124 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %125 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %107, %104
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %73, %67
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @base_token_clear(%struct.base_token*) #1

declare dso_local i32 @cf_token_clear(%struct.cf_token*) #1

declare dso_local i64 @lexer_getbasetoken(%struct.TYPE_7__*, %struct.base_token*, i32) #1

declare dso_local i64 @cf_is_splice(i8*) #1

declare dso_local i32 @newline_size(i8*) #1

declare dso_local i64 @cf_lexer_process_comment(%struct.cf_lexer*, %struct.cf_token*) #1

declare dso_local i64 @cf_lexer_process_string(%struct.cf_lexer*, %struct.cf_token*) #1

declare dso_local i32 @base_token_copy(%struct.base_token*, %struct.base_token*) #1

declare dso_local i64 @cf_is_token_break(%struct.base_token*, %struct.base_token*) #1

declare dso_local i32 @cf_lexer_write_strref(%struct.cf_lexer*, %struct.TYPE_8__*) #1

declare dso_local i32 @cf_get_token_type(%struct.cf_token*, %struct.base_token*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
