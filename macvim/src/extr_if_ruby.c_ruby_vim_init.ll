; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_ruby.c_ruby_vim_init.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_ruby.c_ruby_vim_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@objtbl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"Vim\00", align 1
@mVIM = common dso_local global i32 0, align 4
@rb_cObject = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"VIM\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"VERSION_MAJOR\00", align 1
@VIM_VERSION_MAJOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"VERSION_MINOR\00", align 1
@VIM_VERSION_MINOR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"VERSION_BUILD\00", align 1
@VIM_VERSION_BUILD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"VERSION_PATCHLEVEL\00", align 1
@VIM_VERSION_PATCHLEVEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"VERSION_SHORT\00", align 1
@VIM_VERSION_SHORT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"VERSION_MEDIUM\00", align 1
@VIM_VERSION_MEDIUM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"VERSION_LONG\00", align 1
@VIM_VERSION_LONG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"VERSION_LONG_DATE\00", align 1
@VIM_VERSION_LONG_DATE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@vim_message = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"set_option\00", align 1
@vim_set_option = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@vim_command = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"evaluate\00", align 1
@vim_evaluate = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [19 x i8] c"DeletedBufferError\00", align 1
@rb_eStandardError = common dso_local global i32 0, align 4
@eDeletedBufferError = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [19 x i8] c"DeletedWindowError\00", align 1
@eDeletedWindowError = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c"Buffer\00", align 1
@cBuffer = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@buffer_s_current = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@buffer_s_count = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@buffer_s_aref = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@buffer_name = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@buffer_number = common dso_local global i32 0, align 4
@buffer_count = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@buffer_aref = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [4 x i8] c"[]=\00", align 1
@buffer_aset = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@buffer_delete = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@buffer_append = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [12 x i8] c"line_number\00", align 1
@current_line_number = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@line_s_current = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"line=\00", align 1
@set_current_line = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [7 x i8] c"Window\00", align 1
@cVimWindow = common dso_local global i8* null, align 8
@window_s_current = common dso_local global i32 0, align 4
@window_s_count = common dso_local global i32 0, align 4
@window_s_aref = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@window_buffer = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@window_height = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [8 x i8] c"height=\00", align 1
@window_set_height = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@window_width = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [7 x i8] c"width=\00", align 1
@window_set_width = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@window_cursor = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [8 x i8] c"cursor=\00", align 1
@window_set_cursor = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [8 x i8] c"$curbuf\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"$curwin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ruby_vim_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ruby_vim_init() #0 {
  %1 = call i32 (...) @rb_hash_new()
  store i32 %1, i32* @objtbl, align 4
  %2 = call i32 @rb_global_variable(i32* @objtbl)
  %3 = call i32 @rb_define_module(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %3, i32* @mVIM, align 4
  %4 = load i32, i32* @rb_cObject, align 4
  %5 = load i32, i32* @mVIM, align 4
  %6 = call i32 @rb_define_const(i32 %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @mVIM, align 4
  %8 = load i32, i32* @VIM_VERSION_MAJOR, align 4
  %9 = call i32 @INT2NUM(i32 %8)
  %10 = call i32 @rb_define_const(i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @mVIM, align 4
  %12 = load i32, i32* @VIM_VERSION_MINOR, align 4
  %13 = call i32 @INT2NUM(i32 %12)
  %14 = call i32 @rb_define_const(i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @mVIM, align 4
  %16 = load i32, i32* @VIM_VERSION_BUILD, align 4
  %17 = call i32 @INT2NUM(i32 %16)
  %18 = call i32 @rb_define_const(i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @mVIM, align 4
  %20 = load i32, i32* @VIM_VERSION_PATCHLEVEL, align 4
  %21 = call i32 @INT2NUM(i32 %20)
  %22 = call i32 @rb_define_const(i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @mVIM, align 4
  %24 = load i32, i32* @VIM_VERSION_SHORT, align 4
  %25 = call i32 @rb_str_new2(i32 %24)
  %26 = call i32 @rb_define_const(i32 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @mVIM, align 4
  %28 = load i32, i32* @VIM_VERSION_MEDIUM, align 4
  %29 = call i32 @rb_str_new2(i32 %28)
  %30 = call i32 @rb_define_const(i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @mVIM, align 4
  %32 = load i32, i32* @VIM_VERSION_LONG, align 4
  %33 = call i32 @rb_str_new2(i32 %32)
  %34 = call i32 @rb_define_const(i32 %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @mVIM, align 4
  %36 = load i32, i32* @VIM_VERSION_LONG_DATE, align 4
  %37 = call i32 @rb_str_new2(i32 %36)
  %38 = call i32 @rb_define_const(i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @mVIM, align 4
  %40 = load i32, i32* @vim_message, align 4
  %41 = call i32 @rb_define_module_function(i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %40, i32 1)
  %42 = load i32, i32* @mVIM, align 4
  %43 = load i32, i32* @vim_set_option, align 4
  %44 = call i32 @rb_define_module_function(i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %43, i32 1)
  %45 = load i32, i32* @mVIM, align 4
  %46 = load i32, i32* @vim_command, align 4
  %47 = call i32 @rb_define_module_function(i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %46, i32 1)
  %48 = load i32, i32* @mVIM, align 4
  %49 = load i32, i32* @vim_evaluate, align 4
  %50 = call i32 @rb_define_module_function(i32 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %49, i32 1)
  %51 = load i32, i32* @mVIM, align 4
  %52 = load i32, i32* @rb_eStandardError, align 4
  %53 = call i8* @rb_define_class_under(i32 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 %52)
  store i8* %53, i8** @eDeletedBufferError, align 8
  %54 = load i32, i32* @mVIM, align 4
  %55 = load i32, i32* @rb_eStandardError, align 4
  %56 = call i8* @rb_define_class_under(i32 %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %55)
  store i8* %56, i8** @eDeletedWindowError, align 8
  %57 = load i32, i32* @mVIM, align 4
  %58 = load i32, i32* @rb_cObject, align 4
  %59 = call i8* @rb_define_class_under(i32 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 %58)
  store i8* %59, i8** @cBuffer, align 8
  %60 = load i8*, i8** @cBuffer, align 8
  %61 = load i32, i32* @buffer_s_current, align 4
  %62 = call i32 @rb_define_singleton_method(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32 %61, i32 0)
  %63 = load i8*, i8** @cBuffer, align 8
  %64 = load i32, i32* @buffer_s_count, align 4
  %65 = call i32 @rb_define_singleton_method(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 %64, i32 0)
  %66 = load i8*, i8** @cBuffer, align 8
  %67 = load i32, i32* @buffer_s_aref, align 4
  %68 = call i32 @rb_define_singleton_method(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32 %67, i32 1)
  %69 = load i8*, i8** @cBuffer, align 8
  %70 = load i32, i32* @buffer_name, align 4
  %71 = call i32 @rb_define_method(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 %70, i32 0)
  %72 = load i8*, i8** @cBuffer, align 8
  %73 = load i32, i32* @buffer_number, align 4
  %74 = call i32 @rb_define_method(i8* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i32 %73, i32 0)
  %75 = load i8*, i8** @cBuffer, align 8
  %76 = load i32, i32* @buffer_count, align 4
  %77 = call i32 @rb_define_method(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 %76, i32 0)
  %78 = load i8*, i8** @cBuffer, align 8
  %79 = load i32, i32* @buffer_count, align 4
  %80 = call i32 @rb_define_method(i8* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i32 %79, i32 0)
  %81 = load i8*, i8** @cBuffer, align 8
  %82 = load i32, i32* @buffer_aref, align 4
  %83 = call i32 @rb_define_method(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32 %82, i32 1)
  %84 = load i8*, i8** @cBuffer, align 8
  %85 = load i32, i32* @buffer_aset, align 4
  %86 = call i32 @rb_define_method(i8* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i32 %85, i32 2)
  %87 = load i8*, i8** @cBuffer, align 8
  %88 = load i32, i32* @buffer_delete, align 4
  %89 = call i32 @rb_define_method(i8* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i32 %88, i32 1)
  %90 = load i8*, i8** @cBuffer, align 8
  %91 = load i32, i32* @buffer_append, align 4
  %92 = call i32 @rb_define_method(i8* %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i32 %91, i32 2)
  %93 = load i8*, i8** @cBuffer, align 8
  %94 = load i32, i32* @current_line_number, align 4
  %95 = call i32 @rb_define_method(i8* %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 %94, i32 0)
  %96 = load i8*, i8** @cBuffer, align 8
  %97 = load i32, i32* @line_s_current, align 4
  %98 = call i32 @rb_define_method(i8* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 %97, i32 0)
  %99 = load i8*, i8** @cBuffer, align 8
  %100 = load i32, i32* @set_current_line, align 4
  %101 = call i32 @rb_define_method(i8* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i32 %100, i32 1)
  %102 = load i32, i32* @mVIM, align 4
  %103 = load i32, i32* @rb_cObject, align 4
  %104 = call i8* @rb_define_class_under(i32 %102, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i32 %103)
  store i8* %104, i8** @cVimWindow, align 8
  %105 = load i8*, i8** @cVimWindow, align 8
  %106 = load i32, i32* @window_s_current, align 4
  %107 = call i32 @rb_define_singleton_method(i8* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32 %106, i32 0)
  %108 = load i8*, i8** @cVimWindow, align 8
  %109 = load i32, i32* @window_s_count, align 4
  %110 = call i32 @rb_define_singleton_method(i8* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 %109, i32 0)
  %111 = load i8*, i8** @cVimWindow, align 8
  %112 = load i32, i32* @window_s_aref, align 4
  %113 = call i32 @rb_define_singleton_method(i8* %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32 %112, i32 1)
  %114 = load i8*, i8** @cVimWindow, align 8
  %115 = load i32, i32* @window_buffer, align 4
  %116 = call i32 @rb_define_method(i8* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i32 %115, i32 0)
  %117 = load i8*, i8** @cVimWindow, align 8
  %118 = load i32, i32* @window_height, align 4
  %119 = call i32 @rb_define_method(i8* %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i32 %118, i32 0)
  %120 = load i8*, i8** @cVimWindow, align 8
  %121 = load i32, i32* @window_set_height, align 4
  %122 = call i32 @rb_define_method(i8* %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i32 %121, i32 1)
  %123 = load i8*, i8** @cVimWindow, align 8
  %124 = load i32, i32* @window_width, align 4
  %125 = call i32 @rb_define_method(i8* %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), i32 %124, i32 0)
  %126 = load i8*, i8** @cVimWindow, align 8
  %127 = load i32, i32* @window_set_width, align 4
  %128 = call i32 @rb_define_method(i8* %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i32 %127, i32 1)
  %129 = load i8*, i8** @cVimWindow, align 8
  %130 = load i32, i32* @window_cursor, align 4
  %131 = call i32 @rb_define_method(i8* %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i32 %130, i32 0)
  %132 = load i8*, i8** @cVimWindow, align 8
  %133 = load i32, i32* @window_set_cursor, align 4
  %134 = call i32 @rb_define_method(i8* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i32 %133, i32 1)
  %135 = load i32, i32* @buffer_s_current, align 4
  %136 = call i32 @rb_define_virtual_variable(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i32 %135, i32 0)
  %137 = load i32, i32* @window_s_current, align 4
  %138 = call i32 @rb_define_virtual_variable(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), i32 %137, i32 0)
  ret void
}

declare dso_local i32 @rb_hash_new(...) #1

declare dso_local i32 @rb_global_variable(i32*) #1

declare dso_local i32 @rb_define_module(i8*) #1

declare dso_local i32 @rb_define_const(i32, i8*, i32) #1

declare dso_local i32 @INT2NUM(i32) #1

declare dso_local i32 @rb_str_new2(i32) #1

declare dso_local i32 @rb_define_module_function(i32, i8*, i32, i32) #1

declare dso_local i8* @rb_define_class_under(i32, i8*, i32) #1

declare dso_local i32 @rb_define_singleton_method(i8*, i8*, i32, i32) #1

declare dso_local i32 @rb_define_method(i8*, i8*, i32, i32) #1

declare dso_local i32 @rb_define_virtual_variable(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
