; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_io.c_io_set_process_status.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_io.c_io_set_process_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RClass = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"Process\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Status\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"$?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @io_set_process_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_set_process_status(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.RClass*, align 8
  %8 = alloca %struct.RClass*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.RClass* null, %struct.RClass** %8, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @mrb_class_defined(i32* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = call %struct.RClass* @mrb_module_get(i32* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.RClass* %15, %struct.RClass** %7, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.RClass*, %struct.RClass** %7, align 8
  %18 = call i32 @mrb_obj_value(%struct.RClass* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @mrb_intern_cstr(i32* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i64 @mrb_const_defined(i32* %16, i32 %18, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.RClass*, %struct.RClass** %7, align 8
  %26 = call %struct.RClass* @mrb_class_get_under(i32* %24, %struct.RClass* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.RClass* %26, %struct.RClass** %8, align 8
  br label %27

27:                                               ; preds = %23, %13
  br label %28

28:                                               ; preds = %27, %3
  %29 = load %struct.RClass*, %struct.RClass** %8, align 8
  %30 = icmp ne %struct.RClass* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.RClass*, %struct.RClass** %8, align 8
  %34 = call i32 @mrb_obj_value(%struct.RClass* %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @mrb_fixnum_value(i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @mrb_fixnum_value(i32 %37)
  %39 = call i32 @mrb_funcall(i32* %32, i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 2, i32 %36, i32 %38)
  store i32 %39, i32* %9, align 4
  br label %44

40:                                               ; preds = %28
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @WEXITSTATUS(i32 %41)
  %43 = call i32 @mrb_fixnum_value(i32 %42)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %40, %31
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @mrb_intern_cstr(i32* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @mrb_gv_set(i32* %45, i32 %47, i32 %48)
  ret void
}

declare dso_local i64 @mrb_class_defined(i32*, i8*) #1

declare dso_local %struct.RClass* @mrb_module_get(i32*, i8*) #1

declare dso_local i64 @mrb_const_defined(i32*, i32, i32) #1

declare dso_local i32 @mrb_obj_value(%struct.RClass*) #1

declare dso_local i32 @mrb_intern_cstr(i32*, i8*) #1

declare dso_local %struct.RClass* @mrb_class_get_under(i32*, %struct.RClass*, i8*) #1

declare dso_local i32 @mrb_funcall(i32*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @mrb_gv_set(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
