; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_add_func_signature_args.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_add_func_signature_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codeview_type_parse = type { i32 }
%struct.symt_function_signature = type { i32 }
%union.codeview_reftype = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unexpected leaf %x for signature's pmt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.codeview_type_parse*, %struct.symt_function_signature*, i32, i32)* @codeview_add_func_signature_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codeview_add_func_signature_args(%struct.codeview_type_parse* %0, %struct.symt_function_signature* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.codeview_type_parse*, align 8
  %6 = alloca %struct.symt_function_signature*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.codeview_reftype*, align 8
  %10 = alloca i32, align 4
  store %struct.codeview_type_parse* %0, %struct.codeview_type_parse** %5, align 8
  store %struct.symt_function_signature* %1, %struct.symt_function_signature** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @FALSE, align 4
  %14 = call i32 @codeview_fetch_type(%struct.codeview_type_parse* %11, i32 %12, i32 %13)
  %15 = load %struct.symt_function_signature*, %struct.symt_function_signature** %6, align 8
  %16 = getelementptr inbounds %struct.symt_function_signature, %struct.symt_function_signature* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %94

19:                                               ; preds = %4
  %20 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call %union.codeview_reftype* @codeview_jump_to_type(%struct.codeview_type_parse* %20, i32 %21)
  store %union.codeview_reftype* %22, %union.codeview_reftype** %9, align 8
  %23 = icmp ne %union.codeview_reftype* %22, null
  br i1 %23, label %24, label %94

24:                                               ; preds = %19
  %25 = load %union.codeview_reftype*, %union.codeview_reftype** %9, align 8
  %26 = bitcast %union.codeview_reftype* %25 to %struct.TYPE_6__*
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %87 [
    i32 129, label %29
    i32 128, label %58
  ]

29:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %54, %29
  %31 = load i32, i32* %10, align 4
  %32 = load %union.codeview_reftype*, %union.codeview_reftype** %9, align 8
  %33 = bitcast %union.codeview_reftype* %32 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %31, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %30
  %38 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %5, align 8
  %39 = getelementptr inbounds %struct.codeview_type_parse, %struct.codeview_type_parse* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.symt_function_signature*, %struct.symt_function_signature** %6, align 8
  %42 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %5, align 8
  %43 = load %union.codeview_reftype*, %union.codeview_reftype** %9, align 8
  %44 = bitcast %union.codeview_reftype* %43 to %struct.TYPE_4__*
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @FALSE, align 4
  %52 = call i32 @codeview_fetch_type(%struct.codeview_type_parse* %42, i32 %50, i32 %51)
  %53 = call i32 @symt_add_function_signature_parameter(i32 %40, %struct.symt_function_signature* %41, i32 %52)
  br label %54

54:                                               ; preds = %37
  %55 = load i32, i32* %10, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %30

57:                                               ; preds = %30
  br label %93

58:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %83, %58
  %60 = load i32, i32* %10, align 4
  %61 = load %union.codeview_reftype*, %union.codeview_reftype** %9, align 8
  %62 = bitcast %union.codeview_reftype* %61 to %struct.TYPE_5__*
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ult i32 %60, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %59
  %67 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %5, align 8
  %68 = getelementptr inbounds %struct.codeview_type_parse, %struct.codeview_type_parse* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.symt_function_signature*, %struct.symt_function_signature** %6, align 8
  %71 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %5, align 8
  %72 = load %union.codeview_reftype*, %union.codeview_reftype** %9, align 8
  %73 = bitcast %union.codeview_reftype* %72 to %struct.TYPE_5__*
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @FALSE, align 4
  %81 = call i32 @codeview_fetch_type(%struct.codeview_type_parse* %71, i32 %79, i32 %80)
  %82 = call i32 @symt_add_function_signature_parameter(i32 %69, %struct.symt_function_signature* %70, i32 %81)
  br label %83

83:                                               ; preds = %66
  %84 = load i32, i32* %10, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %59

86:                                               ; preds = %59
  br label %93

87:                                               ; preds = %24
  %88 = load %union.codeview_reftype*, %union.codeview_reftype** %9, align 8
  %89 = bitcast %union.codeview_reftype* %88 to %struct.TYPE_6__*
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %87, %86, %57
  br label %94

94:                                               ; preds = %93, %19, %4
  ret void
}

declare dso_local i32 @codeview_fetch_type(%struct.codeview_type_parse*, i32, i32) #1

declare dso_local %union.codeview_reftype* @codeview_jump_to_type(%struct.codeview_type_parse*, i32) #1

declare dso_local i32 @symt_add_function_signature_parameter(i32, %struct.symt_function_signature*, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
