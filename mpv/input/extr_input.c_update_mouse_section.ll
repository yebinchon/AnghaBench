; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_update_mouse_section.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_update_mouse_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { i8* }
%struct.cmd_bind = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@MP_KEY_MOUSE_MOVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"input: switch section %s -> %s\0A\00", align 1
@MP_KEY_MOUSE_LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_ctx*)* @update_mouse_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_mouse_section(%struct.input_ctx* %0) #0 {
  %2 = alloca %struct.input_ctx*, align 8
  %3 = alloca %struct.cmd_bind*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.input_ctx* %0, %struct.input_ctx** %2, align 8
  %6 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %7 = load i32, i32* @MP_KEY_MOUSE_MOVE, align 4
  %8 = call %struct.cmd_bind* @find_any_bind_for_key(%struct.input_ctx* %6, i32* null, i32 %7)
  store %struct.cmd_bind* %8, %struct.cmd_bind** %3, align 8
  %9 = load %struct.cmd_bind*, %struct.cmd_bind** %3, align 8
  %10 = icmp ne %struct.cmd_bind* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.cmd_bind*, %struct.cmd_bind** %3, align 8
  %13 = getelementptr inbounds %struct.cmd_bind, %struct.cmd_bind* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %11
  %19 = phi i8* [ %16, %11 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %17 ]
  store i8* %19, i8** %4, align 8
  %20 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %25 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strcmp(i8* %26, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %18
  %33 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %36 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @MP_TRACE(%struct.input_ctx* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %34, i8* %37)
  %39 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %40 = load %struct.input_ctx*, %struct.input_ctx** %2, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* @MP_KEY_MOUSE_LEAVE, align 4
  %43 = call i32 @get_cmd_from_keys(%struct.input_ctx* %40, i8* %41, i32 %42)
  %44 = call i32 @mp_input_queue_cmd(%struct.input_ctx* %39, i32 %43)
  br label %45

45:                                               ; preds = %32, %18
  ret void
}

declare dso_local %struct.cmd_bind* @find_any_bind_for_key(%struct.input_ctx*, i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @MP_TRACE(%struct.input_ctx*, i8*, i8*, i8*) #1

declare dso_local i32 @mp_input_queue_cmd(%struct.input_ctx*, i32) #1

declare dso_local i32 @get_cmd_from_keys(%struct.input_ctx*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
