; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_..utilcf-parser.h_cf_next_token.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_..utilcf-parser.h_cf_next_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_parser = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@CFTOKEN_SPACETAB = common dso_local global i64 0, align 8
@CFTOKEN_NEWLINE = common dso_local global i64 0, align 8
@CFTOKEN_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cf_parser*)* @cf_next_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cf_next_token(%struct.cf_parser* %0) #0 {
  %2 = alloca %struct.cf_parser*, align 8
  store %struct.cf_parser* %0, %struct.cf_parser** %2, align 8
  %3 = load %struct.cf_parser*, %struct.cf_parser** %2, align 8
  %4 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CFTOKEN_SPACETAB, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load %struct.cf_parser*, %struct.cf_parser** %2, align 8
  %12 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CFTOKEN_NEWLINE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %10
  %19 = load %struct.cf_parser*, %struct.cf_parser** %2, align 8
  %20 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CFTOKEN_NONE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load %struct.cf_parser*, %struct.cf_parser** %2, align 8
  %28 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 1
  store %struct.TYPE_2__* %30, %struct.TYPE_2__** %28, align 8
  br label %31

31:                                               ; preds = %26, %18, %10, %1
  br label %32

32:                                               ; preds = %50, %31
  %33 = load %struct.cf_parser*, %struct.cf_parser** %2, align 8
  %34 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CFTOKEN_SPACETAB, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %32
  %41 = load %struct.cf_parser*, %struct.cf_parser** %2, align 8
  %42 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CFTOKEN_NEWLINE, align 8
  %47 = icmp eq i64 %45, %46
  br label %48

48:                                               ; preds = %40, %32
  %49 = phi i1 [ true, %32 ], [ %47, %40 ]
  br i1 %49, label %50, label %55

50:                                               ; preds = %48
  %51 = load %struct.cf_parser*, %struct.cf_parser** %2, align 8
  %52 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 1
  store %struct.TYPE_2__* %54, %struct.TYPE_2__** %52, align 8
  br label %32

55:                                               ; preds = %48
  %56 = load %struct.cf_parser*, %struct.cf_parser** %2, align 8
  %57 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CFTOKEN_NONE, align 8
  %62 = icmp ne i64 %60, %61
  %63 = zext i1 %62 to i32
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
