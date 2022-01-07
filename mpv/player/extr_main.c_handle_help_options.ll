; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_main.c_handle_help_options.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_main.c_handle_help_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, %struct.mp_log*, %struct.MPOpts* }
%struct.mp_log = type { i32 }
%struct.MPOpts = type { i32, i64, %struct.TYPE_2__*, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.mp_decoder_list = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@MSGL_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Audio decoders:\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Choices: ac3,dts-hd,dts (and possibly more)\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Video decoders:\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPContext*)* @handle_help_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_help_options(%struct.MPContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.MPOpts*, align 8
  %5 = alloca %struct.mp_log*, align 8
  %6 = alloca %struct.mp_decoder_list*, align 8
  %7 = alloca %struct.mp_decoder_list*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  %8 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %9 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %8, i32 0, i32 2
  %10 = load %struct.MPOpts*, %struct.MPOpts** %9, align 8
  store %struct.MPOpts* %10, %struct.MPOpts** %4, align 8
  %11 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %12 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %11, i32 0, i32 1
  %13 = load %struct.mp_log*, %struct.mp_log** %12, align 8
  store %struct.mp_log* %13, %struct.mp_log** %5, align 8
  %14 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %15 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %14, i32 0, i32 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %20 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %19, i32 0, i32 8
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @strcmp(i64 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = call %struct.mp_decoder_list* (...) @audio_decoder_list()
  store %struct.mp_decoder_list* %25, %struct.mp_decoder_list** %6, align 8
  %26 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %27 = load i32, i32* @MSGL_INFO, align 4
  %28 = load %struct.mp_decoder_list*, %struct.mp_decoder_list** %6, align 8
  %29 = call i32 @mp_print_decoders(%struct.mp_log* %26, i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.mp_decoder_list* %28)
  %30 = load %struct.mp_decoder_list*, %struct.mp_decoder_list** %6, align 8
  %31 = call i32 @talloc_free(%struct.mp_decoder_list* %30)
  store i32 1, i32* %2, align 4
  br label %141

32:                                               ; preds = %18, %1
  %33 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %34 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %39 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %38, i32 0, i32 7
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @strcmp(i64 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %45 = call i32 @MP_INFO(%struct.MPContext* %44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %141

46:                                               ; preds = %37, %32
  %47 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %48 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %53 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @strcmp(i64 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = call %struct.mp_decoder_list* (...) @video_decoder_list()
  store %struct.mp_decoder_list* %58, %struct.mp_decoder_list** %7, align 8
  %59 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %60 = load i32, i32* @MSGL_INFO, align 4
  %61 = load %struct.mp_decoder_list*, %struct.mp_decoder_list** %7, align 8
  %62 = call i32 @mp_print_decoders(%struct.mp_log* %59, i32 %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), %struct.mp_decoder_list* %61)
  %63 = load %struct.mp_decoder_list*, %struct.mp_decoder_list** %7, align 8
  %64 = call i32 @talloc_free(%struct.mp_decoder_list* %63)
  store i32 1, i32* %2, align 4
  br label %141

65:                                               ; preds = %51, %46
  %66 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %67 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %72 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @strcmp(i64 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %98, label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %78 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %83 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @strcmp(i64 %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %81, %76
  %88 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %89 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %87
  %93 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %94 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @strcmp(i64 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %92, %81, %70
  %99 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %100 = call i32 @demuxer_help(%struct.mp_log* %99)
  %101 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %102 = call i32 @MP_INFO(%struct.MPContext* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %141

103:                                              ; preds = %92, %87
  %104 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %105 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %104, i32 0, i32 2
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %103
  %111 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %112 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %111, i32 0, i32 2
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @strcmp(i64 %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %120 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %123 = call i32 @ao_print_devices(i32 %121, %struct.mp_log* %122)
  store i32 1, i32* %2, align 4
  br label %141

124:                                              ; preds = %110, %103
  %125 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %126 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %131 = call i32 @property_print_help(%struct.MPContext* %130)
  store i32 1, i32* %2, align 4
  br label %141

132:                                              ; preds = %124
  %133 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %134 = load %struct.MPOpts*, %struct.MPOpts** %4, align 8
  %135 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @encode_lavc_showhelp(%struct.mp_log* %133, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  store i32 1, i32* %2, align 4
  br label %141

140:                                              ; preds = %132
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %140, %139, %129, %118, %98, %57, %43, %24
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local %struct.mp_decoder_list* @audio_decoder_list(...) #1

declare dso_local i32 @mp_print_decoders(%struct.mp_log*, i32, i8*, %struct.mp_decoder_list*) #1

declare dso_local i32 @talloc_free(%struct.mp_decoder_list*) #1

declare dso_local i32 @MP_INFO(%struct.MPContext*, i8*) #1

declare dso_local %struct.mp_decoder_list* @video_decoder_list(...) #1

declare dso_local i32 @demuxer_help(%struct.mp_log*) #1

declare dso_local i32 @ao_print_devices(i32, %struct.mp_log*) #1

declare dso_local i32 @property_print_help(%struct.MPContext*) #1

declare dso_local i64 @encode_lavc_showhelp(%struct.mp_log*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
