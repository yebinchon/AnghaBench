; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_add_type_enum_field_list.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_codeview_add_type_enum_field_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.symt_enum = type { i32 }
%union.codeview_reftype = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%union.codeview_fieldtype = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.p_string = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Unsupported type %04x in ENUM field list\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module*, %struct.symt_enum*, %union.codeview_reftype*)* @codeview_add_type_enum_field_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codeview_add_type_enum_field_list(%struct.module* %0, %struct.symt_enum* %1, %union.codeview_reftype* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module*, align 8
  %6 = alloca %struct.symt_enum*, align 8
  %7 = alloca %union.codeview_reftype*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %union.codeview_fieldtype*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.p_string*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.module* %0, %struct.module** %5, align 8
  store %struct.symt_enum* %1, %struct.symt_enum** %6, align 8
  store %union.codeview_reftype* %2, %union.codeview_reftype** %7, align 8
  %17 = load %union.codeview_reftype*, %union.codeview_reftype** %7, align 8
  %18 = bitcast %union.codeview_reftype* %17 to %struct.TYPE_6__*
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  %21 = load %union.codeview_reftype*, %union.codeview_reftype** %7, align 8
  %22 = bitcast %union.codeview_reftype* %21 to i8*
  %23 = load %union.codeview_reftype*, %union.codeview_reftype** %7, align 8
  %24 = bitcast %union.codeview_reftype* %23 to %struct.TYPE_7__*
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %22, i64 %27
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  store i8* %29, i8** %9, align 8
  br label %30

30:                                               ; preds = %116, %39, %3
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %34, label %117

34:                                               ; preds = %30
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp sge i32 %37, 240
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 15
  %44 = load i8*, i8** %8, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %8, align 8
  br label %30

47:                                               ; preds = %34
  %48 = load i8*, i8** %8, align 8
  %49 = bitcast i8* %48 to %union.codeview_fieldtype*
  store %union.codeview_fieldtype* %49, %union.codeview_fieldtype** %10, align 8
  %50 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %10, align 8
  %51 = bitcast %union.codeview_fieldtype* %50 to %struct.TYPE_10__*
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %109 [
    i32 129, label %54
    i32 128, label %83
  ]

54:                                               ; preds = %47
  %55 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %10, align 8
  %56 = bitcast %union.codeview_fieldtype* %55 to %struct.TYPE_8__*
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = call i32 @numeric_leaf(i32* %11, i32* %57)
  store i32 %58, i32* %12, align 4
  %59 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %10, align 8
  %60 = bitcast %union.codeview_fieldtype* %59 to %struct.TYPE_8__*
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = bitcast i32* %61 to i8*
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = bitcast i8* %65 to %struct.p_string*
  store %struct.p_string* %66, %struct.p_string** %13, align 8
  %67 = load %struct.module*, %struct.module** %5, align 8
  %68 = load %struct.symt_enum*, %struct.symt_enum** %6, align 8
  %69 = load %struct.p_string*, %struct.p_string** %13, align 8
  %70 = call i8* @terminate_string(%struct.p_string* %69)
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @symt_add_enum_element(%struct.module* %67, %struct.symt_enum* %68, i8* %70, i32 %71)
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 4, %73
  %75 = load %struct.p_string*, %struct.p_string** %13, align 8
  %76 = getelementptr inbounds %struct.p_string, %struct.p_string* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 1, %77
  %79 = add nsw i32 %74, %78
  %80 = load i8*, i8** %8, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %8, align 8
  br label %116

83:                                               ; preds = %47
  %84 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %10, align 8
  %85 = bitcast %union.codeview_fieldtype* %84 to %struct.TYPE_9__*
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = call i32 @numeric_leaf(i32* %14, i32* %86)
  store i32 %87, i32* %15, align 4
  %88 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %10, align 8
  %89 = bitcast %union.codeview_fieldtype* %88 to %struct.TYPE_9__*
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = bitcast i32* %90 to i8*
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  store i8* %94, i8** %16, align 8
  %95 = load %struct.module*, %struct.module** %5, align 8
  %96 = load %struct.symt_enum*, %struct.symt_enum** %6, align 8
  %97 = load i8*, i8** %16, align 8
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @symt_add_enum_element(%struct.module* %95, %struct.symt_enum* %96, i8* %97, i32 %98)
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 4, %100
  %102 = load i8*, i8** %16, align 8
  %103 = call i32 @strlen(i8* %102)
  %104 = add nsw i32 1, %103
  %105 = add nsw i32 %101, %104
  %106 = load i8*, i8** %8, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %8, align 8
  br label %116

109:                                              ; preds = %47
  %110 = load %union.codeview_fieldtype*, %union.codeview_fieldtype** %10, align 8
  %111 = bitcast %union.codeview_fieldtype* %110 to %struct.TYPE_10__*
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @FIXME(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @FALSE, align 4
  store i32 %115, i32* %4, align 4
  br label %119

116:                                              ; preds = %83, %54
  br label %30

117:                                              ; preds = %30
  %118 = load i32, i32* @TRUE, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %117, %109
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @numeric_leaf(i32*, i32*) #1

declare dso_local i32 @symt_add_enum_element(%struct.module*, %struct.symt_enum*, i8*, i32) #1

declare dso_local i8* @terminate_string(%struct.p_string*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
