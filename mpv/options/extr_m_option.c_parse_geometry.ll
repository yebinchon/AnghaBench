; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_geometry.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.bstr = type { i32 }
%struct.m_geometry = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Option %.*s: invalid geometry: '%.*s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"Valid format: [W[%%][xH[%%]]][{+-}X[%%]{+-}Y[%%]] | [X[%%]:Y[%%]]\0A\00", align 1
@M_OPT_EXIT = common dso_local global i32 0, align 4
@M_OPT_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, i32*, i32, i32, i8*)* @parse_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_geometry(%struct.mp_log* %0, i32* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bstr, align 4
  %8 = alloca %struct.bstr, align 4
  %9 = alloca %struct.mp_log*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.m_geometry, align 4
  %14 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  store i32 %2, i32* %14, align 4
  %15 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  store i32 %3, i32* %15, align 4
  store %struct.mp_log* %0, %struct.mp_log** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bstr_equals0(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %37

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @parse_geometry_str(%struct.m_geometry* %13, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %37

28:                                               ; preds = %22
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i8*, i8** %11, align 8
  %33 = bitcast i8* %32 to %struct.m_geometry*
  %34 = bitcast %struct.m_geometry* %33 to i8*
  %35 = bitcast %struct.m_geometry* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 4, i1 false)
  br label %36

36:                                               ; preds = %31, %28
  store i32 1, i32* %6, align 4
  br label %60

37:                                               ; preds = %27, %21
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %42 = getelementptr inbounds %struct.bstr, %struct.bstr* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @BSTR_P(i32 %43)
  %45 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @BSTR_P(i32 %46)
  %48 = call i32 @mp_err(%struct.mp_log* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %40, %37
  %50 = load %struct.mp_log*, %struct.mp_log** %9, align 8
  %51 = call i32 @mp_info(%struct.mp_log* %50, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @M_OPT_EXIT, align 4
  br label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @M_OPT_INVALID, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %58, %36
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @bstr_equals0(i32, i8*) #1

declare dso_local i32 @parse_geometry_str(%struct.m_geometry*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, i32, i32) #1

declare dso_local i32 @BSTR_P(i32) #1

declare dso_local i32 @mp_info(%struct.mp_log*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
