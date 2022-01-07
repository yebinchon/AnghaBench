; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_new_func_signature.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_new_func_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codeview_type_parse = type { i32 }
%struct.symt = type { i32 }
%struct.symt_function_signature = type { %struct.symt }

@SymTagFunctionType = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symt* (%struct.codeview_type_parse*, %struct.symt*, i32)* @codeview_new_func_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symt* @codeview_new_func_signature(%struct.codeview_type_parse* %0, %struct.symt* %1, i32 %2) #0 {
  %4 = alloca %struct.symt*, align 8
  %5 = alloca %struct.codeview_type_parse*, align 8
  %6 = alloca %struct.symt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.symt_function_signature*, align 8
  store %struct.codeview_type_parse* %0, %struct.codeview_type_parse** %5, align 8
  store %struct.symt* %1, %struct.symt** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.symt*, %struct.symt** %6, align 8
  %10 = icmp ne %struct.symt* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.symt*, %struct.symt** %6, align 8
  %13 = load i32, i32* @SymTagFunctionType, align 4
  %14 = call %struct.symt_function_signature* @codeview_cast_symt(%struct.symt* %12, i32 %13)
  store %struct.symt_function_signature* %14, %struct.symt_function_signature** %8, align 8
  %15 = load %struct.symt_function_signature*, %struct.symt_function_signature** %8, align 8
  %16 = icmp ne %struct.symt_function_signature* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store %struct.symt* null, %struct.symt** %4, align 8
  br label %28

18:                                               ; preds = %11
  br label %25

19:                                               ; preds = %3
  %20 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %5, align 8
  %21 = getelementptr inbounds %struct.codeview_type_parse, %struct.codeview_type_parse* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.symt_function_signature* @symt_new_function_signature(i32 %22, i32* null, i32 %23)
  store %struct.symt_function_signature* %24, %struct.symt_function_signature** %8, align 8
  br label %25

25:                                               ; preds = %19, %18
  %26 = load %struct.symt_function_signature*, %struct.symt_function_signature** %8, align 8
  %27 = getelementptr inbounds %struct.symt_function_signature, %struct.symt_function_signature* %26, i32 0, i32 0
  store %struct.symt* %27, %struct.symt** %4, align 8
  br label %28

28:                                               ; preds = %25, %17
  %29 = load %struct.symt*, %struct.symt** %4, align 8
  ret %struct.symt* %29
}

declare dso_local %struct.symt_function_signature* @codeview_cast_symt(%struct.symt*, i32) #1

declare dso_local %struct.symt_function_signature* @symt_new_function_signature(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
