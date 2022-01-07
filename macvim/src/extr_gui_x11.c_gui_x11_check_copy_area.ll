; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_gui_x11.c_gui_x11_check_copy_area.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_gui_x11.c_gui_x11_check_copy_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }

@gui = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@VisibilityPartiallyObscured = common dso_local global i64 0, align 8
@NoExpose = common dso_local global i32 0, align 4
@GraphicsExpose = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gui_x11_check_copy_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gui_x11_check_copy_area() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 0), align 8
  %4 = load i64, i64* @VisibilityPartiallyObscured, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %46

7:                                                ; preds = %0
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 1), align 8
  %9 = call i32 @XFlush(i32 %8)
  br label %10

10:                                               ; preds = %42, %7
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 1), align 8
  %12 = load i32, i32* @NoExpose, align 4
  %13 = call i64 @XCheckTypedEvent(i32 %11, i32 %12, i32* %1)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %46

16:                                               ; preds = %10
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 1), align 8
  %18 = load i32, i32* @GraphicsExpose, align 4
  %19 = call i64 @XCheckTypedEvent(i32 %17, i32 %18, i32* %1)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = bitcast i32* %1 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %2, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @gui_redraw(i32 %25, i32 %28, i32 %31, i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %21
  br label %46

41:                                               ; preds = %21
  br label %42

42:                                               ; preds = %41, %16
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gui, i32 0, i32 1), align 8
  %44 = load i32, i32* @False, align 4
  %45 = call i32 @XSync(i32 %43, i32 %44)
  br label %10

46:                                               ; preds = %40, %15, %6
  ret void
}

declare dso_local i32 @XFlush(i32) #1

declare dso_local i64 @XCheckTypedEvent(i32, i32, i32*) #1

declare dso_local i32 @gui_redraw(i32, i32, i32, i32) #1

declare dso_local i32 @XSync(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
