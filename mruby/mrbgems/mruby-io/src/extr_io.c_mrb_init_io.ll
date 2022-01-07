; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_init_io.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_init_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@MRB_TT_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Enumerable\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"_popen\00", align 1
@mrb_io_s_popen = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"_sysclose\00", align 1
@mrb_io_s_sysclose = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"for_fd\00", align 1
@mrb_io_s_for_fd = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@mrb_io_s_select = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"sysopen\00", align 1
@mrb_io_s_sysopen = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"_pipe\00", align 1
@mrb_io_s_pipe = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@mrb_io_initialize = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"initialize_copy\00", align 1
@mrb_io_initialize_copy = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"_check_readable\00", align 1
@mrb_io_check_readable = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"isatty\00", align 1
@mrb_io_isatty = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@mrb_io_sync = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"sync=\00", align 1
@mrb_io_set_sync = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"sysread\00", align 1
@mrb_io_sysread = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"sysseek\00", align 1
@mrb_io_sysseek = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"syswrite\00", align 1
@mrb_io_syswrite = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@mrb_io_close = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"close_write\00", align 1
@mrb_io_close_write = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [15 x i8] c"close_on_exec=\00", align 1
@mrb_io_set_close_on_exec = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [15 x i8] c"close_on_exec?\00", align 1
@mrb_io_close_on_exec_p = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [8 x i8] c"closed?\00", align 1
@mrb_io_closed = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [4 x i8] c"pid\00", align 1
@mrb_io_pid = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [7 x i8] c"fileno\00", align 1
@mrb_io_fileno = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"_bufread\00", align 1
@io_bufread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_init_io(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.RClass*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.RClass* @mrb_define_class(%struct.TYPE_8__* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %7)
  store %struct.RClass* %8, %struct.RClass** %3, align 8
  %9 = load %struct.RClass*, %struct.RClass** %3, align 8
  %10 = load i32, i32* @MRB_TT_DATA, align 4
  %11 = call i32 @MRB_SET_INSTANCE_TT(%struct.RClass* %9, i32 %10)
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = load %struct.RClass*, %struct.RClass** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = call i32 @mrb_module_get(%struct.TYPE_8__* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @mrb_include_module(%struct.TYPE_8__* %12, %struct.RClass* %13, i32 %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = load %struct.RClass*, %struct.RClass** %3, align 8
  %19 = load i32, i32* @mrb_io_s_popen, align 4
  %20 = call i32 @MRB_ARGS_ARG(i32 1, i32 2)
  %21 = call i32 @mrb_define_class_method(%struct.TYPE_8__* %17, %struct.RClass* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = load %struct.RClass*, %struct.RClass** %3, align 8
  %24 = load i32, i32* @mrb_io_s_sysclose, align 4
  %25 = call i32 @MRB_ARGS_REQ(i32 1)
  %26 = call i32 @mrb_define_class_method(%struct.TYPE_8__* %22, %struct.RClass* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = load %struct.RClass*, %struct.RClass** %3, align 8
  %29 = load i32, i32* @mrb_io_s_for_fd, align 4
  %30 = call i32 @MRB_ARGS_ARG(i32 1, i32 2)
  %31 = call i32 @mrb_define_class_method(%struct.TYPE_8__* %27, %struct.RClass* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = load %struct.RClass*, %struct.RClass** %3, align 8
  %34 = load i32, i32* @mrb_io_s_select, align 4
  %35 = call i32 @MRB_ARGS_ARG(i32 1, i32 3)
  %36 = call i32 @mrb_define_class_method(%struct.TYPE_8__* %32, %struct.RClass* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = load %struct.RClass*, %struct.RClass** %3, align 8
  %39 = load i32, i32* @mrb_io_s_sysopen, align 4
  %40 = call i32 @MRB_ARGS_ARG(i32 1, i32 2)
  %41 = call i32 @mrb_define_class_method(%struct.TYPE_8__* %37, %struct.RClass* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = load %struct.RClass*, %struct.RClass** %3, align 8
  %44 = load i32, i32* @mrb_io_s_pipe, align 4
  %45 = call i32 (...) @MRB_ARGS_NONE()
  %46 = call i32 @mrb_define_class_method(%struct.TYPE_8__* %42, %struct.RClass* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = load %struct.RClass*, %struct.RClass** %3, align 8
  %49 = load i32, i32* @mrb_io_initialize, align 4
  %50 = call i32 @MRB_ARGS_ARG(i32 1, i32 2)
  %51 = call i32 @mrb_define_method(%struct.TYPE_8__* %47, %struct.RClass* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = load %struct.RClass*, %struct.RClass** %3, align 8
  %54 = load i32, i32* @mrb_io_initialize_copy, align 4
  %55 = call i32 @MRB_ARGS_REQ(i32 1)
  %56 = call i32 @mrb_define_method(%struct.TYPE_8__* %52, %struct.RClass* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = load %struct.RClass*, %struct.RClass** %3, align 8
  %59 = load i32, i32* @mrb_io_check_readable, align 4
  %60 = call i32 (...) @MRB_ARGS_NONE()
  %61 = call i32 @mrb_define_method(%struct.TYPE_8__* %57, %struct.RClass* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = load %struct.RClass*, %struct.RClass** %3, align 8
  %64 = load i32, i32* @mrb_io_isatty, align 4
  %65 = call i32 (...) @MRB_ARGS_NONE()
  %66 = call i32 @mrb_define_method(%struct.TYPE_8__* %62, %struct.RClass* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %68 = load %struct.RClass*, %struct.RClass** %3, align 8
  %69 = load i32, i32* @mrb_io_sync, align 4
  %70 = call i32 (...) @MRB_ARGS_NONE()
  %71 = call i32 @mrb_define_method(%struct.TYPE_8__* %67, %struct.RClass* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %73 = load %struct.RClass*, %struct.RClass** %3, align 8
  %74 = load i32, i32* @mrb_io_set_sync, align 4
  %75 = call i32 @MRB_ARGS_REQ(i32 1)
  %76 = call i32 @mrb_define_method(%struct.TYPE_8__* %72, %struct.RClass* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %78 = load %struct.RClass*, %struct.RClass** %3, align 8
  %79 = load i32, i32* @mrb_io_sysread, align 4
  %80 = call i32 @MRB_ARGS_ARG(i32 1, i32 1)
  %81 = call i32 @mrb_define_method(%struct.TYPE_8__* %77, %struct.RClass* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %83 = load %struct.RClass*, %struct.RClass** %3, align 8
  %84 = load i32, i32* @mrb_io_sysseek, align 4
  %85 = call i32 @MRB_ARGS_ARG(i32 1, i32 1)
  %86 = call i32 @mrb_define_method(%struct.TYPE_8__* %82, %struct.RClass* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %88 = load %struct.RClass*, %struct.RClass** %3, align 8
  %89 = load i32, i32* @mrb_io_syswrite, align 4
  %90 = call i32 @MRB_ARGS_REQ(i32 1)
  %91 = call i32 @mrb_define_method(%struct.TYPE_8__* %87, %struct.RClass* %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %93 = load %struct.RClass*, %struct.RClass** %3, align 8
  %94 = load i32, i32* @mrb_io_close, align 4
  %95 = call i32 (...) @MRB_ARGS_NONE()
  %96 = call i32 @mrb_define_method(%struct.TYPE_8__* %92, %struct.RClass* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %98 = load %struct.RClass*, %struct.RClass** %3, align 8
  %99 = load i32, i32* @mrb_io_close_write, align 4
  %100 = call i32 (...) @MRB_ARGS_NONE()
  %101 = call i32 @mrb_define_method(%struct.TYPE_8__* %97, %struct.RClass* %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %103 = load %struct.RClass*, %struct.RClass** %3, align 8
  %104 = load i32, i32* @mrb_io_set_close_on_exec, align 4
  %105 = call i32 @MRB_ARGS_REQ(i32 1)
  %106 = call i32 @mrb_define_method(%struct.TYPE_8__* %102, %struct.RClass* %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %108 = load %struct.RClass*, %struct.RClass** %3, align 8
  %109 = load i32, i32* @mrb_io_close_on_exec_p, align 4
  %110 = call i32 (...) @MRB_ARGS_NONE()
  %111 = call i32 @mrb_define_method(%struct.TYPE_8__* %107, %struct.RClass* %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %113 = load %struct.RClass*, %struct.RClass** %3, align 8
  %114 = load i32, i32* @mrb_io_closed, align 4
  %115 = call i32 (...) @MRB_ARGS_NONE()
  %116 = call i32 @mrb_define_method(%struct.TYPE_8__* %112, %struct.RClass* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i32 %114, i32 %115)
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %118 = load %struct.RClass*, %struct.RClass** %3, align 8
  %119 = load i32, i32* @mrb_io_pid, align 4
  %120 = call i32 (...) @MRB_ARGS_NONE()
  %121 = call i32 @mrb_define_method(%struct.TYPE_8__* %117, %struct.RClass* %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i32 %119, i32 %120)
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %123 = load %struct.RClass*, %struct.RClass** %3, align 8
  %124 = load i32, i32* @mrb_io_fileno, align 4
  %125 = call i32 (...) @MRB_ARGS_NONE()
  %126 = call i32 @mrb_define_method(%struct.TYPE_8__* %122, %struct.RClass* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i32 %124, i32 %125)
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %128 = load %struct.RClass*, %struct.RClass** %3, align 8
  %129 = load i32, i32* @io_bufread, align 4
  %130 = call i32 @MRB_ARGS_REQ(i32 2)
  %131 = call i32 @mrb_define_class_method(%struct.TYPE_8__* %127, %struct.RClass* %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i32 %129, i32 %130)
  ret void
}

declare dso_local %struct.RClass* @mrb_define_class(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @MRB_SET_INSTANCE_TT(%struct.RClass*, i32) #1

declare dso_local i32 @mrb_include_module(%struct.TYPE_8__*, %struct.RClass*, i32) #1

declare dso_local i32 @mrb_module_get(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @mrb_define_class_method(%struct.TYPE_8__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_ARG(i32, i32) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

declare dso_local i32 @MRB_ARGS_NONE(...) #1

declare dso_local i32 @mrb_define_method(%struct.TYPE_8__*, %struct.RClass*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
