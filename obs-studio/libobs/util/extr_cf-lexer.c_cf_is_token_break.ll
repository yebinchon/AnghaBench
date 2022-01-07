; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_is_token_break.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_is_token_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.base_token = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.base_token*, %struct.base_token*)* @cf_is_token_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cf_is_token_break(%struct.base_token* %0, %struct.base_token* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.base_token*, align 8
  %5 = alloca %struct.base_token*, align 8
  store %struct.base_token* %0, %struct.base_token** %4, align 8
  store %struct.base_token* %1, %struct.base_token** %5, align 8
  %6 = load %struct.base_token*, %struct.base_token** %4, align 8
  %7 = getelementptr inbounds %struct.base_token, %struct.base_token* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %77 [
    i32 132, label %9
    i32 131, label %21
    i32 128, label %41
    i32 129, label %59
    i32 130, label %76
  ]

9:                                                ; preds = %2
  %10 = load %struct.base_token*, %struct.base_token** %5, align 8
  %11 = getelementptr inbounds %struct.base_token, %struct.base_token* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 129
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load %struct.base_token*, %struct.base_token** %5, align 8
  %16 = getelementptr inbounds %struct.base_token, %struct.base_token* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 128
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %9
  store i32 1, i32* %3, align 4
  br label %78

20:                                               ; preds = %14
  br label %77

21:                                               ; preds = %2
  %22 = load %struct.base_token*, %struct.base_token** %5, align 8
  %23 = getelementptr inbounds %struct.base_token, %struct.base_token* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 128
  br i1 %25, label %39, label %26

26:                                               ; preds = %21
  %27 = load %struct.base_token*, %struct.base_token** %5, align 8
  %28 = getelementptr inbounds %struct.base_token, %struct.base_token* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 129
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load %struct.base_token*, %struct.base_token** %5, align 8
  %33 = getelementptr inbounds %struct.base_token, %struct.base_token* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 46
  br i1 %38, label %39, label %40

39:                                               ; preds = %31, %21
  store i32 1, i32* %3, align 4
  br label %78

40:                                               ; preds = %31, %26
  br label %77

41:                                               ; preds = %2
  %42 = load %struct.base_token*, %struct.base_token** %4, align 8
  %43 = getelementptr inbounds %struct.base_token, %struct.base_token* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i32 @is_space_or_tab(i8 signext %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load %struct.base_token*, %struct.base_token** %5, align 8
  %51 = getelementptr inbounds %struct.base_token, %struct.base_token* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8, i8* %53, align 1
  %55 = call i32 @is_space_or_tab(i8 signext %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %77

58:                                               ; preds = %49, %41
  store i32 1, i32* %3, align 4
  br label %78

59:                                               ; preds = %2
  %60 = load %struct.base_token*, %struct.base_token** %4, align 8
  %61 = getelementptr inbounds %struct.base_token, %struct.base_token* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 46
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load %struct.base_token*, %struct.base_token** %5, align 8
  %69 = getelementptr inbounds %struct.base_token, %struct.base_token* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 131
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.base_token*, %struct.base_token** %4, align 8
  %74 = getelementptr inbounds %struct.base_token, %struct.base_token* %73, i32 0, i32 0
  store i32 131, i32* %74, align 8
  br label %77

75:                                               ; preds = %67, %59
  br label %76

76:                                               ; preds = %2, %75
  store i32 1, i32* %3, align 4
  br label %78

77:                                               ; preds = %2, %72, %57, %40, %20
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %76, %58, %39, %19
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @is_space_or_tab(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
