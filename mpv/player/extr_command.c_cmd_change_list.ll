; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_change_list.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_change_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, i32, i64, %struct.TYPE_6__*, %struct.MPContext* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.MPContext = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.m_config_option = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.m_option_type* }
%struct.m_option_type = type { %struct.m_option_action* }
%struct.m_option_action = type { i64 }

@OSD_LEVEL_INVISIBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unknown option: '%s'\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Unknown action: '%s'\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed setting option: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmd_change_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_change_list(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.m_config_option*, align 8
  %11 = alloca %struct.m_option_type*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.m_option_action*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = bitcast i8* %17 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %18, %struct.mp_cmd_ctx** %3, align 8
  %19 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %19, i32 0, i32 4
  %21 = load %struct.MPContext*, %struct.MPContext** %20, align 8
  store %struct.MPContext* %21, %struct.MPContext** %4, align 8
  %22 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %22, i32 0, i32 3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %5, align 8
  %29 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %30 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %29, i32 0, i32 3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %6, align 8
  %36 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %36, i32 0, i32 3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %7, align 8
  %43 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %44 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %8, align 4
  %48 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %1
  br label %55

53:                                               ; preds = %1
  %54 = load i32, i32* @OSD_LEVEL_INVISIBLE, align 4
  br label %55

55:                                               ; preds = %53, %52
  %56 = phi i32 [ 1, %52 ], [ %54, %53 ]
  store i32 %56, i32* %9, align 4
  %57 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %58 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @bstr0(i8* %60)
  %62 = call %struct.m_config_option* @m_config_get_co(i32 %59, i32 %61)
  store %struct.m_config_option* %62, %struct.m_config_option** %10, align 8
  %63 = load %struct.m_config_option*, %struct.m_config_option** %10, align 8
  %64 = icmp ne %struct.m_config_option* %63, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %55
  %66 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @set_osd_msg(%struct.MPContext* %66, i32 %67, i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %69)
  %71 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %72 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %71, i32 0, i32 0
  store i32 0, i32* %72, align 8
  br label %154

73:                                               ; preds = %55
  %74 = load %struct.m_config_option*, %struct.m_config_option** %10, align 8
  %75 = getelementptr inbounds %struct.m_config_option, %struct.m_config_option* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.m_option_type*, %struct.m_option_type** %77, align 8
  store %struct.m_option_type* %78, %struct.m_option_type** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %111, %73
  %80 = load %struct.m_option_type*, %struct.m_option_type** %11, align 8
  %81 = getelementptr inbounds %struct.m_option_type, %struct.m_option_type* %80, i32 0, i32 0
  %82 = load %struct.m_option_action*, %struct.m_option_action** %81, align 8
  %83 = icmp ne %struct.m_option_action* %82, null
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = load %struct.m_option_type*, %struct.m_option_type** %11, align 8
  %86 = getelementptr inbounds %struct.m_option_type, %struct.m_option_type* %85, i32 0, i32 0
  %87 = load %struct.m_option_action*, %struct.m_option_action** %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.m_option_action, %struct.m_option_action* %87, i64 %89
  %91 = getelementptr inbounds %struct.m_option_action, %struct.m_option_action* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br label %94

94:                                               ; preds = %84, %79
  %95 = phi i1 [ false, %79 ], [ %93, %84 ]
  br i1 %95, label %96, label %114

96:                                               ; preds = %94
  %97 = load %struct.m_option_type*, %struct.m_option_type** %11, align 8
  %98 = getelementptr inbounds %struct.m_option_type, %struct.m_option_type* %97, i32 0, i32 0
  %99 = load %struct.m_option_action*, %struct.m_option_action** %98, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.m_option_action, %struct.m_option_action* %99, i64 %101
  store %struct.m_option_action* %102, %struct.m_option_action** %14, align 8
  %103 = load %struct.m_option_action*, %struct.m_option_action** %14, align 8
  %104 = getelementptr inbounds %struct.m_option_action, %struct.m_option_action* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = call i64 @strcmp(i64 %105, i8* %106)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %96
  store i32 1, i32* %12, align 4
  br label %110

110:                                              ; preds = %109, %96
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %13, align 4
  br label %79

114:                                              ; preds = %94
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %114
  %118 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 @set_osd_msg(%struct.MPContext* %118, i32 %119, i32 %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %121)
  %123 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %124 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %123, i32 0, i32 0
  store i32 0, i32* %124, align 8
  br label %154

125:                                              ; preds = %114
  %126 = load i8*, i8** %5, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = call i8* @mp_tprintf(i32 80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %126, i8* %127)
  store i8* %128, i8** %15, align 8
  %129 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %130 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i8*, i8** %15, align 8
  %133 = call i32 @bstr0(i8* %132)
  %134 = load i8*, i8** %7, align 8
  %135 = call i32 @bstr0(i8* %134)
  %136 = call i32 @m_config_set_option_cli(i32 %131, i32 %133, i32 %135, i32 0)
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %125
  %140 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load i8*, i8** %5, align 8
  %144 = call i32 @set_osd_msg(%struct.MPContext* %140, i32 %141, i32 %142, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %143)
  %145 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %146 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %145, i32 0, i32 0
  store i32 0, i32* %146, align 8
  br label %154

147:                                              ; preds = %125
  %148 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %149 = load i8*, i8** %5, align 8
  %150 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %151 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @show_property_osd(%struct.MPContext* %148, i8* %149, i32 %152)
  br label %154

154:                                              ; preds = %147, %139, %117, %65
  ret void
}

declare dso_local %struct.m_config_option* @m_config_get_co(i32, i32) #1

declare dso_local i32 @bstr0(i8*) #1

declare dso_local i32 @set_osd_msg(%struct.MPContext*, i32, i32, i8*, i8*) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i8* @mp_tprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @m_config_set_option_cli(i32, i32, i32, i32) #1

declare dso_local i32 @show_property_osd(%struct.MPContext*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
