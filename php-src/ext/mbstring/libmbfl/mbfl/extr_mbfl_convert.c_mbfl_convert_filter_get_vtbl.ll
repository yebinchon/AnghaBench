; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfl_convert.c_mbfl_convert_filter_get_vtbl.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfl_convert.c_mbfl_convert_filter_get_vtbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.mbfl_convert_vtbl*, %struct.mbfl_convert_vtbl* }
%struct.mbfl_convert_vtbl = type { i64, i64 }

@mbfl_no_encoding_base64 = common dso_local global i64 0, align 8
@mbfl_no_encoding_qprint = common dso_local global i64 0, align 8
@mbfl_no_encoding_7bit = common dso_local global i64 0, align 8
@mbfl_encoding_8bit = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@mbfl_no_encoding_uuencode = common dso_local global i64 0, align 8
@mbfl_encoding_wchar = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@vtbl_pass = common dso_local global %struct.mbfl_convert_vtbl zeroinitializer, align 8
@mbfl_no_encoding_wchar = common dso_local global i64 0, align 8
@mbfl_special_filter_list = common dso_local global %struct.mbfl_convert_vtbl** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbfl_convert_vtbl* @mbfl_convert_filter_get_vtbl(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.mbfl_convert_vtbl*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mbfl_convert_vtbl*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @mbfl_no_encoding_base64, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %25, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @mbfl_no_encoding_qprint, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @mbfl_no_encoding_7bit, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %13, %2
  store %struct.TYPE_6__* @mbfl_encoding_8bit, %struct.TYPE_6__** %4, align 8
  br label %46

26:                                               ; preds = %19
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @mbfl_no_encoding_base64, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @mbfl_no_encoding_qprint, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @mbfl_no_encoding_uuencode, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %32, %26
  store %struct.TYPE_6__* @mbfl_encoding_8bit, %struct.TYPE_6__** %5, align 8
  br label %45

45:                                               ; preds = %44, %38
  br label %46

46:                                               ; preds = %45, %25
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = icmp eq %struct.TYPE_6__* %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = icmp eq %struct.TYPE_6__* %51, @mbfl_encoding_wchar
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = icmp eq %struct.TYPE_6__* %54, @mbfl_encoding_8bit
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %50
  store %struct.mbfl_convert_vtbl* @vtbl_pass, %struct.mbfl_convert_vtbl** %3, align 8
  br label %106

57:                                               ; preds = %53, %46
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @mbfl_no_encoding_wchar, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load %struct.mbfl_convert_vtbl*, %struct.mbfl_convert_vtbl** %65, align 8
  store %struct.mbfl_convert_vtbl* %66, %struct.mbfl_convert_vtbl** %3, align 8
  br label %106

67:                                               ; preds = %57
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @mbfl_no_encoding_wchar, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load %struct.mbfl_convert_vtbl*, %struct.mbfl_convert_vtbl** %75, align 8
  store %struct.mbfl_convert_vtbl* %76, %struct.mbfl_convert_vtbl** %3, align 8
  br label %106

77:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %104, %77
  %79 = load %struct.mbfl_convert_vtbl**, %struct.mbfl_convert_vtbl*** @mbfl_special_filter_list, align 8
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds %struct.mbfl_convert_vtbl*, %struct.mbfl_convert_vtbl** %79, i64 %82
  %84 = load %struct.mbfl_convert_vtbl*, %struct.mbfl_convert_vtbl** %83, align 8
  store %struct.mbfl_convert_vtbl* %84, %struct.mbfl_convert_vtbl** %7, align 8
  %85 = icmp ne %struct.mbfl_convert_vtbl* %84, null
  br i1 %85, label %86, label %105

86:                                               ; preds = %78
  %87 = load %struct.mbfl_convert_vtbl*, %struct.mbfl_convert_vtbl** %7, align 8
  %88 = getelementptr inbounds %struct.mbfl_convert_vtbl, %struct.mbfl_convert_vtbl* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %89, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %86
  %95 = load %struct.mbfl_convert_vtbl*, %struct.mbfl_convert_vtbl** %7, align 8
  %96 = getelementptr inbounds %struct.mbfl_convert_vtbl, %struct.mbfl_convert_vtbl* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %97, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load %struct.mbfl_convert_vtbl*, %struct.mbfl_convert_vtbl** %7, align 8
  store %struct.mbfl_convert_vtbl* %103, %struct.mbfl_convert_vtbl** %3, align 8
  br label %106

104:                                              ; preds = %94, %86
  br label %78

105:                                              ; preds = %78
  store %struct.mbfl_convert_vtbl* null, %struct.mbfl_convert_vtbl** %3, align 8
  br label %106

106:                                              ; preds = %105, %102, %73, %63, %56
  %107 = load %struct.mbfl_convert_vtbl*, %struct.mbfl_convert_vtbl** %3, align 8
  ret %struct.mbfl_convert_vtbl* %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
