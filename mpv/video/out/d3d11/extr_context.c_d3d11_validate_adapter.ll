; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_context.c_d3d11_validate_adapter.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_context.c_d3d11_validate_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.m_option = type { i32 }
%struct.bstr = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Available D3D11 adapters:\0A%.*s\00", align 1
@M_OPT_EXIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"No adapter matching '%.*s'!\0A\00", align 1
@M_OPT_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, %struct.m_option*, i64, i64)* @d3d11_validate_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d11_validate_adapter(%struct.mp_log* %0, %struct.m_option* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bstr, align 4
  %7 = alloca %struct.bstr, align 4
  %8 = alloca %struct.mp_log*, align 8
  %9 = alloca %struct.m_option*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bstr, align 4
  %13 = alloca %struct.bstr, align 4
  %14 = bitcast %struct.bstr* %6 to i64*
  store i64 %2, i64* %14, align 4
  %15 = bitcast %struct.bstr* %7 to i64*
  store i64 %3, i64* %15, align 4
  store %struct.mp_log* %0, %struct.mp_log** %8, align 8
  store %struct.m_option* %1, %struct.m_option** %9, align 8
  %16 = bitcast %struct.bstr* %7 to i64*
  %17 = load i64, i64* %16, align 4
  %18 = call i32 @bstr_equals0(i64 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = bitcast %struct.bstr* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 8, i1 false)
  %20 = bitcast %struct.bstr* %7 to i64*
  %21 = load i64, i64* %20, align 4
  %22 = call i32 @bstr_equals0(i64 %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %74

25:                                               ; preds = %4
  %26 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = call i64 @bstr0(i32* null)
  %31 = bitcast %struct.bstr* %13 to i64*
  store i64 %30, i64* %31, align 4
  br label %35

32:                                               ; preds = %25
  %33 = bitcast %struct.bstr* %13 to i8*
  %34 = bitcast %struct.bstr* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 8, i1 false)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %40

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39, %38
  %41 = phi %struct.bstr* [ %12, %38 ], [ null, %39 ]
  %42 = bitcast %struct.bstr* %13 to i64*
  %43 = load i64, i64* %42, align 4
  %44 = call i32 @mp_d3d11_list_or_verify_adapters(%struct.mp_log* %26, i64 %43, %struct.bstr* %41)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %49 = bitcast %struct.bstr* %12 to i64*
  %50 = load i64, i64* %49, align 4
  %51 = call i32 @BSTR_P(i64 %50)
  %52 = call i32 @mp_info(%struct.mp_log* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = getelementptr inbounds %struct.bstr, %struct.bstr* %12, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @talloc_free(i32 %54)
  %56 = load i32, i32* @M_OPT_EXIT, align 4
  store i32 %56, i32* %5, align 4
  br label %74

57:                                               ; preds = %40
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load %struct.mp_log*, %struct.mp_log** %8, align 8
  %62 = bitcast %struct.bstr* %7 to i64*
  %63 = load i64, i64* %62, align 4
  %64 = call i32 @BSTR_P(i64 %63)
  %65 = call i32 @mp_err(%struct.mp_log* %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %60, %57
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @M_OPT_INVALID, align 4
  br label %72

72:                                               ; preds = %70, %69
  %73 = phi i32 [ 0, %69 ], [ %71, %70 ]
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %47, %24
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @bstr_equals0(i64, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mp_d3d11_list_or_verify_adapters(%struct.mp_log*, i64, %struct.bstr*) #1

declare dso_local i64 @bstr0(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mp_info(%struct.mp_log*, i8*, i32) #1

declare dso_local i32 @BSTR_P(i64) #1

declare dso_local i32 @talloc_free(i32) #1

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
