; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_channels.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bstr = type { i64 }
%struct.m_channels = type { i32, i32, i32, i32, i32 }
%struct.mp_chmap = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"\0AOther values:\0A    auto-safe\0A\00", align 1
@M_OPT_EXIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"auto-safe\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Disallowed parameter.\0A\00", align 1
@M_OPT_INVALID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Invalid channel layout: %.*s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, %struct.TYPE_3__*, i64, i64, i8*)* @parse_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_channels(%struct.mp_log* %0, %struct.TYPE_3__* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bstr, align 8
  %8 = alloca %struct.bstr, align 8
  %9 = alloca %struct.mp_log*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.m_channels, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.bstr, align 8
  %16 = alloca %struct.mp_chmap, align 4
  %17 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  store i64 %2, i64* %17, align 8
  %18 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  store i64 %3, i64* %18, align 8
  store %struct.mp_log* %0, %struct.mp_log** %9, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %10, align 8
  store i8* %4, i8** %11, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = bitcast %struct.m_channels* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 20, i1 false)
  %23 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @bstr_equals0(i64 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %5
  %28 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %29 = call i32 @mp_chmap_print_help(%struct.mp_log* %28)
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %34 = call i32 @mp_info(%struct.mp_log* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* @M_OPT_EXIT, align 4
  store i32 %36, i32* %6, align 4
  br label %122

37:                                               ; preds = %5
  %38 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @bstr_equals0(i64 %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %40, i32* %14, align 4
  %41 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @bstr_equals0(i64 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @bstr_equals0(i64 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %50, %45, %37
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %58 = call i32 (%struct.mp_log*, i8*, ...) @mp_err(%struct.mp_log* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %59 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %59, i32* %6, align 4
  br label %122

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = getelementptr inbounds %struct.m_channels, %struct.m_channels* %13, i32 0, i32 0
  store i32 1, i32* %62, align 4
  %63 = load i32, i32* %14, align 4
  %64 = getelementptr inbounds %struct.m_channels, %struct.m_channels* %13, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %50
  br label %66

66:                                               ; preds = %100, %65
  %67 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %109

70:                                               ; preds = %66
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = bitcast %struct.bstr* %15 to i8*
  %75 = bitcast %struct.bstr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 8, i1 false)
  %76 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  store i64 0, i64* %76, align 8
  br label %81

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @bstr_split_tok(i64 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), %struct.bstr* %15, %struct.bstr* %8)
  br label %81

81:                                               ; preds = %77, %73
  %82 = bitcast %struct.mp_chmap* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %82, i8 0, i64 4, i1 false)
  %83 = getelementptr inbounds %struct.bstr, %struct.bstr* %15, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @mp_chmap_from_str(%struct.mp_chmap* %16, i64 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = call i32 @mp_chmap_is_valid(%struct.mp_chmap* %16)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %87, %81
  %91 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %92 = getelementptr inbounds %struct.bstr, %struct.bstr* %15, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @BSTR_P(i64 %93)
  %95 = call i32 (%struct.mp_log*, i8*, ...) @mp_err(%struct.mp_log* %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %94)
  %96 = getelementptr inbounds %struct.m_channels, %struct.m_channels* %13, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @talloc_free(i32 %97)
  %99 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %99, i32* %6, align 4
  br label %122

100:                                              ; preds = %87
  %101 = getelementptr inbounds %struct.m_channels, %struct.m_channels* %13, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.m_channels, %struct.m_channels* %13, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.mp_chmap, %struct.mp_chmap* %16, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @MP_TARRAY_APPEND(i32* null, i32 %102, i32 %104, i32 %106)
  %108 = getelementptr inbounds %struct.m_channels, %struct.m_channels* %13, i32 0, i32 0
  store i32 1, i32* %108, align 4
  br label %66

109:                                              ; preds = %66
  %110 = load i8*, i8** %11, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i8*, i8** %11, align 8
  %114 = bitcast i8* %113 to %struct.m_channels*
  %115 = bitcast %struct.m_channels* %114 to i8*
  %116 = bitcast %struct.m_channels* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %115, i8* align 4 %116, i64 20, i1 false)
  br label %121

117:                                              ; preds = %109
  %118 = getelementptr inbounds %struct.m_channels, %struct.m_channels* %13, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @talloc_free(i32 %119)
  br label %121

121:                                              ; preds = %117, %112
  store i32 1, i32* %6, align 4
  br label %122

122:                                              ; preds = %121, %90, %56, %35
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bstr_equals0(i64, i8*) #2

declare dso_local i32 @mp_chmap_print_help(%struct.mp_log*) #2

declare dso_local i32 @mp_info(%struct.mp_log*, i8*) #2

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bstr_split_tok(i64, i8*, %struct.bstr*, %struct.bstr*) #2

declare dso_local i32 @mp_chmap_from_str(%struct.mp_chmap*, i64) #2

declare dso_local i32 @mp_chmap_is_valid(%struct.mp_chmap*) #2

declare dso_local i32 @BSTR_P(i64) #2

declare dso_local i32 @talloc_free(i32) #2

declare dso_local i32 @MP_TARRAY_APPEND(i32*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
