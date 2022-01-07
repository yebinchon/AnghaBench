; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_filter_metadata.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_filter_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.mp_output_chain* }
%struct.mp_output_chain = type { i32 }
%struct.TYPE_4__ = type { %struct.mp_output_chain* }
%struct.m_property_action_arg = type { i8*, i32, %struct.m_property_action_arg* }
%struct.mp_tags = type { i32 }
%struct.mp_filter_command = type { %struct.mp_tags**, i32 }

@M_PROPERTY_KEY_ACTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"vf\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"af\00", align 1
@M_PROPERTY_UNAVAILABLE = common dso_local global i32 0, align 4
@M_PROPERTY_GET_TYPE = common dso_local global i32 0, align 4
@MP_FILTER_COMMAND_GET_META = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@M_PROPERTY_ERROR = common dso_local global i32 0, align 4
@M_PROPERTY_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_filter_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_filter_metadata(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.m_property_action_arg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.mp_tags*, align 8
  %16 = alloca %struct.mp_output_chain*, align 8
  %17 = alloca %struct.mp_filter_command, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.m_property_action_arg, align 8
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %10, align 8
  %22 = load %struct.m_property*, %struct.m_property** %7, align 8
  %23 = getelementptr inbounds %struct.m_property, %struct.m_property* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %11, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @M_PROPERTY_KEY_ACTION, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %122

28:                                               ; preds = %4
  %29 = load i8*, i8** %9, align 8
  %30 = bitcast i8* %29 to %struct.m_property_action_arg*
  store %struct.m_property_action_arg* %30, %struct.m_property_action_arg** %12, align 8
  %31 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %12, align 8
  %32 = getelementptr inbounds %struct.m_property_action_arg, %struct.m_property_action_arg* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @m_property_split_path(i8* %33, i32* %13, i8** %14)
  store %struct.mp_tags* null, %struct.mp_tags** %15, align 8
  store %struct.mp_output_chain* null, %struct.mp_output_chain** %16, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = call i64 @strcmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %28
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.mp_output_chain*, %struct.mp_output_chain** %47, align 8
  br label %50

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %43
  %51 = phi %struct.mp_output_chain* [ %48, %43 ], [ null, %49 ]
  store %struct.mp_output_chain* %51, %struct.mp_output_chain** %16, align 8
  br label %71

52:                                               ; preds = %28
  %53 = load i8*, i8** %11, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = icmp ne %struct.TYPE_5__* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.mp_output_chain*, %struct.mp_output_chain** %65, align 8
  br label %68

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %61
  %69 = phi %struct.mp_output_chain* [ %66, %61 ], [ null, %67 ]
  store %struct.mp_output_chain* %69, %struct.mp_output_chain** %16, align 8
  br label %70

70:                                               ; preds = %68, %52
  br label %71

71:                                               ; preds = %70, %50
  %72 = load %struct.mp_output_chain*, %struct.mp_output_chain** %16, align 8
  %73 = icmp ne %struct.mp_output_chain* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* @M_PROPERTY_UNAVAILABLE, align 4
  store i32 %75, i32* %5, align 4
  br label %124

76:                                               ; preds = %71
  %77 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %12, align 8
  %78 = getelementptr inbounds %struct.m_property_action_arg, %struct.m_property_action_arg* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @M_PROPERTY_GET_TYPE, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %17, i32 0, i32 0
  store %struct.mp_tags** %15, %struct.mp_tags*** %83, align 8
  %84 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %17, i32 0, i32 1
  %85 = load i32, i32* @MP_FILTER_COMMAND_GET_META, align 4
  store i32 %85, i32* %84, align 8
  %86 = load %struct.mp_output_chain*, %struct.mp_output_chain** %16, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @BSTR_P(i32 %87)
  %89 = call i32 @mp_tprintf(i32 80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = call i32 @mp_output_chain_command(%struct.mp_output_chain* %86, i32 %89, %struct.mp_filter_command* %17)
  %91 = load %struct.mp_tags*, %struct.mp_tags** %15, align 8
  %92 = icmp ne %struct.mp_tags* %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %82
  %94 = load i32, i32* @M_PROPERTY_ERROR, align 4
  store i32 %94, i32* %5, align 4
  br label %124

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %95, %76
  %97 = load i8*, i8** %14, align 8
  %98 = call i64 @strlen(i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %96
  %101 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %12, align 8
  %102 = bitcast %struct.m_property_action_arg* %19 to i8*
  %103 = bitcast %struct.m_property_action_arg* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 24, i1 false)
  %104 = load i8*, i8** %14, align 8
  %105 = getelementptr inbounds %struct.m_property_action_arg, %struct.m_property_action_arg* %19, i32 0, i32 0
  store i8* %104, i8** %105, align 8
  %106 = load i32, i32* @M_PROPERTY_KEY_ACTION, align 4
  %107 = load %struct.mp_tags*, %struct.mp_tags** %15, align 8
  %108 = call i32 @tag_property(i32 %106, %struct.m_property_action_arg* %19, %struct.mp_tags* %107)
  store i32 %108, i32* %18, align 4
  br label %118

109:                                              ; preds = %96
  %110 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %12, align 8
  %111 = getelementptr inbounds %struct.m_property_action_arg, %struct.m_property_action_arg* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %12, align 8
  %114 = getelementptr inbounds %struct.m_property_action_arg, %struct.m_property_action_arg* %113, i32 0, i32 2
  %115 = load %struct.m_property_action_arg*, %struct.m_property_action_arg** %114, align 8
  %116 = load %struct.mp_tags*, %struct.mp_tags** %15, align 8
  %117 = call i32 @tag_property(i32 %112, %struct.m_property_action_arg* %115, %struct.mp_tags* %116)
  store i32 %117, i32* %18, align 4
  br label %118

118:                                              ; preds = %109, %100
  %119 = load %struct.mp_tags*, %struct.mp_tags** %15, align 8
  %120 = call i32 @talloc_free(%struct.mp_tags* %119)
  %121 = load i32, i32* %18, align 4
  store i32 %121, i32* %5, align 4
  br label %124

122:                                              ; preds = %4
  %123 = load i32, i32* @M_PROPERTY_NOT_IMPLEMENTED, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %122, %118, %93, %74
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @m_property_split_path(i8*, i32*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @mp_output_chain_command(%struct.mp_output_chain*, i32, %struct.mp_filter_command*) #1

declare dso_local i32 @mp_tprintf(i32, i8*, i32) #1

declare dso_local i32 @BSTR_P(i32) #1

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tag_property(i32, %struct.m_property_action_arg*, %struct.mp_tags*) #1

declare dso_local i32 @talloc_free(%struct.mp_tags*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
