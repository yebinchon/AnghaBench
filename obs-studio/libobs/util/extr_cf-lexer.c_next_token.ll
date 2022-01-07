; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_next_token.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_next_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_token = type { i64 }

@CFTOKEN_NONE = common dso_local global i64 0, align 8
@CFTOKEN_SPACETAB = common dso_local global i64 0, align 8
@CFTOKEN_NEWLINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cf_token**, i32)* @next_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_token(%struct.cf_token** %0, i32 %1) #0 {
  %3 = alloca %struct.cf_token**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_token*, align 8
  store %struct.cf_token** %0, %struct.cf_token*** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cf_token**, %struct.cf_token*** %3, align 8
  %7 = load %struct.cf_token*, %struct.cf_token** %6, align 8
  store %struct.cf_token* %7, %struct.cf_token** %5, align 8
  %8 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %9 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CFTOKEN_NONE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %15 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %14, i32 1
  store %struct.cf_token* %15, %struct.cf_token** %5, align 8
  br label %16

16:                                               ; preds = %13, %2
  br label %17

17:                                               ; preds = %36, %16
  %18 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %19 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CFTOKEN_SPACETAB, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %28 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CFTOKEN_NEWLINE, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %26, %23
  %33 = phi i1 [ true, %23 ], [ %31, %26 ]
  br label %34

34:                                               ; preds = %32, %17
  %35 = phi i1 [ false, %17 ], [ %33, %32 ]
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %38 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %37, i32 1
  store %struct.cf_token* %38, %struct.cf_token** %5, align 8
  br label %17

39:                                               ; preds = %34
  %40 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %41 = load %struct.cf_token**, %struct.cf_token*** %3, align 8
  store %struct.cf_token* %40, %struct.cf_token** %41, align 8
  %42 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %43 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CFTOKEN_NONE, align 8
  %46 = icmp ne i64 %44, %45
  %47 = zext i1 %46 to i32
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
