; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_watch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_exec_command_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OT_NORMAL = common dso_local global i32 0, align 4
@PSQL_CMD_SKIP_LINE = common dso_local global i32 0, align 4
@PSQL_CMD_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @exec_command_watch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_command_watch(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @OT_NORMAL, align 4
  %17 = call i8* @psql_scan_slash_option(i32 %15, i32 %16, i32* null, i32 1)
  store i8* %17, i8** %10, align 8
  store double 2.000000e+00, double* %11, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load i8*, i8** %10, align 8
  %22 = call double @strtod(i8* %21, i32* null)
  store double %22, double* %11, align 8
  %23 = load double, double* %11, align 8
  %24 = fcmp ole double %23, 0.000000e+00
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store double 1.000000e+00, double* %11, align 8
  br label %26

26:                                               ; preds = %25, %20
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @free(i8* %27)
  br label %29

29:                                               ; preds = %26, %14
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @copy_previous_query(i32 %30, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load double, double* %11, align 8
  %35 = call i32 @do_watch(i32 %33, double %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @resetPQExpBuffer(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @psql_scan_reset(i32 %38)
  br label %43

40:                                               ; preds = %4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @ignore_slash_options(i32 %41)
  br label %43

43:                                               ; preds = %40, %29
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @PSQL_CMD_SKIP_LINE, align 4
  br label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @PSQL_CMD_ERROR, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  ret i32 %51
}

declare dso_local i8* @psql_scan_slash_option(i32, i32, i32*, i32) #1

declare dso_local double @strtod(i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @copy_previous_query(i32, i32) #1

declare dso_local i32 @do_watch(i32, double) #1

declare dso_local i32 @resetPQExpBuffer(i32) #1

declare dso_local i32 @psql_scan_reset(i32) #1

declare dso_local i32 @ignore_slash_options(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
