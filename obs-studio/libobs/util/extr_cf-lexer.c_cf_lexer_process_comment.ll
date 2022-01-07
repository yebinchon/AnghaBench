; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_lexer_process_comment.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_lexer_process_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_lexer = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i8* }
%struct.cf_token = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8*, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@CFTOKEN_SPACETAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cf_lexer*, %struct.cf_token*)* @cf_lexer_process_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cf_lexer_process_comment(%struct.cf_lexer* %0, %struct.cf_token* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cf_lexer*, align 8
  %5 = alloca %struct.cf_token*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.cf_lexer* %0, %struct.cf_lexer** %4, align 8
  store %struct.cf_token* %1, %struct.cf_token** %5, align 8
  %8 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %9 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @cf_is_comment(i8* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %108

15:                                               ; preds = %2
  %16 = load %struct.cf_lexer*, %struct.cf_lexer** %4, align 8
  %17 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %6, align 8
  %20 = call i32 @cf_pass_any_splices(i8** %6)
  %21 = load %struct.cf_lexer*, %struct.cf_lexer** %4, align 8
  %22 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = call i32 @strcpy(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %27 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 47
  br i1 %32, label %33, label %51

33:                                               ; preds = %15
  br label %34

34:                                               ; preds = %48, %33
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @is_newline(i8 signext %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %40, %34
  %47 = phi i1 [ false, %34 ], [ %45, %40 ]
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = call i32 @cf_pass_any_splices(i8** %6)
  br label %34

50:                                               ; preds = %46
  br label %87

51:                                               ; preds = %15
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 42
  br i1 %55, label %56, label %86

56:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  %57 = load %struct.cf_lexer*, %struct.cf_lexer** %4, align 8
  %58 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %84, %56
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %59
  %65 = call i32 @cf_pass_any_splices(i8** %6)
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i8*, i8** %6, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 47
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %6, align 8
  %76 = load %struct.cf_lexer*, %struct.cf_lexer** %4, align 8
  %77 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  br label %85

78:                                               ; preds = %68, %64
  %79 = load i8*, i8** %6, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 42
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %78
  br label %59

85:                                               ; preds = %73, %59
  br label %86

86:                                               ; preds = %85, %51
  br label %87

87:                                               ; preds = %86, %50
  %88 = load i8*, i8** %6, align 8
  %89 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %90 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = ptrtoint i8* %88 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %97 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, %95
  store i64 %100, i64* %98, align 8
  %101 = load i32, i32* @CFTOKEN_SPACETAB, align 4
  %102 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %103 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = load %struct.cf_lexer*, %struct.cf_lexer** %4, align 8
  %106 = getelementptr inbounds %struct.cf_lexer, %struct.cf_lexer* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i8* %104, i8** %107, align 8
  store i32 1, i32* %3, align 4
  br label %108

108:                                              ; preds = %87, %14
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @cf_is_comment(i8*) #1

declare dso_local i32 @cf_pass_any_splices(i8**) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @is_newline(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
