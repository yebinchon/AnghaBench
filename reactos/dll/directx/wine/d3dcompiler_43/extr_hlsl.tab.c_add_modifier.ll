; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_hlsl.tab.c_add_modifier.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_hlsl.tab.c_add_modifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.YYLTYPE = type { i32, i32 }

@hlsl_ctx = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@HLSL_LEVEL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"modifier '%s' already specified\00", align 1
@HLSL_MODIFIER_ROW_MAJOR = common dso_local global i32 0, align 4
@HLSL_MODIFIER_COLUMN_MAJOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"more than one matrix majority keyword\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.YYLTYPE*)* @add_modifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_modifier(i32 %0, i32 %1, %struct.YYLTYPE* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.YYLTYPE*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.YYLTYPE* %2, %struct.YYLTYPE** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hlsl_ctx, i32 0, i32 0), align 4
  %14 = load %struct.YYLTYPE*, %struct.YYLTYPE** %7, align 8
  %15 = getelementptr inbounds %struct.YYLTYPE, %struct.YYLTYPE* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.YYLTYPE*, %struct.YYLTYPE** %7, align 8
  %18 = getelementptr inbounds %struct.YYLTYPE, %struct.YYLTYPE* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @HLSL_LEVEL_ERROR, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @debug_modifiers(i32 %21)
  %23 = call i32 (i32, i32, i32, i32, i8*, ...) @hlsl_report_message(i32 %13, i32 %16, i32 %19, i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %4, align 4
  br label %54

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @HLSL_MODIFIER_ROW_MAJOR, align 4
  %28 = load i32, i32* @HLSL_MODIFIER_COLUMN_MAJOR, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @HLSL_MODIFIER_ROW_MAJOR, align 4
  %35 = load i32, i32* @HLSL_MODIFIER_COLUMN_MAJOR, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hlsl_ctx, i32 0, i32 0), align 4
  %41 = load %struct.YYLTYPE*, %struct.YYLTYPE** %7, align 8
  %42 = getelementptr inbounds %struct.YYLTYPE, %struct.YYLTYPE* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.YYLTYPE*, %struct.YYLTYPE** %7, align 8
  %45 = getelementptr inbounds %struct.YYLTYPE, %struct.YYLTYPE* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HLSL_LEVEL_ERROR, align 4
  %48 = call i32 (i32, i32, i32, i32, i8*, ...) @hlsl_report_message(i32 %40, i32 %43, i32 %46, i32 %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %4, align 4
  br label %54

50:                                               ; preds = %32, %25
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %39, %12
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @hlsl_report_message(i32, i32, i32, i32, i8*, ...) #1

declare dso_local i32 @debug_modifiers(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
