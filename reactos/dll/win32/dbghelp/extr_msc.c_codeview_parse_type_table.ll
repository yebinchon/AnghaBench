; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_parse_type_table.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_parse_type_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codeview_type_parse = type { i32 }
%union.codeview_type = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FIRST_DEFINABLE_TYPE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.codeview_type_parse*)* @codeview_parse_type_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codeview_parse_type_table(%struct.codeview_type_parse* %0) #0 {
  %2 = alloca %struct.codeview_type_parse*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.codeview_type*, align 8
  store %struct.codeview_type_parse* %0, %struct.codeview_type_parse** %2, align 8
  %5 = load i32, i32* @FIRST_DEFINABLE_TYPE, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @FIRST_DEFINABLE_TYPE, align 4
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %39, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @FIRST_DEFINABLE_TYPE, align 4
  %10 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %2, align 8
  %11 = getelementptr inbounds %struct.codeview_type_parse, %struct.codeview_type_parse* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %9, %12
  %14 = icmp ult i32 %8, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %7
  %16 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call %union.codeview_type* @codeview_jump_to_type(%struct.codeview_type_parse* %16, i32 %17)
  store %union.codeview_type* %18, %union.codeview_type** %4, align 8
  %19 = load %union.codeview_type*, %union.codeview_type** %4, align 8
  %20 = bitcast %union.codeview_type* %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 34304
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %15
  %26 = load %union.codeview_type*, %union.codeview_type** %4, align 8
  %27 = bitcast %union.codeview_type* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 256
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25, %15
  %33 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load %union.codeview_type*, %union.codeview_type** %4, align 8
  %36 = load i32, i32* @TRUE, align 4
  %37 = call i32 @codeview_parse_one_type(%struct.codeview_type_parse* %33, i32 %34, %union.codeview_type* %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %25
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %7

42:                                               ; preds = %7
  %43 = load i32, i32* @TRUE, align 4
  ret i32 %43
}

declare dso_local %union.codeview_type* @codeview_jump_to_type(%struct.codeview_type_parse*, i32) #1

declare dso_local i32 @codeview_parse_one_type(%struct.codeview_type_parse*, i32, %union.codeview_type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
