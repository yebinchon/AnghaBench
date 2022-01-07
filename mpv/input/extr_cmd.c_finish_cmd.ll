; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_cmd.c_finish_cmd.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_cmd.c_finish_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.mp_cmd = type { i32, i32, %struct.TYPE_4__*, %struct.mp_cmd_arg*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.mp_cmd_arg = type { i32, %struct.m_option* }
%struct.m_option = type { i32, i64 }

@MP_CMD_DEF_MAX_ARGS = common dso_local global i32 0, align 4
@MP_CMD_OPT_ARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Command %s: required argument %s not set.\0A\00", align 1
@MP_ASYNC_CMD = common dso_local global i32 0, align 4
@MP_SYNC_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, %struct.mp_cmd*)* @finish_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finish_cmd(%struct.mp_log* %0, %struct.mp_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_log*, align 8
  %5 = alloca %struct.mp_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.m_option*, align 8
  %8 = alloca %struct.mp_cmd_arg, align 8
  store %struct.mp_log* %0, %struct.mp_log** %4, align 8
  store %struct.mp_cmd* %1, %struct.mp_cmd** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %127, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MP_CMD_DEF_MAX_ARGS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %130

13:                                               ; preds = %9
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.mp_cmd*, %struct.mp_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load %struct.mp_cmd*, %struct.mp_cmd** %5, align 8
  %21 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %20, i32 0, i32 3
  %22 = load %struct.mp_cmd_arg*, %struct.mp_cmd_arg** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mp_cmd_arg, %struct.mp_cmd_arg* %22, i64 %24
  %26 = getelementptr inbounds %struct.mp_cmd_arg, %struct.mp_cmd_arg* %25, i32 0, i32 1
  %27 = load %struct.m_option*, %struct.m_option** %26, align 8
  %28 = icmp ne %struct.m_option* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %127

30:                                               ; preds = %19, %13
  %31 = load %struct.mp_cmd*, %struct.mp_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.m_option* @get_arg_type(%struct.TYPE_4__* %33, i32 %34)
  store %struct.m_option* %35, %struct.m_option** %7, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.mp_cmd*, %struct.mp_cmd** %5, align 8
  %38 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %30
  %42 = load %struct.m_option*, %struct.m_option** %7, align 8
  %43 = icmp ne %struct.m_option* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load %struct.mp_cmd*, %struct.mp_cmd** %5, align 8
  %46 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @is_vararg(%struct.TYPE_4__* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44, %41
  br label %130

52:                                               ; preds = %44, %30
  %53 = load %struct.m_option*, %struct.m_option** %7, align 8
  %54 = getelementptr inbounds %struct.m_option, %struct.m_option* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %75, label %57

57:                                               ; preds = %52
  %58 = load %struct.m_option*, %struct.m_option** %7, align 8
  %59 = getelementptr inbounds %struct.m_option, %struct.m_option* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @MP_CMD_OPT_ARG, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %57
  %65 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %66 = load %struct.mp_cmd*, %struct.mp_cmd** %5, align 8
  %67 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.mp_cmd*, %struct.mp_cmd** %5, align 8
  %70 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @get_arg_name(%struct.TYPE_4__* %71, i32 %72)
  %74 = call i32 @mp_err(%struct.mp_log* %65, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %73)
  store i32 0, i32* %3, align 4
  br label %157

75:                                               ; preds = %57, %52
  %76 = getelementptr inbounds %struct.mp_cmd_arg, %struct.mp_cmd_arg* %8, i32 0, i32 0
  store i32 0, i32* %76, align 8
  %77 = getelementptr inbounds %struct.mp_cmd_arg, %struct.mp_cmd_arg* %8, i32 0, i32 1
  %78 = load %struct.m_option*, %struct.m_option** %7, align 8
  store %struct.m_option* %78, %struct.m_option** %77, align 8
  %79 = load %struct.m_option*, %struct.m_option** %7, align 8
  %80 = getelementptr inbounds %struct.m_option, %struct.m_option* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %75
  %84 = load %struct.m_option*, %struct.m_option** %7, align 8
  %85 = getelementptr inbounds %struct.mp_cmd_arg, %struct.mp_cmd_arg* %8, i32 0, i32 0
  %86 = load %struct.m_option*, %struct.m_option** %7, align 8
  %87 = getelementptr inbounds %struct.m_option, %struct.m_option* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @m_option_copy(%struct.m_option* %84, i32* %85, i64 %88)
  br label %90

90:                                               ; preds = %83, %75
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.mp_cmd*, %struct.mp_cmd** %5, align 8
  %93 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp sle i32 %91, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.mp_cmd*, %struct.mp_cmd** %5, align 8
  %100 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %90
  %104 = load %struct.mp_cmd*, %struct.mp_cmd** %5, align 8
  %105 = load %struct.mp_cmd*, %struct.mp_cmd** %5, align 8
  %106 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %105, i32 0, i32 3
  %107 = load %struct.mp_cmd_arg*, %struct.mp_cmd_arg** %106, align 8
  %108 = load %struct.mp_cmd*, %struct.mp_cmd** %5, align 8
  %109 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = bitcast %struct.mp_cmd_arg* %8 to { i32, %struct.m_option* }*
  %112 = getelementptr inbounds { i32, %struct.m_option* }, { i32, %struct.m_option* }* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds { i32, %struct.m_option* }, { i32, %struct.m_option* }* %111, i32 0, i32 1
  %115 = load %struct.m_option*, %struct.m_option** %114, align 8
  %116 = call i32 @MP_TARRAY_APPEND(%struct.mp_cmd* %104, %struct.mp_cmd_arg* %107, i32 %110, i32 %113, %struct.m_option* %115)
  br label %126

117:                                              ; preds = %90
  %118 = load %struct.mp_cmd*, %struct.mp_cmd** %5, align 8
  %119 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %118, i32 0, i32 3
  %120 = load %struct.mp_cmd_arg*, %struct.mp_cmd_arg** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.mp_cmd_arg, %struct.mp_cmd_arg* %120, i64 %122
  %124 = bitcast %struct.mp_cmd_arg* %123 to i8*
  %125 = bitcast %struct.mp_cmd_arg* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 %125, i64 16, i1 false)
  br label %126

126:                                              ; preds = %117, %103
  br label %127

127:                                              ; preds = %126, %29
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %9

130:                                              ; preds = %51, %9
  %131 = load %struct.mp_cmd*, %struct.mp_cmd** %5, align 8
  %132 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @MP_ASYNC_CMD, align 4
  %135 = load i32, i32* @MP_SYNC_CMD, align 4
  %136 = or i32 %134, %135
  %137 = and i32 %133, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %156, label %139

139:                                              ; preds = %130
  %140 = load %struct.mp_cmd*, %struct.mp_cmd** %5, align 8
  %141 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %140, i32 0, i32 2
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i32, i32* @MP_ASYNC_CMD, align 4
  br label %150

148:                                              ; preds = %139
  %149 = load i32, i32* @MP_SYNC_CMD, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %147, %146 ], [ %149, %148 ]
  %152 = load %struct.mp_cmd*, %struct.mp_cmd** %5, align 8
  %153 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %150, %130
  store i32 1, i32* %3, align 4
  br label %157

157:                                              ; preds = %156, %64
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local %struct.m_option* @get_arg_type(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @is_vararg(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, i32, i32) #1

declare dso_local i32 @get_arg_name(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @m_option_copy(%struct.m_option*, i32*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.mp_cmd*, %struct.mp_cmd_arg*, i32, i32, %struct.m_option*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
