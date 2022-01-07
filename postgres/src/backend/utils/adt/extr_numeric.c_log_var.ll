; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_log_var.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numeric.c_log_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }

@NUMERIC_MIN_SIG_DIGITS = common dso_local global i32 0, align 4
@NUMERIC_MIN_DISPLAY_SCALE = common dso_local global i32 0, align 4
@NUMERIC_MAX_DISPLAY_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*)* @log_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_var(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__, align 4
  %8 = alloca %struct.TYPE_13__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %15 = call i32 @init_var(%struct.TYPE_13__* %7)
  %16 = call i32 @init_var(%struct.TYPE_13__* %8)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = call i32 @estimate_ln_dweight(%struct.TYPE_13__* %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = call i32 @estimate_ln_dweight(%struct.TYPE_13__* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @NUMERIC_MIN_SIG_DIGITS, align 4
  %25 = load i32, i32* %11, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @Max(i32 %27, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @Max(i32 %32, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @NUMERIC_MIN_DISPLAY_SCALE, align 4
  %39 = call i32 @Max(i32 %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @NUMERIC_MAX_DISPLAY_SCALE, align 4
  %42 = call i32 @Min(i32 %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 %45, %46
  %48 = add nsw i32 %47, 8
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @NUMERIC_MIN_DISPLAY_SCALE, align 4
  %51 = call i32 @Max(i32 %49, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %54, %55
  %57 = add nsw i32 %56, 8
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* @NUMERIC_MIN_DISPLAY_SCALE, align 4
  %60 = call i32 @Max(i32 %58, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @ln_var(%struct.TYPE_13__* %61, %struct.TYPE_13__* %7, i32 %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @ln_var(%struct.TYPE_13__* %64, %struct.TYPE_13__* %8, i32 %65)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @div_var_fast(%struct.TYPE_13__* %8, %struct.TYPE_13__* %7, %struct.TYPE_13__* %67, i32 %68, i32 1)
  %70 = call i32 @free_var(%struct.TYPE_13__* %8)
  %71 = call i32 @free_var(%struct.TYPE_13__* %7)
  ret void
}

declare dso_local i32 @init_var(%struct.TYPE_13__*) #1

declare dso_local i32 @estimate_ln_dweight(%struct.TYPE_13__*) #1

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @ln_var(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @div_var_fast(%struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @free_var(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
