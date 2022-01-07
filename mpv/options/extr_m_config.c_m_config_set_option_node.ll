; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_set_option_node.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_set_option_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* (i32*, %struct.mpv_node*)* }
%struct.mpv_node = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.m_config = type { i32 }
%struct.m_config_option = type { i32 }
%union.m_option_value = type { i32 }

@M_OPT_UNKNOWN = common dso_local global i32 0, align 4
@MPV_FORMAT_STRING = common dso_local global i64 0, align 8
@mp_null_log = common dso_local global i32 0, align 4
@MSGL_V = common dso_local global i32 0, align 4
@m_option_type_node = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [47 x i8] c"Setting option '%.*s' = %s (flags = %d) -> %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m_config_set_option_node(%struct.m_config* %0, i32 %1, %struct.mpv_node* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.m_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mpv_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.m_config_option*, align 8
  %12 = alloca %union.m_option_value, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.m_config* %0, %struct.m_config** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mpv_node* %2, %struct.mpv_node** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.m_config*, %struct.m_config** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.m_config_option* @m_config_get_co(%struct.m_config* %15, i32 %16)
  store %struct.m_config_option* %17, %struct.m_config_option** %11, align 8
  %18 = load %struct.m_config_option*, %struct.m_config_option** %11, align 8
  %19 = icmp ne %struct.m_config_option* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @M_OPT_UNKNOWN, align 4
  store i32 %21, i32* %5, align 4
  br label %88

22:                                               ; preds = %4
  %23 = bitcast %union.m_option_value* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 4, i1 false)
  %24 = load %struct.mpv_node*, %struct.mpv_node** %8, align 8
  %25 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MPV_FORMAT_STRING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = load %struct.mpv_node*, %struct.mpv_node** %8, align 8
  %31 = getelementptr inbounds %struct.mpv_node, %struct.mpv_node* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @bstr0(i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* @mp_null_log, align 4
  %36 = load %struct.m_config_option*, %struct.m_config_option** %11, align 8
  %37 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @m_option_parse(i32 %35, i32 %38, i32 %39, i32 %40, %union.m_option_value* %12)
  store i32 %41, i32* %10, align 4
  br label %48

42:                                               ; preds = %22
  %43 = load %struct.m_config_option*, %struct.m_config_option** %11, align 8
  %44 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mpv_node*, %struct.mpv_node** %8, align 8
  %47 = call i32 @m_option_set_node(i32 %45, %union.m_option_value* %12, %struct.mpv_node* %46)
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %42, %29
  %49 = load i32, i32* %10, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.m_config*, %struct.m_config** %6, align 8
  %53 = load %struct.m_config_option*, %struct.m_config_option** %11, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @m_config_set_option_raw(%struct.m_config* %52, %struct.m_config_option* %53, %union.m_option_value* %12, i32 %54)
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %51, %48
  %57 = load %struct.m_config*, %struct.m_config** %6, align 8
  %58 = getelementptr inbounds %struct.m_config, %struct.m_config* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MSGL_V, align 4
  %61 = call i64 @mp_msg_test(i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %56
  %64 = load i8* (i32*, %struct.mpv_node*)*, i8* (i32*, %struct.mpv_node*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @m_option_type_node, i32 0, i32 0), align 8
  %65 = load %struct.mpv_node*, %struct.mpv_node** %8, align 8
  %66 = call i8* %64(i32* null, %struct.mpv_node* %65)
  store i8* %66, i8** %14, align 8
  %67 = load %struct.m_config*, %struct.m_config** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @BSTR_P(i32 %68)
  %70 = load i8*, i8** %14, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i8*, i8** %14, align 8
  br label %75

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i8* [ %73, %72 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %74 ]
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @MP_DBG(%struct.m_config* %67, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %69, i8* %76, i32 %77, i32 %78)
  %80 = load i8*, i8** %14, align 8
  %81 = call i32 @talloc_free(i8* %80)
  br label %82

82:                                               ; preds = %75, %56
  %83 = load %struct.m_config_option*, %struct.m_config_option** %11, align 8
  %84 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @m_option_free(i32 %85, %union.m_option_value* %12)
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %82, %20
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.m_config_option* @m_config_get_co(%struct.m_config*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @bstr0(i32) #1

declare dso_local i32 @m_option_parse(i32, i32, i32, i32, %union.m_option_value*) #1

declare dso_local i32 @m_option_set_node(i32, %union.m_option_value*, %struct.mpv_node*) #1

declare dso_local i32 @m_config_set_option_raw(%struct.m_config*, %struct.m_config_option*, %union.m_option_value*, i32) #1

declare dso_local i64 @mp_msg_test(i32, i32) #1

declare dso_local i32 @MP_DBG(%struct.m_config*, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @BSTR_P(i32) #1

declare dso_local i32 @talloc_free(i8*) #1

declare dso_local i32 @m_option_free(i32, %union.m_option_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
