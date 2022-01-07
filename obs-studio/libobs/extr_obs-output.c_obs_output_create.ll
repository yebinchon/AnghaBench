; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_obs_output_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_obs_output_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.obs_output = type { i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_7__*, i32, %struct.obs_output_info, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.obs_output* }
%struct.obs_output_info = type { i32 (i32, %struct.obs_output.0*)*, i32 (i32)*, i32 }
%struct.obs_output.0 = type opaque
%struct.TYPE_6__ = type { i32 }

@OS_EVENT_TYPE_MANUAL = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Output ID '%s' not found\00", align 1
@obs = common dso_local global %struct.TYPE_10__* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to create output '%s'!\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"output '%s' (%s) created\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.obs_output* @obs_output_create(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.obs_output*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.obs_output_info*, align 8
  %11 = alloca %struct.obs_output*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.obs_output_info* @find_output(i8* %13)
  store %struct.obs_output_info* %14, %struct.obs_output_info** %10, align 8
  %15 = call i8* @bzalloc(i32 96)
  %16 = bitcast i8* %15 to %struct.obs_output*
  store %struct.obs_output* %16, %struct.obs_output** %11, align 8
  %17 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %18 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %17, i32 0, i32 14
  %19 = call i32 @pthread_mutex_init_value(i32* %18)
  %20 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %21 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %20, i32 0, i32 13
  %22 = call i32 @pthread_mutex_init_value(i32* %21)
  %23 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %24 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %23, i32 0, i32 12
  %25 = call i32 @pthread_mutex_init_value(i32* %24)
  %26 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %27 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %26, i32 0, i32 11
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 @pthread_mutex_init_value(i32* %28)
  %30 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %31 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %30, i32 0, i32 14
  %32 = call i64 @pthread_mutex_init(i32* %31, i32* null)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  br label %180

35:                                               ; preds = %4
  %36 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %37 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %36, i32 0, i32 13
  %38 = call i64 @pthread_mutex_init(i32* %37, i32* null)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %180

41:                                               ; preds = %35
  %42 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %43 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %42, i32 0, i32 12
  %44 = call i64 @pthread_mutex_init(i32* %43, i32* null)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %180

47:                                               ; preds = %41
  %48 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %49 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %48, i32 0, i32 11
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = call i64 @pthread_mutex_init(i32* %50, i32* null)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %180

54:                                               ; preds = %47
  %55 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %56 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %55, i32 0, i32 10
  %57 = load i32, i32* @OS_EVENT_TYPE_MANUAL, align 4
  %58 = call i32 @os_event_init(i32* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %180

61:                                               ; preds = %54
  %62 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @init_output_handlers(%struct.obs_output* %62, i8* %63, i32* %64, i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %61
  br label %180

69:                                               ; preds = %61
  %70 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %71 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @os_event_signal(i32 %72)
  %74 = load %struct.obs_output_info*, %struct.obs_output_info** %10, align 8
  %75 = icmp ne %struct.obs_output_info* %74, null
  br i1 %75, label %87, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* @LOG_ERROR, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 (i32, i8*, i8*, ...) @blog(i32 %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %78)
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @bstrdup(i8* %80)
  %82 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %83 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %82, i32 0, i32 7
  %84 = getelementptr inbounds %struct.obs_output_info, %struct.obs_output_info* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 8
  %85 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %86 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  br label %93

87:                                               ; preds = %69
  %88 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %89 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %88, i32 0, i32 7
  %90 = load %struct.obs_output_info*, %struct.obs_output_info** %10, align 8
  %91 = bitcast %struct.obs_output_info* %89 to i8*
  %92 = bitcast %struct.obs_output_info* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 24, i1 false)
  br label %93

93:                                               ; preds = %87, %76
  %94 = call i32 (...) @obs_get_video()
  %95 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %96 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %95, i32 0, i32 9
  store i32 %94, i32* %96, align 4
  %97 = call i32 (...) @obs_get_audio()
  %98 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %99 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %98, i32 0, i32 8
  store i32 %97, i32* %99, align 8
  %100 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %101 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.obs_output_info, %struct.obs_output_info* %101, i32 0, i32 1
  %103 = load i32 (i32)*, i32 (i32)** %102, align 8
  %104 = icmp ne i32 (i32)* %103, null
  br i1 %104, label %105, label %115

105:                                              ; preds = %93
  %106 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %107 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.obs_output_info, %struct.obs_output_info* %107, i32 0, i32 1
  %109 = load i32 (i32)*, i32 (i32)** %108, align 8
  %110 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %111 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 %109(i32 %113)
  br label %115

115:                                              ; preds = %105, %93
  %116 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %117 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %116, i32 0, i32 6
  %118 = load i32, i32* @OS_EVENT_TYPE_MANUAL, align 4
  %119 = call i32 @os_event_init(i32* %117, i32 %118)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %180

123:                                              ; preds = %115
  %124 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %125 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %124, i32 0, i32 1
  store i32 2, i32* %125, align 4
  %126 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %127 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %126, i32 0, i32 2
  store i32 20, i32* %127, align 8
  %128 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %129 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %128, i32 0, i32 3
  store i32 1, i32* %129, align 4
  %130 = call i8* @bzalloc(i32 4)
  %131 = bitcast i8* %130 to %struct.TYPE_7__*
  %132 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %133 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %132, i32 0, i32 5
  store %struct.TYPE_7__* %131, %struct.TYPE_7__** %133, align 8
  %134 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %135 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %136 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %135, i32 0, i32 5
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  store %struct.obs_output* %134, %struct.obs_output** %138, align 8
  %139 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %140 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %139, i32 0, i32 4
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** @obs, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** @obs, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = call i32 @obs_context_data_insert(%struct.TYPE_9__* %140, i32* %143, i32* %146)
  %148 = load %struct.obs_output_info*, %struct.obs_output_info** %10, align 8
  %149 = icmp ne %struct.obs_output_info* %148, null
  br i1 %149, label %150, label %164

150:                                              ; preds = %123
  %151 = load %struct.obs_output_info*, %struct.obs_output_info** %10, align 8
  %152 = getelementptr inbounds %struct.obs_output_info, %struct.obs_output_info* %151, i32 0, i32 0
  %153 = load i32 (i32, %struct.obs_output.0*)*, i32 (i32, %struct.obs_output.0*)** %152, align 8
  %154 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %155 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %159 = bitcast %struct.obs_output* %158 to %struct.obs_output.0*
  %160 = call i32 %153(i32 %157, %struct.obs_output.0* %159)
  %161 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %162 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 8
  br label %164

164:                                              ; preds = %150, %123
  %165 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %166 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %164
  %171 = load i32, i32* @LOG_ERROR, align 4
  %172 = load i8*, i8** %7, align 8
  %173 = call i32 (i32, i8*, i8*, ...) @blog(i32 %171, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %172)
  br label %174

174:                                              ; preds = %170, %164
  %175 = load i32, i32* @LOG_DEBUG, align 4
  %176 = load i8*, i8** %7, align 8
  %177 = load i8*, i8** %6, align 8
  %178 = call i32 (i32, i8*, i8*, ...) @blog(i32 %175, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %176, i8* %177)
  %179 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  store %struct.obs_output* %179, %struct.obs_output** %5, align 8
  br label %183

180:                                              ; preds = %122, %68, %60, %53, %46, %40, %34
  %181 = load %struct.obs_output*, %struct.obs_output** %11, align 8
  %182 = call i32 @obs_output_destroy(%struct.obs_output* %181)
  store %struct.obs_output* null, %struct.obs_output** %5, align 8
  br label %183

183:                                              ; preds = %180, %174
  %184 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  ret %struct.obs_output* %184
}

declare dso_local %struct.obs_output_info* @find_output(i8*) #1

declare dso_local i8* @bzalloc(i32) #1

declare dso_local i32 @pthread_mutex_init_value(i32*) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @os_event_init(i32*, i32) #1

declare dso_local i32 @init_output_handlers(%struct.obs_output*, i8*, i32*, i32*) #1

declare dso_local i32 @os_event_signal(i32) #1

declare dso_local i32 @blog(i32, i8*, i8*, ...) #1

declare dso_local i32 @bstrdup(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @obs_get_video(...) #1

declare dso_local i32 @obs_get_audio(...) #1

declare dso_local i32 @obs_context_data_insert(%struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @obs_output_destroy(%struct.obs_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
