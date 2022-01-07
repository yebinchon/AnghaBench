; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-jack/extr_jack-wrapper.c_jack_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-jack/extr_jack-wrapper.c_jack_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jack_data = type { i32, i32, i32*, i32**, i32, i64 }

@JackNullOption = common dso_local global i32 0, align 4
@JackNoStartServer = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"jack_client_open Error:Could not create JACK client! %s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"in_%u\00", align 1
@JACK_DEFAULT_AUDIO_TYPE = common dso_local global i32 0, align 4
@JackPortIsInput = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"jack_port_register Error:Could not create JACK port! %s\00", align 1
@jack_process_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"jack_set_process_callback Error\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"jack_activate Error:Could not activate JACK client!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jack_init(%struct.jack_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jack_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [10 x i8], align 1
  store %struct.jack_data* %0, %struct.jack_data** %3, align 8
  %7 = load %struct.jack_data*, %struct.jack_data** %3, align 8
  %8 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %7, i32 0, i32 1
  %9 = call i32 @pthread_mutex_lock(i32* %8)
  %10 = load %struct.jack_data*, %struct.jack_data** %3, align 8
  %11 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %116

15:                                               ; preds = %1
  %16 = load %struct.jack_data*, %struct.jack_data** %3, align 8
  %17 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @JackNullOption, align 4
  br label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @JackNoStartServer, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %4, align 4
  %26 = load %struct.jack_data*, %struct.jack_data** %3, align 8
  %27 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32* @jack_client_open(i32 %28, i32 %29, i32 0)
  %31 = load %struct.jack_data*, %struct.jack_data** %3, align 8
  %32 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %31, i32 0, i32 2
  store i32* %30, i32** %32, align 8
  %33 = load %struct.jack_data*, %struct.jack_data** %3, align 8
  %34 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %24
  %38 = load i32, i32* @LOG_ERROR, align 4
  %39 = load %struct.jack_data*, %struct.jack_data** %3, align 8
  %40 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i32, i8*, ...) @blog(i32 %38, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %120

43:                                               ; preds = %24
  %44 = load %struct.jack_data*, %struct.jack_data** %3, align 8
  %45 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = mul i64 8, %47
  %49 = trunc i64 %48 to i32
  %50 = call i64 @bzalloc(i32 %49)
  %51 = inttoptr i64 %50 to i32**
  %52 = load %struct.jack_data*, %struct.jack_data** %3, align 8
  %53 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %52, i32 0, i32 3
  store i32** %51, i32*** %53, align 8
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %92, %43
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.jack_data*, %struct.jack_data** %3, align 8
  %57 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %60, label %95

60:                                               ; preds = %54
  %61 = bitcast [10 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %61, i8 0, i64 10, i1 false)
  %62 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %63 = load i32, i32* %5, align 4
  %64 = add i32 %63, 1
  %65 = call i32 @snprintf(i8* %62, i32 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load %struct.jack_data*, %struct.jack_data** %3, align 8
  %67 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %70 = load i32, i32* @JACK_DEFAULT_AUDIO_TYPE, align 4
  %71 = load i32, i32* @JackPortIsInput, align 4
  %72 = call i32* @jack_port_register(i32* %68, i8* %69, i32 %70, i32 %71, i32 0)
  %73 = load %struct.jack_data*, %struct.jack_data** %3, align 8
  %74 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %73, i32 0, i32 3
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  store i32* %72, i32** %78, align 8
  %79 = load %struct.jack_data*, %struct.jack_data** %3, align 8
  %80 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %79, i32 0, i32 3
  %81 = load i32**, i32*** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %60
  %88 = load i32, i32* @LOG_ERROR, align 4
  %89 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %90 = call i32 (i32, i8*, ...) @blog(i32 %88, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i8* %89)
  br label %120

91:                                               ; preds = %60
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %5, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %54

95:                                               ; preds = %54
  %96 = load %struct.jack_data*, %struct.jack_data** %3, align 8
  %97 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* @jack_process_callback, align 4
  %100 = load %struct.jack_data*, %struct.jack_data** %3, align 8
  %101 = call i64 @jack_set_process_callback(i32* %98, i32 %99, %struct.jack_data* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load i32, i32* @LOG_ERROR, align 4
  %105 = call i32 (i32, i8*, ...) @blog(i32 %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %120

106:                                              ; preds = %95
  %107 = load %struct.jack_data*, %struct.jack_data** %3, align 8
  %108 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = call i64 @jack_activate(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i32, i32* @LOG_ERROR, align 4
  %114 = call i32 (i32, i8*, ...) @blog(i32 %113, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %120

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %14
  %117 = load %struct.jack_data*, %struct.jack_data** %3, align 8
  %118 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %117, i32 0, i32 1
  %119 = call i32 @pthread_mutex_unlock(i32* %118)
  store i32 0, i32* %2, align 4
  br label %124

120:                                              ; preds = %112, %103, %87, %37
  %121 = load %struct.jack_data*, %struct.jack_data** %3, align 8
  %122 = getelementptr inbounds %struct.jack_data, %struct.jack_data* %121, i32 0, i32 1
  %123 = call i32 @pthread_mutex_unlock(i32* %122)
  store i32 1, i32* %2, align 4
  br label %124

124:                                              ; preds = %120, %116
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32* @jack_client_open(i32, i32, i32) #1

declare dso_local i32 @blog(i32, i8*, ...) #1

declare dso_local i64 @bzalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32* @jack_port_register(i32*, i8*, i32, i32, i32) #1

declare dso_local i64 @jack_set_process_callback(i32*, i32, %struct.jack_data*) #1

declare dso_local i64 @jack_activate(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
