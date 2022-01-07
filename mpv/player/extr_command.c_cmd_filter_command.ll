; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_filter_command.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_filter_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, %struct.TYPE_8__*, i64, %struct.MPContext* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.MPContext = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.mp_output_chain* }
%struct.mp_output_chain = type { i32 }
%struct.TYPE_5__ = type { %struct.mp_output_chain* }
%struct.mp_filter_command = type { i32, i32, i32 }

@STREAM_VIDEO = common dso_local global i32 0, align 4
@STREAM_AUDIO = common dso_local global i32 0, align 4
@MP_FILTER_COMMAND_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmd_filter_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_filter_command(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_output_chain*, align 8
  %7 = alloca %struct.mp_filter_command, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %9, %struct.mp_cmd_ctx** %3, align 8
  %10 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %10, i32 0, i32 3
  %12 = load %struct.MPContext*, %struct.MPContext** %11, align 8
  store %struct.MPContext* %12, %struct.MPContext** %4, align 8
  %13 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  store %struct.mp_output_chain* null, %struct.mp_output_chain** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @STREAM_VIDEO, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %23 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %28 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.mp_output_chain*, %struct.mp_output_chain** %30, align 8
  br label %33

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %26
  %34 = phi %struct.mp_output_chain* [ %31, %26 ], [ null, %32 ]
  store %struct.mp_output_chain* %34, %struct.mp_output_chain** %6, align 8
  br label %35

35:                                               ; preds = %33, %1
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @STREAM_AUDIO, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %41 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = icmp ne %struct.TYPE_6__* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %46 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.mp_output_chain*, %struct.mp_output_chain** %48, align 8
  br label %51

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %44
  %52 = phi %struct.mp_output_chain* [ %49, %44 ], [ null, %50 ]
  store %struct.mp_output_chain* %52, %struct.mp_output_chain** %6, align 8
  br label %53

53:                                               ; preds = %51, %35
  %54 = load %struct.mp_output_chain*, %struct.mp_output_chain** %6, align 8
  %55 = icmp ne %struct.mp_output_chain* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %58 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  br label %89

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %7, i32 0, i32 0
  %61 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %60, align 4
  %68 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %7, i32 0, i32 1
  %69 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %70 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %68, align 4
  %76 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %7, i32 0, i32 2
  %77 = load i32, i32* @MP_FILTER_COMMAND_TEXT, align 4
  store i32 %77, i32* %76, align 4
  %78 = load %struct.mp_output_chain*, %struct.mp_output_chain** %6, align 8
  %79 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %80 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @mp_output_chain_command(%struct.mp_output_chain* %78, i32 %85, %struct.mp_filter_command* %7)
  %87 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %88 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %59, %56
  ret void
}

declare dso_local i32 @mp_output_chain_command(%struct.mp_output_chain*, i32, %struct.mp_filter_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
