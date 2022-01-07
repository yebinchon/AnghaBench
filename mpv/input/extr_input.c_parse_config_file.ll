; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_parse_config_file.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_parse_config_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"Can't open input config file %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Parsing input config file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Input config file %s parsed: %d binds\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Error reading input config file %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_ctx*, i8*, i32)* @parse_config_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_config_file(%struct.input_ctx* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.input_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca i32, align 4
  store %struct.input_ctx* %0, %struct.input_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = call i8* @talloc_new(i32* null)
  store i8* %12, i8** %8, align 8
  store i32* null, i32** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @mp_get_user_path(i8* %13, i32 %16, i8* %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @stream_open(i8* %19, i32 %22)
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @MP_ERR(%struct.input_ctx* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %58

30:                                               ; preds = %3
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @stream_skip_bom(i32* %31)
  %33 = load i32*, i32** %9, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i64 @stream_read_complete(i32* %33, i8* %34, i32 1000000)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %30
  %41 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 (%struct.input_ctx*, i8*, i8*, ...) @MP_VERBOSE(%struct.input_ctx* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @parse_config(%struct.input_ctx* %44, i32 0, i64 %47, i8* %45, i32* null)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 (%struct.input_ctx*, i8*, i8*, ...) @MP_VERBOSE(%struct.input_ctx* %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %50, i32 %51)
  store i32 1, i32* %7, align 4
  br label %57

53:                                               ; preds = %30
  %54 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @MP_ERR(%struct.input_ctx* %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %53, %40
  br label %58

58:                                               ; preds = %57, %26
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @free_stream(i32* %59)
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @talloc_free(i8* %61)
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i8* @talloc_new(i32*) #1

declare dso_local i8* @mp_get_user_path(i8*, i32, i8*) #1

declare dso_local i32* @stream_open(i8*, i32) #1

declare dso_local i32 @MP_ERR(%struct.input_ctx*, i8*, i8*) #1

declare dso_local i32 @stream_skip_bom(i32*) #1

declare dso_local i64 @stream_read_complete(i32*, i8*, i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.input_ctx*, i8*, i8*, ...) #1

declare dso_local i32 @parse_config(%struct.input_ctx*, i32, i64, i8*, i32*) #1

declare dso_local i32 @free_stream(i32*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
