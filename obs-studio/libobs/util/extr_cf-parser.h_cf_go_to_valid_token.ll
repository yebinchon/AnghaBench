; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-parser.h_cf_go_to_valid_token.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-parser.h_cf_go_to_valid_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_parser = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cf_parser*, i8*, i8*)* @cf_go_to_valid_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cf_go_to_valid_token(%struct.cf_parser* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_parser*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.cf_parser* %0, %struct.cf_parser** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.cf_parser*, %struct.cf_parser** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @cf_go_to_token(%struct.cf_parser* %8, i8* %9, i8* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load %struct.cf_parser*, %struct.cf_parser** %5, align 8
  %15 = call i32 @cf_adderror_unexpected_eof(%struct.cf_parser* %14)
  store i32 0, i32* %4, align 4
  br label %17

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32, i32* %4, align 4
  ret i32 %18
}

declare dso_local i32 @cf_go_to_token(%struct.cf_parser*, i8*, i8*) #1

declare dso_local i32 @cf_adderror_unexpected_eof(%struct.cf_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
