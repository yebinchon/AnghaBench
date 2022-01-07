; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_obj_settings_del.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_obj_settings_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.bstr = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"@\00", align 1
@NAMECH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Option %.*s: item label @%.*s not found.\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Option %.*s: Index %lld is out of range.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, i64, %struct.bstr*, i8*, i32*)* @parse_obj_settings_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_obj_settings_del(%struct.mp_log* %0, i64 %1, %struct.bstr* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bstr, align 8
  %8 = alloca %struct.mp_log*, align 8
  %9 = alloca %struct.bstr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.bstr, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.bstr, align 8
  %15 = alloca %struct.bstr, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.bstr, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  store i64 %1, i64* %20, align 8
  store %struct.mp_log* %0, %struct.mp_log** %8, align 8
  store %struct.bstr* %2, %struct.bstr** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load %struct.bstr*, %struct.bstr** %9, align 8
  %22 = bitcast %struct.bstr* %12 to i8*
  %23 = bitcast %struct.bstr* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %23, i64 8, i1 false)
  %24 = call i64 @bstr_eatstart0(%struct.bstr* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %78

26:                                               ; preds = %5
  %27 = load i32, i32* @NAMECH, align 4
  %28 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @bstrspn(i64 %29, i32 %27)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @bstr_splice(i64 %33, i32 0, i32 %31)
  %35 = getelementptr inbounds %struct.bstr, %struct.bstr* %14, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = load i32, i32* %13, align 4
  %37 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @bstr_cut(i64 %38, i32 %36)
  %40 = getelementptr inbounds %struct.bstr, %struct.bstr* %15, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = bitcast %struct.bstr* %12 to i8*
  %42 = bitcast %struct.bstr* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 8, i1 false)
  %43 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @bstr_startswith0(i64 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %126

48:                                               ; preds = %26
  %49 = load i8*, i8** %10, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %74

51:                                               ; preds = %48
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @VAL(i8* %52)
  %54 = getelementptr inbounds %struct.bstr, %struct.bstr* %14, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @obj_settings_list_find_by_label(i32 %53, i64 %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp sge i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 1, i32* %63, align 4
  br label %73

64:                                               ; preds = %51
  %65 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %66 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @BSTR_P(i64 %67)
  %69 = getelementptr inbounds %struct.bstr, %struct.bstr* %14, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @BSTR_P(i64 %70)
  %72 = call i32 @mp_warn(%struct.mp_log* %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %68, i64 %71)
  br label %73

73:                                               ; preds = %64, %59
  br label %74

74:                                               ; preds = %73, %48
  %75 = load %struct.bstr*, %struct.bstr** %9, align 8
  %76 = bitcast %struct.bstr* %75 to i8*
  %77 = bitcast %struct.bstr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 8, i1 false)
  store i32 1, i32* %6, align 4
  br label %126

78:                                               ; preds = %5
  %79 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @bstrtoll(i64 %80, %struct.bstr* %17, i32 0)
  store i64 %81, i64* %18, align 8
  %82 = getelementptr inbounds %struct.bstr, %struct.bstr* %17, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %83, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %126

88:                                               ; preds = %78
  %89 = load i8*, i8** %10, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %122

91:                                               ; preds = %88
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @VAL(i8* %92)
  %94 = call i32 @obj_settings_list_num_items(i32 %93)
  store i32 %94, i32* %19, align 4
  %95 = load i64, i64* %18, align 8
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load i32, i32* %19, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %18, align 8
  %101 = add nsw i64 %99, %100
  store i64 %101, i64* %18, align 8
  br label %102

102:                                              ; preds = %97, %91
  %103 = load i64, i64* %18, align 8
  %104 = icmp sge i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load i64, i64* %18, align 8
  %107 = load i32, i32* %19, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp slt i64 %106, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32*, i32** %11, align 8
  %112 = load i64, i64* %18, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32 1, i32* %113, align 4
  br label %121

114:                                              ; preds = %105, %102
  %115 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %116 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @BSTR_P(i64 %117)
  %119 = load i64, i64* %18, align 8
  %120 = call i32 @mp_warn(%struct.mp_log* %115, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %118, i64 %119)
  br label %121

121:                                              ; preds = %114, %110
  br label %122

122:                                              ; preds = %121, %88
  %123 = load %struct.bstr*, %struct.bstr** %9, align 8
  %124 = bitcast %struct.bstr* %123 to i8*
  %125 = bitcast %struct.bstr* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 %125, i64 8, i1 false)
  store i32 1, i32* %6, align 4
  br label %126

126:                                              ; preds = %122, %87, %74, %47
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @bstr_eatstart0(%struct.bstr*, i8*) #2

declare dso_local i32 @bstrspn(i64, i32) #2

declare dso_local i64 @bstr_splice(i64, i32, i32) #2

declare dso_local i64 @bstr_cut(i64, i32) #2

declare dso_local i64 @bstr_startswith0(i64, i8*) #2

declare dso_local i32 @obj_settings_list_find_by_label(i32, i64) #2

declare dso_local i32 @VAL(i8*) #2

declare dso_local i32 @mp_warn(%struct.mp_log*, i8*, i64, i64) #2

declare dso_local i64 @BSTR_P(i64) #2

declare dso_local i64 @bstrtoll(i64, %struct.bstr*, i32) #2

declare dso_local i32 @obj_settings_list_num_items(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
