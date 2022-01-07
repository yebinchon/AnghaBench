; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_setup_engine.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_setup_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@bio_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"enabling auto ENGINE support\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid engine \22%s\22\0A\00", align 1
@ENGINE_CTRL_SET_LOGSTREAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"SET_USER_INTERFACE\00", align 1
@ENGINE_METHOD_ALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"can't use that engine\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"engine \22%s\22 set.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @setup_engine(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %60

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* @bio_err, align 4
  %15 = call i32 (i32, i8*, ...) @BIO_printf(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 (...) @ENGINE_register_all_complete()
  store i32* null, i32** %3, align 8
  br label %62

17:                                               ; preds = %9
  %18 = load i8*, i8** %4, align 8
  %19 = call i32* @ENGINE_by_id(i8* %18)
  store i32* %19, i32** %6, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = call i32* @try_load_engine(i8* %22)
  store i32* %23, i32** %6, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* @bio_err, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 (i32, i8*, ...) @BIO_printf(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* @bio_err, align 4
  %30 = call i32 @ERR_print_errors(i32 %29)
  store i32* null, i32** %3, align 8
  br label %62

31:                                               ; preds = %21, %17
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @ENGINE_CTRL_SET_LOGSTREAM, align 4
  %37 = load i32, i32* @bio_err, align 4
  %38 = call i32 @ENGINE_ctrl(i32* %35, i32 %36, i32 0, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i32*, i32** %6, align 8
  %41 = call i64 (...) @get_ui_method()
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @ENGINE_ctrl_cmd(i32* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 0, i8* %42, i32 0, i32 1)
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* @ENGINE_METHOD_ALL, align 4
  %46 = call i32 @ENGINE_set_default(i32* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* @bio_err, align 4
  %50 = call i32 (i32, i8*, ...) @BIO_printf(i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %51 = load i32, i32* @bio_err, align 4
  %52 = call i32 @ERR_print_errors(i32 %51)
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @ENGINE_free(i32* %53)
  store i32* null, i32** %3, align 8
  br label %62

55:                                               ; preds = %39
  %56 = load i32, i32* @bio_err, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = call i8* @ENGINE_get_id(i32* %57)
  %59 = call i32 (i32, i8*, ...) @BIO_printf(i32 %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %55, %2
  %61 = load i32*, i32** %6, align 8
  store i32* %61, i32** %3, align 8
  br label %62

62:                                               ; preds = %60, %48, %25, %13
  %63 = load i32*, i32** %3, align 8
  ret i32* %63
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @ENGINE_register_all_complete(...) #1

declare dso_local i32* @ENGINE_by_id(i8*) #1

declare dso_local i32* @try_load_engine(i8*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @ENGINE_ctrl(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ENGINE_ctrl_cmd(i32*, i8*, i32, i8*, i32, i32) #1

declare dso_local i64 @get_ui_method(...) #1

declare dso_local i32 @ENGINE_set_default(i32*, i32) #1

declare dso_local i32 @ENGINE_free(i32*) #1

declare dso_local i8* @ENGINE_get_id(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
