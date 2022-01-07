; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_parse_commandline.c_m_config_preparse_command_line.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_parse_commandline.c_m_config_preparse_command_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.mpv_global = type { i32 }
%struct.parse_state = type { i8**, i32, i32, i64, %struct.TYPE_6__* }

@M_SETOPT_FROM_CMDLINE = common dso_local global i32 0, align 4
@M_SETOPT_PRE_PARSE_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"v\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_config_preparse_command_line(%struct.TYPE_6__* %0, %struct.mpv_global* %1, i32* %2, i8** %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.mpv_global*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.parse_state, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.mpv_global* %1, %struct.mpv_global** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8** %3, i8*** %8, align 8
  %12 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %9, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = bitcast %struct.TYPE_6__* %13 to i8**
  store i8** %14, i8*** %12, align 8
  %15 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %9, i32 0, i32 1
  %16 = load i8**, i8*** %8, align 8
  %17 = ptrtoint i8** %16 to i32
  store i32 %17, i32* %15, align 8
  %18 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %9, i32 0, i32 2
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %9, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %9, i32 0, i32 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %20, align 8
  br label %21

21:                                               ; preds = %48, %4
  %22 = call i64 @split_opt_silent(%struct.parse_state* %9)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %9, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load i32, i32* @M_SETOPT_FROM_CMDLINE, align 4
  %30 = load i32, i32* @M_SETOPT_PRE_PARSE_ONLY, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %9, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %9, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @m_config_set_option_cli(%struct.TYPE_6__* %32, i32 %34, i32 %36, i32 %37)
  %39 = getelementptr inbounds %struct.parse_state, %struct.parse_state* %9, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @bstrcmp0(i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %28
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %43, %28
  br label %48

48:                                               ; preds = %47, %24
  br label %21

49:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %64, %49
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %50

67:                                               ; preds = %50
  ret void
}

declare dso_local i64 @split_opt_silent(%struct.parse_state*) #1

declare dso_local i32 @m_config_set_option_cli(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i64 @bstrcmp0(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
