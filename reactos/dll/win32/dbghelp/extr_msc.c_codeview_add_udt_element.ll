; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_add_udt_element.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_add_udt_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codeview_type_parse = type { i32 }
%struct.symt_udt = type { i32 }
%struct.symt = type { i32 }
%union.codeview_reftype = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TI_GET_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.codeview_type_parse*, %struct.symt_udt*, i8*, i32, i32)* @codeview_add_udt_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codeview_add_udt_element(%struct.codeview_type_parse* %0, %struct.symt_udt* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.codeview_type_parse*, align 8
  %7 = alloca %struct.symt_udt*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.symt*, align 8
  %12 = alloca %union.codeview_reftype*, align 8
  %13 = alloca i64, align 8
  store %struct.codeview_type_parse* %0, %struct.codeview_type_parse** %6, align 8
  store %struct.symt_udt* %1, %struct.symt_udt** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %6, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call %union.codeview_reftype* @codeview_jump_to_type(%struct.codeview_type_parse* %14, i32 %15)
  store %union.codeview_reftype* %16, %union.codeview_reftype** %12, align 8
  %17 = icmp ne %union.codeview_reftype* %16, null
  br i1 %17, label %18, label %74

18:                                               ; preds = %5
  %19 = load %union.codeview_reftype*, %union.codeview_reftype** %12, align 8
  %20 = bitcast %union.codeview_reftype* %19 to %struct.TYPE_4__*
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %73 [
    i32 129, label %23
    i32 128, label %48
  ]

23:                                               ; preds = %18
  %24 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %6, align 8
  %25 = getelementptr inbounds %struct.codeview_type_parse, %struct.codeview_type_parse* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.symt_udt*, %struct.symt_udt** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %6, align 8
  %30 = load %union.codeview_reftype*, %union.codeview_reftype** %12, align 8
  %31 = bitcast %union.codeview_reftype* %30 to %struct.TYPE_5__*
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @FALSE, align 4
  %35 = call %struct.symt* @codeview_fetch_type(%struct.codeview_type_parse* %29, i32 %33, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = shl i32 %36, 3
  %38 = load %union.codeview_reftype*, %union.codeview_reftype** %12, align 8
  %39 = bitcast %union.codeview_reftype* %38 to %struct.TYPE_5__*
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %37, %41
  %43 = load %union.codeview_reftype*, %union.codeview_reftype** %12, align 8
  %44 = bitcast %union.codeview_reftype* %43 to %struct.TYPE_5__*
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @symt_add_udt_element(i32 %26, %struct.symt_udt* %27, i8* %28, %struct.symt* %35, i32 %42, i32 %46)
  br label %100

48:                                               ; preds = %18
  %49 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %6, align 8
  %50 = getelementptr inbounds %struct.codeview_type_parse, %struct.codeview_type_parse* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.symt_udt*, %struct.symt_udt** %7, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %6, align 8
  %55 = load %union.codeview_reftype*, %union.codeview_reftype** %12, align 8
  %56 = bitcast %union.codeview_reftype* %55 to %struct.TYPE_6__*
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @FALSE, align 4
  %60 = call %struct.symt* @codeview_fetch_type(%struct.codeview_type_parse* %54, i32 %58, i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = shl i32 %61, 3
  %63 = load %union.codeview_reftype*, %union.codeview_reftype** %12, align 8
  %64 = bitcast %union.codeview_reftype* %63 to %struct.TYPE_6__*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %62, %66
  %68 = load %union.codeview_reftype*, %union.codeview_reftype** %12, align 8
  %69 = bitcast %union.codeview_reftype* %68 to %struct.TYPE_6__*
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @symt_add_udt_element(i32 %51, %struct.symt_udt* %52, i8* %53, %struct.symt* %60, i32 %67, i32 %71)
  br label %100

73:                                               ; preds = %18
  br label %74

74:                                               ; preds = %73, %5
  %75 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @FALSE, align 4
  %78 = call %struct.symt* @codeview_fetch_type(%struct.codeview_type_parse* %75, i32 %76, i32 %77)
  store %struct.symt* %78, %struct.symt** %11, align 8
  %79 = load %struct.symt*, %struct.symt** %11, align 8
  %80 = icmp ne %struct.symt* %79, null
  br i1 %80, label %81, label %100

81:                                               ; preds = %74
  store i64 0, i64* %13, align 8
  %82 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %6, align 8
  %83 = getelementptr inbounds %struct.codeview_type_parse, %struct.codeview_type_parse* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.symt*, %struct.symt** %11, align 8
  %86 = load i32, i32* @TI_GET_LENGTH, align 4
  %87 = call i32 @symt_get_info(i32 %84, %struct.symt* %85, i32 %86, i64* %13)
  %88 = load %struct.codeview_type_parse*, %struct.codeview_type_parse** %6, align 8
  %89 = getelementptr inbounds %struct.codeview_type_parse, %struct.codeview_type_parse* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.symt_udt*, %struct.symt_udt** %7, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load %struct.symt*, %struct.symt** %11, align 8
  %94 = load i32, i32* %9, align 4
  %95 = shl i32 %94, 3
  %96 = load i64, i64* %13, align 8
  %97 = trunc i64 %96 to i32
  %98 = shl i32 %97, 3
  %99 = call i32 @symt_add_udt_element(i32 %90, %struct.symt_udt* %91, i8* %92, %struct.symt* %93, i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %23, %48, %81, %74
  ret void
}

declare dso_local %union.codeview_reftype* @codeview_jump_to_type(%struct.codeview_type_parse*, i32) #1

declare dso_local i32 @symt_add_udt_element(i32, %struct.symt_udt*, i8*, %struct.symt*, i32, i32) #1

declare dso_local %struct.symt* @codeview_fetch_type(%struct.codeview_type_parse*, i32, i32) #1

declare dso_local i32 @symt_get_info(i32, %struct.symt*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
