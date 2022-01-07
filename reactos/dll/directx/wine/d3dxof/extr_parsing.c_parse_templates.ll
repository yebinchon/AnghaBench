; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_parse_templates.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_parse_templates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32* }

@TOKEN_NONE = common dso_local global i64 0, align 8
@TOKEN_TEMPLATE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Template is not correct\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Template successfully parsed:\0A\00", align 1
@d3dxof_parsing = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @parse_templates(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  br label %6

6:                                                ; preds = %54, %2
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = call i64 @check_TOKEN(%struct.TYPE_7__* %7)
  %9 = load i64, i64* @TOKEN_NONE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %55

11:                                               ; preds = %6
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = call i64 @check_TOKEN(%struct.TYPE_7__* %15)
  %17 = load i64, i64* @TOKEN_TEMPLATE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i64, i64* @TRUE, align 8
  store i64 %20, i64* %3, align 8
  br label %57

21:                                               ; preds = %14, %11
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = call i32 @parse_template(%struct.TYPE_7__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = call i32 @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %3, align 8
  br label %57

28:                                               ; preds = %21
  %29 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @d3dxof_parsing, align 4
  %31 = call i64 @TRACE_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %28
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %43, i64 %50
  %52 = call i32 @dump_template(i32* %38, i32* %51)
  br label %53

53:                                               ; preds = %33, %28
  br label %54

54:                                               ; preds = %53
  br label %6

55:                                               ; preds = %6
  %56 = load i64, i64* @TRUE, align 8
  store i64 %56, i64* %3, align 8
  br label %57

57:                                               ; preds = %55, %25, %19
  %58 = load i64, i64* %3, align 8
  ret i64 %58
}

declare dso_local i64 @check_TOKEN(%struct.TYPE_7__*) #1

declare dso_local i32 @parse_template(%struct.TYPE_7__*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @TRACE_ON(i32) #1

declare dso_local i32 @dump_template(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
