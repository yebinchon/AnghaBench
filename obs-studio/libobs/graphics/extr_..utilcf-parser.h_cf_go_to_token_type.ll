; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_..utilcf-parser.h_cf_go_to_token_type.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_..utilcf-parser.h_cf_go_to_token_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_parser = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@CFTOKEN_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cf_parser*, i32)* @cf_go_to_token_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cf_go_to_token_type(%struct.cf_parser* %0, i32 %1) #0 {
  %3 = alloca %struct.cf_parser*, align 8
  %4 = alloca i32, align 4
  store %struct.cf_parser* %0, %struct.cf_parser** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %24, %2
  %6 = load %struct.cf_parser*, %struct.cf_parser** %3, align 8
  %7 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CFTOKEN_NONE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %5
  %14 = load %struct.cf_parser*, %struct.cf_parser** %3, align 8
  %15 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = icmp ne i64 %18, %20
  br label %22

22:                                               ; preds = %13, %5
  %23 = phi i1 [ false, %5 ], [ %21, %13 ]
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  %25 = load %struct.cf_parser*, %struct.cf_parser** %3, align 8
  %26 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 1
  store %struct.TYPE_2__* %28, %struct.TYPE_2__** %26, align 8
  br label %5

29:                                               ; preds = %22
  %30 = load %struct.cf_parser*, %struct.cf_parser** %3, align 8
  %31 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CFTOKEN_NONE, align 8
  %36 = icmp ne i64 %34, %35
  %37 = zext i1 %36 to i32
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
