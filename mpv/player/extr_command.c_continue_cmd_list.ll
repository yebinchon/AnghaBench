; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_continue_cmd_list.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_continue_cmd_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_ctx = type { i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mp_cmd* }
%struct.mp_cmd = type { i32, %struct.mp_cmd* }

@MP_ASYNC_CMD = common dso_local global i32 0, align 4
@on_cmd_list_sub_completion = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmd_list_ctx*)* @continue_cmd_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @continue_cmd_list(%struct.cmd_list_ctx* %0) #0 {
  %2 = alloca %struct.cmd_list_ctx*, align 8
  %3 = alloca %struct.mp_cmd*, align 8
  store %struct.cmd_list_ctx* %0, %struct.cmd_list_ctx** %2, align 8
  br label %4

4:                                                ; preds = %73, %1
  %5 = load %struct.cmd_list_ctx*, %struct.cmd_list_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.cmd_list_ctx, %struct.cmd_list_ctx* %5, i32 0, i32 2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i64 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.mp_cmd*, %struct.mp_cmd** %12, align 8
  %14 = icmp ne %struct.mp_cmd* %13, null
  br i1 %14, label %15, label %74

15:                                               ; preds = %4
  %16 = load %struct.cmd_list_ctx*, %struct.cmd_list_ctx** %2, align 8
  %17 = getelementptr inbounds %struct.cmd_list_ctx, %struct.cmd_list_ctx* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.mp_cmd*, %struct.mp_cmd** %23, align 8
  store %struct.mp_cmd* %24, %struct.mp_cmd** %3, align 8
  %25 = load %struct.mp_cmd*, %struct.mp_cmd** %3, align 8
  %26 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %25, i32 0, i32 1
  %27 = load %struct.mp_cmd*, %struct.mp_cmd** %26, align 8
  %28 = load %struct.cmd_list_ctx*, %struct.cmd_list_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.cmd_list_ctx, %struct.cmd_list_ctx* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.mp_cmd* %27, %struct.mp_cmd** %35, align 8
  %36 = load %struct.mp_cmd*, %struct.mp_cmd** %3, align 8
  %37 = call i32 @ta_xset_parent(%struct.mp_cmd* %36, i32* null)
  %38 = load %struct.mp_cmd*, %struct.mp_cmd** %3, align 8
  %39 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MP_ASYNC_CMD, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %15
  %45 = load %struct.cmd_list_ctx*, %struct.cmd_list_ctx** %2, align 8
  %46 = getelementptr inbounds %struct.cmd_list_ctx, %struct.cmd_list_ctx* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.mp_cmd*, %struct.mp_cmd** %3, align 8
  %49 = call i32 @run_command(i32 %47, %struct.mp_cmd* %48, i32* null, i32* null, %struct.cmd_list_ctx* null)
  br label %73

50:                                               ; preds = %15
  %51 = load %struct.cmd_list_ctx*, %struct.cmd_list_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.cmd_list_ctx, %struct.cmd_list_ctx* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.cmd_list_ctx*, %struct.cmd_list_ctx** %2, align 8
  %54 = getelementptr inbounds %struct.cmd_list_ctx, %struct.cmd_list_ctx* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = call i32 (...) @pthread_self()
  %56 = load %struct.cmd_list_ctx*, %struct.cmd_list_ctx** %2, align 8
  %57 = getelementptr inbounds %struct.cmd_list_ctx, %struct.cmd_list_ctx* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.cmd_list_ctx*, %struct.cmd_list_ctx** %2, align 8
  %59 = getelementptr inbounds %struct.cmd_list_ctx, %struct.cmd_list_ctx* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.mp_cmd*, %struct.mp_cmd** %3, align 8
  %62 = load i32*, i32** @on_cmd_list_sub_completion, align 8
  %63 = load %struct.cmd_list_ctx*, %struct.cmd_list_ctx** %2, align 8
  %64 = call i32 @run_command(i32 %60, %struct.mp_cmd* %61, i32* null, i32* %62, %struct.cmd_list_ctx* %63)
  %65 = load %struct.cmd_list_ctx*, %struct.cmd_list_ctx** %2, align 8
  %66 = getelementptr inbounds %struct.cmd_list_ctx, %struct.cmd_list_ctx* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  %67 = load %struct.cmd_list_ctx*, %struct.cmd_list_ctx** %2, align 8
  %68 = getelementptr inbounds %struct.cmd_list_ctx, %struct.cmd_list_ctx* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %50
  br label %81

72:                                               ; preds = %50
  br label %73

73:                                               ; preds = %72, %44
  br label %4

74:                                               ; preds = %4
  %75 = load %struct.cmd_list_ctx*, %struct.cmd_list_ctx** %2, align 8
  %76 = getelementptr inbounds %struct.cmd_list_ctx, %struct.cmd_list_ctx* %75, i32 0, i32 2
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = call i32 @mp_cmd_ctx_complete(%struct.TYPE_6__* %77)
  %79 = load %struct.cmd_list_ctx*, %struct.cmd_list_ctx** %2, align 8
  %80 = call i32 @talloc_free(%struct.cmd_list_ctx* %79)
  br label %81

81:                                               ; preds = %74, %71
  ret void
}

declare dso_local i32 @ta_xset_parent(%struct.mp_cmd*, i32*) #1

declare dso_local i32 @run_command(i32, %struct.mp_cmd*, i32*, i32*, %struct.cmd_list_ctx*) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @mp_cmd_ctx_complete(%struct.TYPE_6__*) #1

declare dso_local i32 @talloc_free(%struct.cmd_list_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
