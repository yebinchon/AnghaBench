; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-parser.h_cf_next_name.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-parser.h_cf_next_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_parser = type { i32 }

@PARSE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cf_parser*, i8**, i8*, i8*)* @cf_next_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cf_next_name(%struct.cf_parser* %0, i8** %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cf_parser*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.cf_parser* %0, %struct.cf_parser** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load %struct.cf_parser*, %struct.cf_parser** %6, align 8
  %11 = call i32 @cf_next_valid_token(%struct.cf_parser* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @PARSE_EOF, align 4
  store i32 %14, i32* %5, align 4
  br label %21

15:                                               ; preds = %4
  %16 = load %struct.cf_parser*, %struct.cf_parser** %6, align 8
  %17 = load i8**, i8*** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @cf_get_name(%struct.cf_parser* %16, i8** %17, i8* %18, i8* %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %15, %13
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @cf_next_valid_token(%struct.cf_parser*) #1

declare dso_local i32 @cf_get_name(%struct.cf_parser*, i8**, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
