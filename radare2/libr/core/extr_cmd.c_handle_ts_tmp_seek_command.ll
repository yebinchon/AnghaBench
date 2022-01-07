; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_handle_ts_tmp_seek_command.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd.c_handle_ts_tmp_seek_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"tmp_seek command, command X on tmp_seek %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i32, i32)* @handle_ts_tmp_seek_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_ts_tmp_seek_command(%struct.TYPE_5__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @ts_node_named_child(i32 %16, i32 0)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @ts_node_named_child(i32 %18, i32 1)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @ts_node_start_byte(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @ts_node_end_byte(i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %11, align 4
  %26 = sub nsw i32 %24, %25
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = call i8* @r_str_newf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %26, i8* %30)
  store i8* %31, i8** %13, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %14, align 4
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 @R_LOG_DEBUG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %13, align 8
  %42 = call i32 @r_num_math(i32 %40, i8* %41)
  %43 = call i32 @r_core_seek(%struct.TYPE_5__* %37, i32 %42, i32 1)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @handle_ts_command(%struct.TYPE_5__* %44, i8* %45, i32 %46, i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @r_core_seek(%struct.TYPE_5__* %49, i32 %50, i32 1)
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @free(i8* %52)
  %54 = load i32, i32* %15, align 4
  ret i32 %54
}

declare dso_local i32 @ts_node_named_child(i32, i32) #1

declare dso_local i32 @ts_node_start_byte(i32) #1

declare dso_local i32 @ts_node_end_byte(i32) #1

declare dso_local i8* @r_str_newf(i8*, i32, i8*) #1

declare dso_local i32 @R_LOG_DEBUG(i8*, i8*) #1

declare dso_local i32 @r_core_seek(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @r_num_math(i32, i8*) #1

declare dso_local i32 @handle_ts_command(%struct.TYPE_5__*, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
