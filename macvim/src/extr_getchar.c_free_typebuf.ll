; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_getchar.c_free_typebuf.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_getchar.c_free_typebuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@typebuf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@typebuf_init = common dso_local global i64 0, align 8
@e_intern2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Free typebuf 1\00", align 1
@noremapbuf_init = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Free typebuf 2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_typebuf() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 0), align 8
  %2 = load i64, i64* @typebuf_init, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32, i32* @e_intern2, align 4
  %6 = call i32 @_(i32 %5)
  %7 = call i32 @EMSG2(i32 %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %11

8:                                                ; preds = %0
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 0), align 8
  %10 = call i32 @vim_free(i64 %9)
  br label %11

11:                                               ; preds = %8, %4
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 1), align 8
  %13 = load i64, i64* @noremapbuf_init, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @e_intern2, align 4
  %17 = call i32 @_(i32 %16)
  %18 = call i32 @EMSG2(i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %22

19:                                               ; preds = %11
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @typebuf, i32 0, i32 1), align 8
  %21 = call i32 @vim_free(i64 %20)
  br label %22

22:                                               ; preds = %19, %15
  ret void
}

declare dso_local i32 @EMSG2(i32, i8*) #1

declare dso_local i32 @_(i32) #1

declare dso_local i32 @vim_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
