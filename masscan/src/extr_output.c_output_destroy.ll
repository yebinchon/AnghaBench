; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_output.c_output_destroy.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_output.c_output_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Output = type { %struct.Output*, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { %struct.Output*, i64, i64 }
%struct.TYPE_3__ = type { %struct.Output* }

@.str = private unnamed_addr constant [21 x i8] c"doing finale rotate\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_destroy(%struct.Output* %0) #0 {
  %2 = alloca %struct.Output*, align 8
  store %struct.Output* %0, %struct.Output** %2, align 8
  %3 = load %struct.Output*, %struct.Output** %2, align 8
  %4 = icmp eq %struct.Output* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %50

6:                                                ; preds = %1
  %7 = load %struct.Output*, %struct.Output** %2, align 8
  %8 = getelementptr inbounds %struct.Output, %struct.Output* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = load %struct.Output*, %struct.Output** %2, align 8
  %14 = getelementptr inbounds %struct.Output, %struct.Output* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12, %6
  %19 = call i32 @LOG(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.Output*, %struct.Output** %2, align 8
  %21 = call i32 @output_do_rotate(%struct.Output* %20, i32 1)
  br label %22

22:                                               ; preds = %18, %12
  %23 = load %struct.Output*, %struct.Output** %2, align 8
  %24 = getelementptr inbounds %struct.Output, %struct.Output* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.Output*, %struct.Output** %2, align 8
  %29 = load %struct.Output*, %struct.Output** %2, align 8
  %30 = getelementptr inbounds %struct.Output, %struct.Output* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @close_rotate(%struct.Output* %28, i64 %31)
  br label %33

33:                                               ; preds = %27, %22
  %34 = load %struct.Output*, %struct.Output** %2, align 8
  %35 = getelementptr inbounds %struct.Output, %struct.Output* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.Output*, %struct.Output** %36, align 8
  %38 = call i32 @free(%struct.Output* %37)
  %39 = load %struct.Output*, %struct.Output** %2, align 8
  %40 = getelementptr inbounds %struct.Output, %struct.Output* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.Output*, %struct.Output** %41, align 8
  %43 = call i32 @free(%struct.Output* %42)
  %44 = load %struct.Output*, %struct.Output** %2, align 8
  %45 = getelementptr inbounds %struct.Output, %struct.Output* %44, i32 0, i32 0
  %46 = load %struct.Output*, %struct.Output** %45, align 8
  %47 = call i32 @free(%struct.Output* %46)
  %48 = load %struct.Output*, %struct.Output** %2, align 8
  %49 = call i32 @free(%struct.Output* %48)
  br label %50

50:                                               ; preds = %33, %5
  ret void
}

declare dso_local i32 @LOG(i32, i8*) #1

declare dso_local i32 @output_do_rotate(%struct.Output*, i32) #1

declare dso_local i32 @close_rotate(%struct.Output*, i64) #1

declare dso_local i32 @free(%struct.Output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
