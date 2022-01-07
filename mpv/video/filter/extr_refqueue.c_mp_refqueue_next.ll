; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_refqueue.c_mp_refqueue_next.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_refqueue.c_mp_refqueue_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_refqueue = type { i32, i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_refqueue*)* @mp_refqueue_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_refqueue_next(%struct.mp_refqueue* %0) #0 {
  %2 = alloca %struct.mp_refqueue*, align 8
  store %struct.mp_refqueue* %0, %struct.mp_refqueue** %2, align 8
  %3 = load %struct.mp_refqueue*, %struct.mp_refqueue** %2, align 8
  %4 = call i32 @mp_refqueue_has_output(%struct.mp_refqueue* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %82

7:                                                ; preds = %1
  %8 = load %struct.mp_refqueue*, %struct.mp_refqueue** %2, align 8
  %9 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 8
  %12 = load %struct.mp_refqueue*, %struct.mp_refqueue** %2, align 8
  %13 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %12, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = load %struct.mp_refqueue*, %struct.mp_refqueue** %2, align 8
  %15 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %16, -1
  br i1 %17, label %18, label %26

18:                                               ; preds = %7
  %19 = load %struct.mp_refqueue*, %struct.mp_refqueue** %2, align 8
  %20 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mp_refqueue*, %struct.mp_refqueue** %2, align 8
  %23 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br label %26

26:                                               ; preds = %18, %7
  %27 = phi i1 [ false, %7 ], [ %25, %18 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  br label %30

30:                                               ; preds = %43, %26
  %31 = load %struct.mp_refqueue*, %struct.mp_refqueue** %2, align 8
  %32 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mp_refqueue*, %struct.mp_refqueue** %2, align 8
  %35 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  %38 = sub nsw i32 %33, %37
  %39 = load %struct.mp_refqueue*, %struct.mp_refqueue** %2, align 8
  %40 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %30
  %44 = load %struct.mp_refqueue*, %struct.mp_refqueue** %2, align 8
  %45 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.mp_refqueue*, %struct.mp_refqueue** %2, align 8
  %51 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.mp_refqueue*, %struct.mp_refqueue** %2, align 8
  %54 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %52, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @talloc_free(i32 %59)
  %61 = load %struct.mp_refqueue*, %struct.mp_refqueue** %2, align 8
  %62 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 8
  br label %30

65:                                               ; preds = %30
  %66 = load %struct.mp_refqueue*, %struct.mp_refqueue** %2, align 8
  %67 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sge i32 %68, -1
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.mp_refqueue*, %struct.mp_refqueue** %2, align 8
  %72 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.mp_refqueue*, %struct.mp_refqueue** %2, align 8
  %75 = getelementptr inbounds %struct.mp_refqueue, %struct.mp_refqueue* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br label %78

78:                                               ; preds = %70, %65
  %79 = phi i1 [ false, %65 ], [ %77, %70 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  br label %82

82:                                               ; preds = %78, %6
  ret void
}

declare dso_local i32 @mp_refqueue_has_output(%struct.mp_refqueue*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @talloc_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
