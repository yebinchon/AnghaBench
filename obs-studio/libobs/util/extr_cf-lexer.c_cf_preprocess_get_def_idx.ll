; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_get_def_idx.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_get_def_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_preprocessor = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.cf_def* }
%struct.cf_def = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.strref = type { i32 }

@INVALID_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cf_preprocessor*, %struct.strref*)* @cf_preprocess_get_def_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cf_preprocess_get_def_idx(%struct.cf_preprocessor* %0, %struct.strref* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.cf_preprocessor*, align 8
  %5 = alloca %struct.strref*, align 8
  %6 = alloca %struct.cf_def*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cf_def*, align 8
  store %struct.cf_preprocessor* %0, %struct.cf_preprocessor** %4, align 8
  store %struct.strref* %1, %struct.strref** %5, align 8
  %9 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %4, align 8
  %10 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.cf_def*, %struct.cf_def** %11, align 8
  store %struct.cf_def* %12, %struct.cf_def** %6, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %33, %2
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %4, align 8
  %16 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %14, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %13
  %21 = load %struct.cf_def*, %struct.cf_def** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.cf_def, %struct.cf_def* %21, i64 %22
  store %struct.cf_def* %23, %struct.cf_def** %8, align 8
  %24 = load %struct.cf_def*, %struct.cf_def** %8, align 8
  %25 = getelementptr inbounds %struct.cf_def, %struct.cf_def* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.strref*, %struct.strref** %5, align 8
  %28 = call i64 @strref_cmp_strref(i32* %26, %struct.strref* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i64, i64* %7, align 8
  store i64 %31, i64* %3, align 8
  br label %38

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %13

36:                                               ; preds = %13
  %37 = load i64, i64* @INVALID_INDEX, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %36, %30
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local i64 @strref_cmp_strref(i32*, %struct.strref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
