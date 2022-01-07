; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_jsdisp_get_id.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_jsdisp_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@fdexNameEnsure = common dso_local global i32 0, align 4
@PROPF_ENUMERABLE = common dso_local global i32 0, align 4
@PROPF_CONFIGURABLE = common dso_local global i32 0, align 4
@PROPF_WRITABLE = common dso_local global i32 0, align 4
@PROP_DELETED = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"not found %s\0A\00", align 1
@DISP_E_UNKNOWNNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jsdisp_get_id(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @fdexNameEnsure, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* @PROPF_ENUMERABLE, align 4
  %20 = load i32, i32* @PROPF_CONFIGURABLE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @PROPF_WRITABLE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @ensure_prop_name(i32* %17, i32* %18, i32 %23, %struct.TYPE_5__** %10)
  store i32 %24, i32* %11, align 4
  br label %31

25:                                               ; preds = %4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @string_hash(i32* %27)
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @find_prop_name_prot(i32* %26, i32 %28, i32* %29, %struct.TYPE_5__** %10)
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %25, %16
  %32 = load i32, i32* %11, align 4
  %33 = call i64 @FAILED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %5, align 4
  br label %57

37:                                               ; preds = %31
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %39 = icmp ne %struct.TYPE_5__* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PROP_DELETED, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32*, i32** %6, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %49 = call i32 @prop_to_id(i32* %47, %struct.TYPE_5__* %48)
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @S_OK, align 4
  store i32 %51, i32* %5, align 4
  br label %57

52:                                               ; preds = %40, %37
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @debugstr_w(i32* %53)
  %55 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @DISP_E_UNKNOWNNAME, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %52, %46, %35
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @ensure_prop_name(i32*, i32*, i32, %struct.TYPE_5__**) #1

declare dso_local i32 @find_prop_name_prot(i32*, i32, i32*, %struct.TYPE_5__**) #1

declare dso_local i32 @string_hash(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @prop_to_id(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
