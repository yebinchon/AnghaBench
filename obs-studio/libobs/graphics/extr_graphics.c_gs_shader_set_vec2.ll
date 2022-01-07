; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_shader_set_vec2.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_graphics.c_gs_shader_set_vec2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32*, %struct.vec2*)* }
%struct.vec2 = type { i32 }

@thread_graphics = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"gs_shader_set_vec2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_shader_set_vec2(i32* %0, %struct.vec2* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.vec2*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.vec2* %1, %struct.vec2** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @thread_graphics, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %5, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load %struct.vec2*, %struct.vec2** %4, align 8
  %9 = call i32 @gs_valid_p2(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %7, %struct.vec2* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %20

12:                                               ; preds = %2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (i32*, %struct.vec2*)*, i32 (i32*, %struct.vec2*)** %15, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.vec2*, %struct.vec2** %4, align 8
  %19 = call i32 %16(i32* %17, %struct.vec2* %18)
  br label %20

20:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @gs_valid_p2(i8*, i32*, %struct.vec2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
