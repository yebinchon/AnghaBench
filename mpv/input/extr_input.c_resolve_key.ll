; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_resolve_key.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_resolve_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.input_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mp_cmd* (%struct.input_ctx*, i32)* @resolve_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mp_cmd* @resolve_key(%struct.input_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.mp_cmd*, align 8
  %4 = alloca %struct.input_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_cmd*, align 8
  store %struct.input_ctx* %0, %struct.input_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %8 = call i32 @update_mouse_section(%struct.input_ctx* %7)
  %9 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.mp_cmd* @get_cmd_from_keys(%struct.input_ctx* %9, i32* null, i32 %10)
  store %struct.mp_cmd* %11, %struct.mp_cmd** %6, align 8
  %12 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @key_buf_add(i32 %14, i32 %15)
  %17 = load %struct.mp_cmd*, %struct.mp_cmd** %6, align 8
  %18 = icmp ne %struct.mp_cmd* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.mp_cmd*, %struct.mp_cmd** %6, align 8
  %21 = getelementptr inbounds %struct.mp_cmd, %struct.mp_cmd* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load %struct.input_ctx*, %struct.input_ctx** %4, align 8
  %28 = load %struct.mp_cmd*, %struct.mp_cmd** %6, align 8
  %29 = call i32 @should_drop_cmd(%struct.input_ctx* %27, %struct.mp_cmd* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load %struct.mp_cmd*, %struct.mp_cmd** %6, align 8
  store %struct.mp_cmd* %32, %struct.mp_cmd** %3, align 8
  br label %36

33:                                               ; preds = %26, %19, %2
  %34 = load %struct.mp_cmd*, %struct.mp_cmd** %6, align 8
  %35 = call i32 @talloc_free(%struct.mp_cmd* %34)
  store %struct.mp_cmd* null, %struct.mp_cmd** %3, align 8
  br label %36

36:                                               ; preds = %33, %31
  %37 = load %struct.mp_cmd*, %struct.mp_cmd** %3, align 8
  ret %struct.mp_cmd* %37
}

declare dso_local i32 @update_mouse_section(%struct.input_ctx*) #1

declare dso_local %struct.mp_cmd* @get_cmd_from_keys(%struct.input_ctx*, i32*, i32) #1

declare dso_local i32 @key_buf_add(i32, i32) #1

declare dso_local i32 @should_drop_cmd(%struct.input_ctx*, %struct.mp_cmd*) #1

declare dso_local i32 @talloc_free(%struct.mp_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
