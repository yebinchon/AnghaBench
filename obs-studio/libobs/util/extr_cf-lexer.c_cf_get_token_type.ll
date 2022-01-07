; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_get_token_type.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_get_token_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_token = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.base_token = type { i32 }

@CFTOKEN_NAME = common dso_local global i32 0, align 4
@CFTOKEN_NUM = common dso_local global i32 0, align 4
@CFTOKEN_NEWLINE = common dso_local global i32 0, align 4
@CFTOKEN_SPACETAB = common dso_local global i32 0, align 4
@CFTOKEN_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cf_token*, %struct.base_token*)* @cf_get_token_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cf_get_token_type(%struct.cf_token* %0, %struct.base_token* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cf_token*, align 8
  %5 = alloca %struct.base_token*, align 8
  store %struct.cf_token* %0, %struct.cf_token** %4, align 8
  store %struct.base_token* %1, %struct.base_token** %5, align 8
  %6 = load %struct.base_token*, %struct.base_token** %5, align 8
  %7 = getelementptr inbounds %struct.base_token, %struct.base_token* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %26 [
    i32 132, label %9
    i32 131, label %11
    i32 128, label %13
    i32 130, label %25
    i32 129, label %25
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @CFTOKEN_NAME, align 4
  store i32 %10, i32* %3, align 4
  br label %28

11:                                               ; preds = %2
  %12 = load i32, i32* @CFTOKEN_NUM, align 4
  store i32 %12, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.cf_token*, %struct.cf_token** %4, align 8
  %15 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @is_newline(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @CFTOKEN_NEWLINE, align 4
  store i32 %22, i32* %3, align 4
  br label %28

23:                                               ; preds = %13
  %24 = load i32, i32* @CFTOKEN_SPACETAB, align 4
  store i32 %24, i32* %3, align 4
  br label %28

25:                                               ; preds = %2, %2
  br label %26

26:                                               ; preds = %2, %25
  %27 = load i32, i32* @CFTOKEN_OTHER, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %23, %21, %11, %9
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @is_newline(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
