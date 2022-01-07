; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_intpair.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_intpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.m_option = type { i32 }
%struct.bstr = type { i64 }

@M_OPT_MISSING_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Invalid integer range specification for option %.*s: %.*s\0A\00", align 1
@M_OPT_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, %struct.m_option*, i64, i64, i8*)* @parse_intpair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_intpair(%struct.mp_log* %0, %struct.m_option* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bstr, align 8
  %8 = alloca %struct.bstr, align 8
  %9 = alloca %struct.mp_log*, align 8
  %10 = alloca %struct.m_option*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.bstr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.bstr, align 8
  %16 = alloca i32*, align 8
  %17 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  store i64 %2, i64* %17, align 8
  %18 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  store i64 %3, i64* %18, align 8
  store %struct.mp_log* %0, %struct.mp_log** %9, align 8
  store %struct.m_option* %1, %struct.m_option** %10, align 8
  store i8* %4, i8** %11, align 8
  %19 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @M_OPT_MISSING_PARAM, align 4
  store i32 %23, i32* %6, align 4
  br label %89

24:                                               ; preds = %5
  %25 = bitcast %struct.bstr* %12 to i8*
  %26 = bitcast %struct.bstr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false)
  store i32 -1, i32* %13, align 4
  %27 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @bstrtoll(i64 %28, %struct.bstr* %12, i32 10)
  store i32 %29, i32* %14, align 4
  %30 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %79

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @bstr_startswith0(i64 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %79

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @bstr_cut(i64 %48, i32 1)
  %50 = getelementptr inbounds %struct.bstr, %struct.bstr* %15, i32 0, i32 0
  store i64 %49, i64* %50, align 8
  %51 = bitcast %struct.bstr* %12 to i8*
  %52 = bitcast %struct.bstr* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 8, i1 false)
  br label %53

53:                                               ; preds = %46, %36
  %54 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @bstrtoll(i64 %59, %struct.bstr* %12, i32 10)
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %79

66:                                               ; preds = %61
  %67 = load i8*, i8** %11, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i8*, i8** %11, align 8
  %71 = bitcast i8* %70 to i32*
  store i32* %71, i32** %16, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32*, i32** %16, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32*, i32** %16, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %69, %66
  store i32 1, i32* %6, align 4
  br label %89

79:                                               ; preds = %65, %45, %35
  %80 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %81 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @BSTR_P(i64 %82)
  %84 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @BSTR_P(i64 %85)
  %87 = call i32 @mp_err(%struct.mp_log* %80, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %86)
  %88 = load i32, i32* @M_OPT_INVALID, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %79, %78, %22
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bstrtoll(i64, %struct.bstr*, i32) #2

declare dso_local i32 @bstr_startswith0(i64, i8*) #2

declare dso_local i64 @bstr_cut(i64, i32) #2

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, i32, i32) #2

declare dso_local i32 @BSTR_P(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
