; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_cmd.c_set_node_arg.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_cmd.c_set_node_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.mp_cmd = type { i32, %struct.mp_cmd_arg*, i32, i32 }
%struct.mp_cmd_arg = type { i32, i32, %struct.m_option* }
%struct.m_option = type { i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Command %s: has only %d arguments.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Command %s: argument %s was already set.\0A\00", align 1
@MPV_FORMAT_STRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"Command %s: argument %s can't be parsed: %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Command %s: argument %s has incompatible type.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, %struct.mp_cmd*, i32, %struct.TYPE_6__*)* @set_node_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_node_arg(%struct.mp_log* %0, %struct.mp_cmd* %1, i32 %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_log*, align 8
  %7 = alloca %struct.mp_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.m_option*, align 8
  %12 = alloca %struct.mp_cmd_arg, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mp_cmd_arg, align 8
  store %struct.mp_log* %0, %struct.mp_log** %6, align 8
  store %struct.mp_cmd* %1, %struct.mp_cmd** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  %17 = load %struct.mp_cmd*, %struct.mp_cmd** %7, align 8
  %18 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i8* @get_arg_name(i32 %19, i32 %20)
  store i8* %21, i8** %10, align 8
  %22 = load %struct.mp_cmd*, %struct.mp_cmd** %7, align 8
  %23 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.m_option* @get_arg_type(i32 %24, i32 %25)
  store %struct.m_option* %26, %struct.m_option** %11, align 8
  %27 = load %struct.m_option*, %struct.m_option** %11, align 8
  %28 = icmp ne %struct.m_option* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %4
  %30 = load %struct.mp_log*, %struct.mp_log** %6, align 8
  %31 = load %struct.mp_cmd*, %struct.mp_cmd** %7, align 8
  %32 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (%struct.mp_log*, i8*, i32, ...) @mp_err(%struct.mp_log* %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  store i32 0, i32* %5, align 4
  br label %143

36:                                               ; preds = %4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.mp_cmd*, %struct.mp_cmd** %7, align 8
  %39 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %36
  %43 = load %struct.mp_cmd*, %struct.mp_cmd** %7, align 8
  %44 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %43, i32 0, i32 1
  %45 = load %struct.mp_cmd_arg*, %struct.mp_cmd_arg** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.mp_cmd_arg, %struct.mp_cmd_arg* %45, i64 %47
  %49 = getelementptr inbounds %struct.mp_cmd_arg, %struct.mp_cmd_arg* %48, i32 0, i32 2
  %50 = load %struct.m_option*, %struct.m_option** %49, align 8
  %51 = icmp ne %struct.m_option* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %42
  %53 = load %struct.mp_log*, %struct.mp_log** %6, align 8
  %54 = load %struct.mp_cmd*, %struct.mp_cmd** %7, align 8
  %55 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 (%struct.mp_log*, i8*, i32, ...) @mp_err(%struct.mp_log* %53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %56, i8* %57)
  store i32 0, i32* %5, align 4
  br label %143

59:                                               ; preds = %42, %36
  %60 = getelementptr inbounds %struct.mp_cmd_arg, %struct.mp_cmd_arg* %12, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = getelementptr inbounds %struct.mp_cmd_arg, %struct.mp_cmd_arg* %12, i32 0, i32 1
  store i32 0, i32* %61, align 4
  %62 = getelementptr inbounds %struct.mp_cmd_arg, %struct.mp_cmd_arg* %12, i32 0, i32 2
  %63 = load %struct.m_option*, %struct.m_option** %11, align 8
  store %struct.m_option* %63, %struct.m_option** %62, align 8
  %64 = getelementptr inbounds %struct.mp_cmd_arg, %struct.mp_cmd_arg* %12, i32 0, i32 1
  %65 = bitcast i32* %64 to i8*
  store i8* %65, i8** %13, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MPV_FORMAT_STRING, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %59
  %72 = load %struct.mp_log*, %struct.mp_log** %6, align 8
  %73 = load %struct.m_option*, %struct.m_option** %11, align 8
  %74 = load %struct.mp_cmd*, %struct.mp_cmd** %7, align 8
  %75 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @bstr0(i32 %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @bstr0(i32 %81)
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @m_option_parse(%struct.mp_log* %72, %struct.m_option* %73, i32 %77, i32 %82, i8* %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %71
  %88 = load %struct.mp_log*, %struct.mp_log** %6, align 8
  %89 = load %struct.mp_cmd*, %struct.mp_cmd** %7, align 8
  %90 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @m_option_strerror(i32 %93)
  %95 = call i32 (%struct.mp_log*, i8*, i32, ...) @mp_err(%struct.mp_log* %88, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %91, i8* %92, i32 %94)
  store i32 0, i32* %5, align 4
  br label %143

96:                                               ; preds = %71
  br label %112

97:                                               ; preds = %59
  %98 = load %struct.m_option*, %struct.m_option** %11, align 8
  %99 = load i8*, i8** %13, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %101 = call i32 @m_option_set_node(%struct.m_option* %98, i8* %99, %struct.TYPE_6__* %100)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %97
  %105 = load %struct.mp_log*, %struct.mp_log** %6, align 8
  %106 = load %struct.mp_cmd*, %struct.mp_cmd** %7, align 8
  %107 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = call i32 (%struct.mp_log*, i8*, i32, ...) @mp_err(%struct.mp_log* %105, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %108, i8* %109)
  store i32 0, i32* %5, align 4
  br label %143

111:                                              ; preds = %97
  br label %112

112:                                              ; preds = %111, %96
  br label %113

113:                                              ; preds = %119, %112
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.mp_cmd*, %struct.mp_cmd** %7, align 8
  %116 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp sge i32 %114, %117
  br i1 %118, label %119, label %134

119:                                              ; preds = %113
  %120 = bitcast %struct.mp_cmd_arg* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %120, i8 0, i64 16, i1 false)
  %121 = load %struct.mp_cmd*, %struct.mp_cmd** %7, align 8
  %122 = load %struct.mp_cmd*, %struct.mp_cmd** %7, align 8
  %123 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %122, i32 0, i32 1
  %124 = load %struct.mp_cmd_arg*, %struct.mp_cmd_arg** %123, align 8
  %125 = load %struct.mp_cmd*, %struct.mp_cmd** %7, align 8
  %126 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = bitcast %struct.mp_cmd_arg* %16 to { i64, %struct.m_option* }*
  %129 = getelementptr inbounds { i64, %struct.m_option* }, { i64, %struct.m_option* }* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds { i64, %struct.m_option* }, { i64, %struct.m_option* }* %128, i32 0, i32 1
  %132 = load %struct.m_option*, %struct.m_option** %131, align 8
  %133 = call i32 @MP_TARRAY_APPEND(%struct.mp_cmd* %121, %struct.mp_cmd_arg* %124, i32 %127, i64 %130, %struct.m_option* %132)
  br label %113

134:                                              ; preds = %113
  %135 = load %struct.mp_cmd*, %struct.mp_cmd** %7, align 8
  %136 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %135, i32 0, i32 1
  %137 = load %struct.mp_cmd_arg*, %struct.mp_cmd_arg** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.mp_cmd_arg, %struct.mp_cmd_arg* %137, i64 %139
  %141 = bitcast %struct.mp_cmd_arg* %140 to i8*
  %142 = bitcast %struct.mp_cmd_arg* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %141, i8* align 8 %142, i64 16, i1 false)
  store i32 1, i32* %5, align 4
  br label %143

143:                                              ; preds = %134, %104, %87, %52, %29
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local i8* @get_arg_name(i32, i32) #1

declare dso_local %struct.m_option* @get_arg_type(i32, i32) #1

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, i32, ...) #1

declare dso_local i32 @m_option_parse(%struct.mp_log*, %struct.m_option*, i32, i32, i8*) #1

declare dso_local i32 @bstr0(i32) #1

declare dso_local i32 @m_option_strerror(i32) #1

declare dso_local i32 @m_option_set_node(%struct.m_option*, i8*, %struct.TYPE_6__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @MP_TARRAY_APPEND(%struct.mp_cmd*, %struct.mp_cmd_arg*, i32, i64, %struct.m_option*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
