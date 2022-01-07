; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_lexer_is_include.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_lexer_is_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_lexer = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.cf_token* }
%struct.cf_token = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cf_lexer*)* @cf_lexer_is_include to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cf_lexer_is_include(%struct.cf_lexer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cf_lexer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.cf_token*, align 8
  store %struct.cf_lexer* %0, %struct.cf_lexer** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.cf_lexer*, %struct.cf_lexer** %3, align 8
  %9 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  br label %12

12:                                               ; preds = %68, %1
  %13 = load i64, i64* %6, align 8
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %71

15:                                               ; preds = %12
  %16 = load %struct.cf_lexer*, %struct.cf_lexer** %3, align 8
  %17 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.cf_token*, %struct.cf_token** %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = sub i64 %20, 1
  %22 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %19, i64 %21
  store %struct.cf_token* %22, %struct.cf_token** %7, align 8
  %23 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %24 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @is_space_or_tab(i8 signext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  br label %68

31:                                               ; preds = %15
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %31
  %35 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %36 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %35, i32 0, i32 0
  %37 = call i64 @strref_cmp(%struct.TYPE_4__* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %41 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %40, i32 0, i32 0
  %42 = call i64 @strref_cmp(%struct.TYPE_4__* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %71

45:                                               ; preds = %39, %34
  store i32 1, i32* %4, align 4
  br label %67

46:                                               ; preds = %31
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %46
  %50 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %51 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 35
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %71

58:                                               ; preds = %49
  store i32 1, i32* %5, align 4
  br label %66

59:                                               ; preds = %46
  %60 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %61 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8, i8* %63, align 1
  %65 = call i32 @is_newline(i8 signext %64)
  store i32 %65, i32* %2, align 4
  br label %80

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %45
  br label %68

68:                                               ; preds = %67, %30
  %69 = load i64, i64* %6, align 8
  %70 = add i64 %69, -1
  store i64 %70, i64* %6, align 8
  br label %12

71:                                               ; preds = %57, %44, %12
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br label %77

77:                                               ; preds = %74, %71
  %78 = phi i1 [ false, %71 ], [ %76, %74 ]
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %77, %59
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @is_space_or_tab(i8 signext) #1

declare dso_local i64 @strref_cmp(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @is_newline(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
