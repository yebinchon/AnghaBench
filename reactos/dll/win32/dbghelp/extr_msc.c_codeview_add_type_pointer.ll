; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_add_type_pointer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_add_type_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codeview_type_parse = type { i32 }
%struct.symt = type { i32 }
%struct.TYPE_2__ = type { %struct.symt }

@SymTagPointerType = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symt* (%struct.codeview_type_parse*, %struct.symt*, i32)* @codeview_add_type_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symt* @codeview_add_type_pointer(%struct.codeview_type_parse* %0, %struct.symt* %1, i32 %2) #0 {
  %4 = alloca %struct.symt*, align 8
  %5 = alloca %struct.codeview_type_parse*, align 8
  %6 = alloca %struct.symt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.symt*, align 8
  store %struct.codeview_type_parse* %0, %struct.codeview_type_parse** %5, align 8
  store %struct.symt* %1, %struct.symt** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.symt*, %struct.symt** %6, align 8
  %10 = icmp ne %struct.symt* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.symt*, %struct.symt** %6, align 8
  %13 = load i32, i32* @SymTagPointerType, align 4
  %14 = call %struct.symt* @codeview_cast_symt(%struct.symt* %12, i32 %13)
  store %struct.symt* %14, %struct.symt** %6, align 8
  %15 = load %struct.symt*, %struct.symt** %6, align 8
  store %struct.symt* %15, %struct.symt** %4, align 8
  br label %27

16:                                               ; preds = %3
  %17 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @FALSE, align 4
  %20 = call %struct.symt* @codeview_fetch_type(%struct.codeview_type_parse* %17, i32 %18, i32 %19)
  store %struct.symt* %20, %struct.symt** %8, align 8
  %21 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %5, align 8
  %22 = getelementptr inbounds %struct.codeview_type_parse, %struct.codeview_type_parse* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.symt*, %struct.symt** %8, align 8
  %25 = call %struct.TYPE_2__* @symt_new_pointer(i32 %23, %struct.symt* %24, i32 8)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.symt* %26, %struct.symt** %4, align 8
  br label %27

27:                                               ; preds = %16, %11
  %28 = load %struct.symt*, %struct.symt** %4, align 8
  ret %struct.symt* %28
}

declare dso_local %struct.symt* @codeview_cast_symt(%struct.symt*, i32) #1

declare dso_local %struct.symt* @codeview_fetch_type(%struct.codeview_type_parse*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @symt_new_pointer(i32, %struct.symt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
