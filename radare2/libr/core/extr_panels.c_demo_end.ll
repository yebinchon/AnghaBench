; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c_demo_end.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c_demo_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"scr.utf8\00", align 1
@firstRun = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*)* @demo_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @demo_end(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @r_config_get_i(i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @r_config_set_i(i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_8__* @__get_cur_panel(i32 %23)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %6, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  store i32 0, i32* @firstRun, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = call i32 @__panels_refresh(%struct.TYPE_9__* %29)
  store i32 1, i32* @firstRun, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @r_config_set_i(i32 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = call i8* @r_cons_canvas_to_string(i32* %36)
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %74

40:                                               ; preds = %2
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @r_str_ansi_filter(i8* %41, i32* null, i32* null, i32 -1)
  %43 = call i32 @r_cons_get_size(i32* %9)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %67, %40
  %46 = load i32, i32* %8, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %11, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i8* @r_str_scale(i8* %50, i32 %51, i32 %52)
  store i8* %53, i8** %12, align 8
  %54 = call i32 (...) @r_cons_clear00()
  %55 = load i32, i32* %9, align 4
  %56 = sdiv i32 %55, 2
  %57 = load i32, i32* %11, align 4
  %58 = sdiv i32 %57, 2
  %59 = sub nsw i32 %56, %58
  %60 = call i32 @r_cons_gotoxy(i32 0, i32 %59)
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 @r_cons_strcat(i8* %61)
  %63 = call i32 (...) @r_cons_flush()
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @free(i8* %64)
  %66 = call i32 @r_sys_usleep(i32 3000)
  br label %67

67:                                               ; preds = %48
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %8, align 4
  br label %45

70:                                               ; preds = %45
  %71 = call i32 @r_sys_usleep(i32 100000)
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @free(i8* %72)
  br label %74

74:                                               ; preds = %70, %2
  ret void
}

declare dso_local i32 @r_config_get_i(i32, i8*) #1

declare dso_local i32 @r_config_set_i(i32, i8*, i32) #1

declare dso_local %struct.TYPE_8__* @__get_cur_panel(i32) #1

declare dso_local i32 @__panels_refresh(%struct.TYPE_9__*) #1

declare dso_local i8* @r_cons_canvas_to_string(i32*) #1

declare dso_local i32 @r_str_ansi_filter(i8*, i32*, i32*, i32) #1

declare dso_local i32 @r_cons_get_size(i32*) #1

declare dso_local i8* @r_str_scale(i8*, i32, i32) #1

declare dso_local i32 @r_cons_clear00(...) #1

declare dso_local i32 @r_cons_gotoxy(i32, i32) #1

declare dso_local i32 @r_cons_strcat(i8*) #1

declare dso_local i32 @r_cons_flush(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_sys_usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
