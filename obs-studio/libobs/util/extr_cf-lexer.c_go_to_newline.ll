; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_go_to_newline.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_go_to_newline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_token = type { i64 }

@CFTOKEN_NEWLINE = common dso_local global i64 0, align 8
@CFTOKEN_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cf_token**)* @go_to_newline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go_to_newline(%struct.cf_token** %0) #0 {
  %2 = alloca %struct.cf_token**, align 8
  %3 = alloca %struct.cf_token*, align 8
  store %struct.cf_token** %0, %struct.cf_token*** %2, align 8
  %4 = load %struct.cf_token**, %struct.cf_token*** %2, align 8
  %5 = load %struct.cf_token*, %struct.cf_token** %4, align 8
  store %struct.cf_token* %5, %struct.cf_token** %3, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load %struct.cf_token*, %struct.cf_token** %3, align 8
  %8 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CFTOKEN_NEWLINE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = load %struct.cf_token*, %struct.cf_token** %3, align 8
  %14 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CFTOKEN_NONE, align 8
  %17 = icmp ne i64 %15, %16
  br label %18

18:                                               ; preds = %12, %6
  %19 = phi i1 [ false, %6 ], [ %17, %12 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load %struct.cf_token*, %struct.cf_token** %3, align 8
  %22 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %21, i32 1
  store %struct.cf_token* %22, %struct.cf_token** %3, align 8
  br label %6

23:                                               ; preds = %18
  %24 = load %struct.cf_token*, %struct.cf_token** %3, align 8
  %25 = load %struct.cf_token**, %struct.cf_token*** %2, align 8
  store %struct.cf_token* %24, %struct.cf_token** %25, align 8
  %26 = load %struct.cf_token*, %struct.cf_token** %3, align 8
  %27 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CFTOKEN_NONE, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i32
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
