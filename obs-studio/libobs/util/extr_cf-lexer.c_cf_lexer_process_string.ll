; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_lexer_process_string.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_lexer_process_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_lexer = type { i32 }
%struct.cf_token = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cf_lexer*, %struct.cf_token*)* @cf_lexer_process_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cf_lexer_process_string(%struct.cf_lexer* %0, %struct.cf_token* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cf_lexer*, align 8
  %5 = alloca %struct.cf_token*, align 8
  %6 = alloca i8, align 1
  store %struct.cf_lexer* %0, %struct.cf_lexer** %4, align 8
  store %struct.cf_token* %1, %struct.cf_token** %5, align 8
  %7 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %8 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %6, align 1
  %12 = load i8, i8* %6, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 60
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.cf_lexer*, %struct.cf_lexer** %4, align 8
  %17 = call i64 @cf_lexer_is_include(%struct.cf_lexer* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.cf_lexer*, %struct.cf_lexer** %4, align 8
  %21 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %22 = call i32 @cf_lexer_getstrtoken(%struct.cf_lexer* %20, %struct.cf_token* %21, i8 signext 62, i32 0)
  store i32 1, i32* %3, align 4
  br label %43

23:                                               ; preds = %15, %2
  %24 = load i8, i8* %6, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 34
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i8, i8* %6, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 39
  br i1 %30, label %31, label %41

31:                                               ; preds = %27, %23
  %32 = load %struct.cf_lexer*, %struct.cf_lexer** %4, align 8
  %33 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %34 = load i8, i8* %6, align 1
  %35 = load %struct.cf_lexer*, %struct.cf_lexer** %4, align 8
  %36 = call i64 @cf_lexer_is_include(%struct.cf_lexer* %35)
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @cf_lexer_getstrtoken(%struct.cf_lexer* %32, %struct.cf_token* %33, i8 signext %34, i32 %39)
  store i32 1, i32* %3, align 4
  br label %43

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %31, %19
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @cf_lexer_is_include(%struct.cf_lexer*) #1

declare dso_local i32 @cf_lexer_getstrtoken(%struct.cf_lexer*, %struct.cf_token*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
