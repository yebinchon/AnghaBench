; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_decl.c_is_in_out_specifier.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_decl.c_is_in_out_specifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_parser = type { i32 }
%struct.strref = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@CALL_PARAM_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@CALL_PARAM_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cf_parser*, %struct.strref*, i32*)* @is_in_out_specifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_in_out_specifier(%struct.cf_parser* %0, %struct.strref* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_parser*, align 8
  %6 = alloca %struct.strref*, align 8
  %7 = alloca i32*, align 8
  store %struct.cf_parser* %0, %struct.cf_parser** %5, align 8
  store %struct.strref* %1, %struct.strref** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.strref*, %struct.strref** %6, align 8
  %9 = call i64 @strref_cmp(%struct.strref* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %3
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CALL_PARAM_IN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.cf_parser*, %struct.cf_parser** %5, align 8
  %19 = call i32 @err_specifier_exists(%struct.cf_parser* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %11
  %21 = load i32, i32* @CALL_PARAM_IN, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  br label %45

25:                                               ; preds = %3
  %26 = load %struct.strref*, %struct.strref** %6, align 8
  %27 = call i64 @strref_cmp(%struct.strref* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CALL_PARAM_OUT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.cf_parser*, %struct.cf_parser** %5, align 8
  %37 = call i32 @err_specifier_exists(%struct.cf_parser* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %29
  %39 = load i32, i32* @CALL_PARAM_OUT, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %44

43:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %46

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %20
  store i32 1, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %43
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @strref_cmp(%struct.strref*, i8*) #1

declare dso_local i32 @err_specifier_exists(%struct.cf_parser*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
