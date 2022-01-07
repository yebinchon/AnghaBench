; ModuleID = '/home/carl/AnghaBench/nanomsg/tools/extr_options.c_nn_invalid_enum_value.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tools/extr_options.c_nn_invalid_enum_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_parse_context = type { i8**, %struct.nn_option* }
%struct.nn_option = type { i64 }
%struct.nn_enum_item = type { i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: Invalid value ``%s'' for\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c". Options are:\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"    %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nn_parse_context*, i32, i8*)* @nn_invalid_enum_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_invalid_enum_value(%struct.nn_parse_context* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.nn_parse_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nn_option*, align 8
  %8 = alloca %struct.nn_enum_item*, align 8
  store %struct.nn_parse_context* %0, %struct.nn_parse_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.nn_parse_context*, %struct.nn_parse_context** %4, align 8
  %10 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %9, i32 0, i32 1
  %11 = load %struct.nn_option*, %struct.nn_option** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %11, i64 %13
  store %struct.nn_option* %14, %struct.nn_option** %7, align 8
  %15 = load %struct.nn_option*, %struct.nn_option** %7, align 8
  %16 = getelementptr inbounds %struct.nn_option, %struct.nn_option* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.nn_enum_item*
  store %struct.nn_enum_item* %18, %struct.nn_enum_item** %8, align 8
  %19 = load i32, i32* @stderr, align 4
  %20 = load %struct.nn_parse_context*, %struct.nn_parse_context** %4, align 8
  %21 = getelementptr inbounds %struct.nn_parse_context, %struct.nn_parse_context* %20, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %25)
  %27 = load %struct.nn_parse_context*, %struct.nn_parse_context** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @nn_print_option(%struct.nn_parse_context* %27, i32 %28, i32 %29)
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %44, %3
  %34 = load %struct.nn_enum_item*, %struct.nn_enum_item** %8, align 8
  %35 = getelementptr inbounds %struct.nn_enum_item, %struct.nn_enum_item* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i32, i32* @stderr, align 4
  %40 = load %struct.nn_enum_item*, %struct.nn_enum_item** %8, align 8
  %41 = getelementptr inbounds %struct.nn_enum_item, %struct.nn_enum_item* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %38
  %45 = load %struct.nn_enum_item*, %struct.nn_enum_item** %8, align 8
  %46 = getelementptr inbounds %struct.nn_enum_item, %struct.nn_enum_item* %45, i32 1
  store %struct.nn_enum_item* %46, %struct.nn_enum_item** %8, align 8
  br label %33

47:                                               ; preds = %33
  %48 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @nn_print_option(%struct.nn_parse_context*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
