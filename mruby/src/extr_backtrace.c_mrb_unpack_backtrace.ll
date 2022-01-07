; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_backtrace.c_mrb_unpack_backtrace.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_backtrace.c_mrb_unpack_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backtrace_location = type { i64, i32, i32* }
%struct.TYPE_2__ = type { i64 }

@bt_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c":in \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrb_unpack_backtrace(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.backtrace_location*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.backtrace_location*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @mrb_nil_p(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %32, %15
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @mrb_ary_new_capa(i32* %17, i64 0)
  store i32 %18, i32* %3, align 4
  br label %94

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @mrb_array_p(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %3, align 4
  br label %94

25:                                               ; preds = %19
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @mrb_data_check_get_ptr(i32* %26, i32 %27, i32* @bt_type)
  %29 = inttoptr i64 %28 to %struct.backtrace_location*
  store %struct.backtrace_location* %29, %struct.backtrace_location** %6, align 8
  %30 = load %struct.backtrace_location*, %struct.backtrace_location** %6, align 8
  %31 = icmp eq %struct.backtrace_location* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %16

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.TYPE_2__* @RDATA(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %7, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @mrb_ary_new_capa(i32* %38, i64 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @mrb_gc_arena_save(i32* %41)
  store i32 %42, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %43

43:                                               ; preds = %89, %33
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %92

47:                                               ; preds = %43
  %48 = load %struct.backtrace_location*, %struct.backtrace_location** %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds %struct.backtrace_location, %struct.backtrace_location* %48, i64 %49
  store %struct.backtrace_location* %50, %struct.backtrace_location** %10, align 8
  %51 = load %struct.backtrace_location*, %struct.backtrace_location** %10, align 8
  %52 = getelementptr inbounds %struct.backtrace_location, %struct.backtrace_location* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %89

56:                                               ; preds = %47
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.backtrace_location*, %struct.backtrace_location** %10, align 8
  %59 = getelementptr inbounds %struct.backtrace_location, %struct.backtrace_location* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.backtrace_location*, %struct.backtrace_location** %10, align 8
  %62 = getelementptr inbounds %struct.backtrace_location, %struct.backtrace_location* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @mrb_format(i32* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %60, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load %struct.backtrace_location*, %struct.backtrace_location** %10, align 8
  %66 = getelementptr inbounds %struct.backtrace_location, %struct.backtrace_location* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %56
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @mrb_str_cat_lit(i32* %70, i32 %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = load %struct.backtrace_location*, %struct.backtrace_location** %10, align 8
  %77 = getelementptr inbounds %struct.backtrace_location, %struct.backtrace_location* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @mrb_sym_name(i32* %75, i64 %78)
  %80 = call i32 @mrb_str_cat_cstr(i32* %73, i32 %74, i32 %79)
  br label %81

81:                                               ; preds = %69, %56
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @mrb_ary_push(i32* %82, i32 %83, i32 %84)
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @mrb_gc_arena_restore(i32* %86, i32 %87)
  br label %89

89:                                               ; preds = %81, %55
  %90 = load i64, i64* %8, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %8, align 8
  br label %43

92:                                               ; preds = %43
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %23, %16
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_ary_new_capa(i32*, i64) #1

declare dso_local i64 @mrb_array_p(i32) #1

declare dso_local i64 @mrb_data_check_get_ptr(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_2__* @RDATA(i32) #1

declare dso_local i32 @mrb_gc_arena_save(i32*) #1

declare dso_local i32 @mrb_format(i32*, i8*, i32*, i32) #1

declare dso_local i32 @mrb_str_cat_lit(i32*, i32, i8*) #1

declare dso_local i32 @mrb_str_cat_cstr(i32*, i32, i32) #1

declare dso_local i32 @mrb_sym_name(i32*, i64) #1

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #1

declare dso_local i32 @mrb_gc_arena_restore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
