; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_file_test.c_mrb_init_file_test.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_file_test.c_mrb_init_file_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"FileTest\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"directory?\00", align 1
@mrb_filetest_s_directory_p = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"exist?\00", align 1
@mrb_filetest_s_exist_p = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"exists?\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"file?\00", align 1
@mrb_filetest_s_file_p = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"pipe?\00", align 1
@mrb_filetest_s_pipe_p = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@mrb_filetest_s_size = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"size?\00", align 1
@mrb_filetest_s_size_p = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"socket?\00", align 1
@mrb_filetest_s_socket_p = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"symlink?\00", align 1
@mrb_filetest_s_symlink_p = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"zero?\00", align 1
@mrb_filetest_s_zero_p = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mrb_init_file_test(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.RClass*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.RClass* @mrb_define_class(%struct.TYPE_5__* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %7)
  store %struct.RClass* %8, %struct.RClass** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = load %struct.RClass*, %struct.RClass** %3, align 8
  %11 = load i32, i32* @mrb_filetest_s_directory_p, align 4
  %12 = call i32 @MRB_ARGS_REQ(i32 1)
  %13 = call i32 @mrb_define_class_method(%struct.TYPE_5__* %9, %struct.RClass* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = load %struct.RClass*, %struct.RClass** %3, align 8
  %16 = load i32, i32* @mrb_filetest_s_exist_p, align 4
  %17 = call i32 @MRB_ARGS_REQ(i32 1)
  %18 = call i32 @mrb_define_class_method(%struct.TYPE_5__* %14, %struct.RClass* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = load %struct.RClass*, %struct.RClass** %3, align 8
  %21 = load i32, i32* @mrb_filetest_s_exist_p, align 4
  %22 = call i32 @MRB_ARGS_REQ(i32 1)
  %23 = call i32 @mrb_define_class_method(%struct.TYPE_5__* %19, %struct.RClass* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = load %struct.RClass*, %struct.RClass** %3, align 8
  %26 = load i32, i32* @mrb_filetest_s_file_p, align 4
  %27 = call i32 @MRB_ARGS_REQ(i32 1)
  %28 = call i32 @mrb_define_class_method(%struct.TYPE_5__* %24, %struct.RClass* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = load %struct.RClass*, %struct.RClass** %3, align 8
  %31 = load i32, i32* @mrb_filetest_s_pipe_p, align 4
  %32 = call i32 @MRB_ARGS_REQ(i32 1)
  %33 = call i32 @mrb_define_class_method(%struct.TYPE_5__* %29, %struct.RClass* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = load %struct.RClass*, %struct.RClass** %3, align 8
  %36 = load i32, i32* @mrb_filetest_s_size, align 4
  %37 = call i32 @MRB_ARGS_REQ(i32 1)
  %38 = call i32 @mrb_define_class_method(%struct.TYPE_5__* %34, %struct.RClass* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = load %struct.RClass*, %struct.RClass** %3, align 8
  %41 = load i32, i32* @mrb_filetest_s_size_p, align 4
  %42 = call i32 @MRB_ARGS_REQ(i32 1)
  %43 = call i32 @mrb_define_class_method(%struct.TYPE_5__* %39, %struct.RClass* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = load %struct.RClass*, %struct.RClass** %3, align 8
  %46 = load i32, i32* @mrb_filetest_s_socket_p, align 4
  %47 = call i32 @MRB_ARGS_REQ(i32 1)
  %48 = call i32 @mrb_define_class_method(%struct.TYPE_5__* %44, %struct.RClass* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = load %struct.RClass*, %struct.RClass** %3, align 8
  %51 = load i32, i32* @mrb_filetest_s_symlink_p, align 4
  %52 = call i32 @MRB_ARGS_REQ(i32 1)
  %53 = call i32 @mrb_define_class_method(%struct.TYPE_5__* %49, %struct.RClass* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = load %struct.RClass*, %struct.RClass** %3, align 8
  %56 = load i32, i32* @mrb_filetest_s_zero_p, align 4
  %57 = call i32 @MRB_ARGS_REQ(i32 1)
  %58 = call i32 @mrb_define_class_method(%struct.TYPE_5__* %54, %struct.RClass* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %56, i32 %57)
  ret void
}

declare dso_local %struct.RClass* @mrb_define_class(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @mrb_define_class_method(%struct.TYPE_5__*, %struct.RClass*, i8*, i32, i32) #1

declare dso_local i32 @MRB_ARGS_REQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
