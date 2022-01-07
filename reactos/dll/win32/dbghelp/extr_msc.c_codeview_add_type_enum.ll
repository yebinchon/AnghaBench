; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_add_type_enum.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_add_type_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codeview_type_parse = type { i32 }
%struct.symt = type { i32 }
%struct.symt_enum = type { %struct.symt }
%union.codeview_reftype = type { i32 }

@SymTagEnum = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symt* (%struct.codeview_type_parse*, %struct.symt*, i8*, i32, i32)* @codeview_add_type_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symt* @codeview_add_type_enum(%struct.codeview_type_parse* %0, %struct.symt* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.symt*, align 8
  %7 = alloca %struct.codeview_type_parse*, align 8
  %8 = alloca %struct.symt*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.symt_enum*, align 8
  %13 = alloca %union.codeview_reftype*, align 8
  store %struct.codeview_type_parse* %0, %struct.codeview_type_parse** %7, align 8
  store %struct.symt* %1, %struct.symt** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.symt*, %struct.symt** %8, align 8
  %15 = icmp ne %struct.symt* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %5
  %17 = load %struct.symt*, %struct.symt** %8, align 8
  %18 = load i32, i32* @SymTagEnum, align 4
  %19 = call %struct.symt_enum* @codeview_cast_symt(%struct.symt* %17, i32 %18)
  store %struct.symt_enum* %19, %struct.symt_enum** %12, align 8
  %20 = icmp ne %struct.symt_enum* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store %struct.symt* null, %struct.symt** %6, align 8
  br label %49

22:                                               ; preds = %16
  br label %46

23:                                               ; preds = %5
  %24 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %7, align 8
  %25 = getelementptr inbounds %struct.codeview_type_parse, %struct.codeview_type_parse* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %7, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @FALSE, align 4
  %31 = call i32 @codeview_fetch_type(%struct.codeview_type_parse* %28, i32 %29, i32 %30)
  %32 = call %struct.symt_enum* @symt_new_enum(i32 %26, i8* %27, i32 %31)
  store %struct.symt_enum* %32, %struct.symt_enum** %12, align 8
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %23
  %36 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call %union.codeview_reftype* @codeview_jump_to_type(%struct.codeview_type_parse* %36, i32 %37)
  store %union.codeview_reftype* %38, %union.codeview_reftype** %13, align 8
  %39 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %7, align 8
  %40 = getelementptr inbounds %struct.codeview_type_parse, %struct.codeview_type_parse* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.symt_enum*, %struct.symt_enum** %12, align 8
  %43 = load %union.codeview_reftype*, %union.codeview_reftype** %13, align 8
  %44 = call i32 @codeview_add_type_enum_field_list(i32 %41, %struct.symt_enum* %42, %union.codeview_reftype* %43)
  br label %45

45:                                               ; preds = %35, %23
  br label %46

46:                                               ; preds = %45, %22
  %47 = load %struct.symt_enum*, %struct.symt_enum** %12, align 8
  %48 = getelementptr inbounds %struct.symt_enum, %struct.symt_enum* %47, i32 0, i32 0
  store %struct.symt* %48, %struct.symt** %6, align 8
  br label %49

49:                                               ; preds = %46, %21
  %50 = load %struct.symt*, %struct.symt** %6, align 8
  ret %struct.symt* %50
}

declare dso_local %struct.symt_enum* @codeview_cast_symt(%struct.symt*, i32) #1

declare dso_local %struct.symt_enum* @symt_new_enum(i32, i8*, i32) #1

declare dso_local i32 @codeview_fetch_type(%struct.codeview_type_parse*, i32, i32) #1

declare dso_local %union.codeview_reftype* @codeview_jump_to_type(%struct.codeview_type_parse*, i32) #1

declare dso_local i32 @codeview_add_type_enum_field_list(i32, %struct.symt_enum*, %union.codeview_reftype*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
