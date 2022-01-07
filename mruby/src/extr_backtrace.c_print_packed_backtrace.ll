; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_backtrace.c_print_packed_backtrace.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_backtrace.c_print_packed_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backtrace_location = type { i8*, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@stderr = common dso_local global i32* null, align 8
@bt_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"trace (most recent call last):\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\09[%d] %s:%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c":in %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @print_packed_backtrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_packed_backtrace(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.backtrace_location*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.backtrace_location*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32*, i32** @stderr, align 8
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @mrb_gc_arena_save(i32* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @mrb_data_check_get_ptr(i32* %15, i32 %16, i32* @bt_type)
  %18 = inttoptr i64 %17 to %struct.backtrace_location*
  store %struct.backtrace_location* %18, %struct.backtrace_location** %6, align 8
  %19 = load %struct.backtrace_location*, %struct.backtrace_location** %6, align 8
  %20 = icmp eq %struct.backtrace_location* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %85

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.TYPE_2__* @RDATA(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load %struct.backtrace_location*, %struct.backtrace_location** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @packed_bt_len(%struct.backtrace_location* %28, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %85

33:                                               ; preds = %22
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %82, %33
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %85

40:                                               ; preds = %36
  %41 = load %struct.backtrace_location*, %struct.backtrace_location** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %42, %43
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.backtrace_location, %struct.backtrace_location* %41, i64 %46
  store %struct.backtrace_location* %47, %struct.backtrace_location** %10, align 8
  %48 = load %struct.backtrace_location*, %struct.backtrace_location** %10, align 8
  %49 = getelementptr inbounds %struct.backtrace_location, %struct.backtrace_location* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %82

53:                                               ; preds = %40
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.backtrace_location*, %struct.backtrace_location** %10, align 8
  %57 = getelementptr inbounds %struct.backtrace_location, %struct.backtrace_location* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.backtrace_location*, %struct.backtrace_location** %10, align 8
  %60 = getelementptr inbounds %struct.backtrace_location, %struct.backtrace_location* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %55, i8* %58, i32 %61)
  %63 = load %struct.backtrace_location*, %struct.backtrace_location** %10, align 8
  %64 = getelementptr inbounds %struct.backtrace_location, %struct.backtrace_location* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %53
  %68 = load i32*, i32** %3, align 8
  %69 = load %struct.backtrace_location*, %struct.backtrace_location** %10, align 8
  %70 = getelementptr inbounds %struct.backtrace_location, %struct.backtrace_location* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i8* @mrb_sym_name(i32* %68, i64 %71)
  store i8* %72, i8** %11, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 (i32*, i8*, ...) @fprintf(i32* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @mrb_gc_arena_restore(i32* %76, i32 %77)
  br label %79

79:                                               ; preds = %67, %53
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %52
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %36

85:                                               ; preds = %21, %32, %36
  ret void
}

declare dso_local i32 @mrb_gc_arena_save(i32*) #1

declare dso_local i64 @mrb_data_check_get_ptr(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_2__* @RDATA(i32) #1

declare dso_local i64 @packed_bt_len(%struct.backtrace_location*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @mrb_sym_name(i32*, i64) #1

declare dso_local i32 @mrb_gc_arena_restore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
