; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_config-file.c_config_parse_string.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_config-file.c_config_parse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lexer = type { i32 }
%struct.strref = type { i32 }
%struct.base_token = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@PARSE_WHITESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lexer*, %struct.strref*, i8)* @config_parse_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_parse_string(%struct.lexer* %0, %struct.strref* %1, i8 signext %2) #0 {
  %4 = alloca %struct.lexer*, align 8
  %5 = alloca %struct.strref*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.base_token, align 8
  store %struct.lexer* %0, %struct.lexer** %4, align 8
  store %struct.strref* %1, %struct.strref** %5, align 8
  store i8 %2, i8* %6, align 1
  %9 = load i8, i8* %6, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %7, align 4
  %13 = call i32 @base_token_clear(%struct.base_token* %8)
  br label %14

14:                                               ; preds = %51, %3
  %15 = load %struct.lexer*, %struct.lexer** %4, align 8
  %16 = load i32, i32* @PARSE_WHITESPACE, align 4
  %17 = call i64 @lexer_getbasetoken(%struct.lexer* %15, %struct.base_token* %8, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %14
  %20 = load i8, i8* %6, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.base_token, %struct.base_token* %8, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* %6, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 1, i32* %7, align 4
  br label %55

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.base_token, %struct.base_token* %8, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i64 @is_newline(i8 signext %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %55

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  br label %51

42:                                               ; preds = %19
  %43 = getelementptr inbounds %struct.base_token, %struct.base_token* %8, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i64 @is_newline(i8 signext %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 1, i32* %7, align 4
  br label %55

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %41
  %52 = load %struct.strref*, %struct.strref** %5, align 8
  %53 = getelementptr inbounds %struct.base_token, %struct.base_token* %8, i32 0, i32 0
  %54 = call i32 @strref_add(%struct.strref* %52, %struct.TYPE_2__* %53)
  br label %14

55:                                               ; preds = %49, %39, %31, %14
  %56 = load %struct.strref*, %struct.strref** %5, align 8
  %57 = call i32 @remove_ref_whitespace(%struct.strref* %56)
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @base_token_clear(%struct.base_token*) #1

declare dso_local i64 @lexer_getbasetoken(%struct.lexer*, %struct.base_token*, i32) #1

declare dso_local i64 @is_newline(i8 signext) #1

declare dso_local i32 @strref_add(%struct.strref*, %struct.TYPE_2__*) #1

declare dso_local i32 @remove_ref_whitespace(%struct.strref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
