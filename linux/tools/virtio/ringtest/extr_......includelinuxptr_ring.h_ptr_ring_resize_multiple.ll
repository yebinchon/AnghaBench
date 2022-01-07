; ModuleID = '/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_......includelinuxptr_ring.h_ptr_ring_resize_multiple.c'
source_filename = "/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_......includelinuxptr_ring.h_ptr_ring_resize_multiple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptr_ring = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ptr_ring**, i32, i32, i32, void (i8*)*)* @ptr_ring_resize_multiple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptr_ring_resize_multiple(%struct.ptr_ring** %0, i32 %1, i32 %2, i32 %3, void (i8*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ptr_ring**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca void (i8*)*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8***, align 8
  %14 = alloca i32, align 4
  store %struct.ptr_ring** %0, %struct.ptr_ring*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store void (i8*)* %4, void (i8*)** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i8*** @kmalloc_array(i32 %15, i32 8, i32 %16)
  store i8*** %17, i8**** %13, align 8
  %18 = load i8***, i8**** %13, align 8
  %19 = icmp ne i8*** %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  br label %135

21:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %42, %21
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i8** @__ptr_ring_init_queue_alloc(i32 %27, i32 %28)
  %30 = load i8***, i8**** %13, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8**, i8*** %30, i64 %32
  store i8** %29, i8*** %33, align 8
  %34 = load i8***, i8**** %13, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8**, i8*** %34, i64 %36
  %38 = load i8**, i8*** %37, align 8
  %39 = icmp ne i8** %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %26
  br label %120

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %14, align 4
  br label %22

45:                                               ; preds = %22
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %99, %45
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %102

50:                                               ; preds = %46
  %51 = load %struct.ptr_ring**, %struct.ptr_ring*** %7, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ptr_ring*, %struct.ptr_ring** %51, i64 %53
  %55 = load %struct.ptr_ring*, %struct.ptr_ring** %54, align 8
  %56 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %55, i32 0, i32 0
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.ptr_ring**, %struct.ptr_ring*** %7, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ptr_ring*, %struct.ptr_ring** %59, i64 %61
  %63 = load %struct.ptr_ring*, %struct.ptr_ring** %62, align 8
  %64 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %63, i32 0, i32 1
  %65 = call i32 @spin_lock(i32* %64)
  %66 = load %struct.ptr_ring**, %struct.ptr_ring*** %7, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ptr_ring*, %struct.ptr_ring** %66, i64 %68
  %70 = load %struct.ptr_ring*, %struct.ptr_ring** %69, align 8
  %71 = load i8***, i8**** %13, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8**, i8*** %71, i64 %73
  %75 = load i8**, i8*** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load void (i8*)*, void (i8*)** %11, align 8
  %79 = call i8** @__ptr_ring_swap_queue(%struct.ptr_ring* %70, i8** %75, i32 %76, i32 %77, void (i8*)* %78)
  %80 = load i8***, i8**** %13, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8**, i8*** %80, i64 %82
  store i8** %79, i8*** %83, align 8
  %84 = load %struct.ptr_ring**, %struct.ptr_ring*** %7, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ptr_ring*, %struct.ptr_ring** %84, i64 %86
  %88 = load %struct.ptr_ring*, %struct.ptr_ring** %87, align 8
  %89 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %88, i32 0, i32 1
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load %struct.ptr_ring**, %struct.ptr_ring*** %7, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.ptr_ring*, %struct.ptr_ring** %91, i64 %93
  %95 = load %struct.ptr_ring*, %struct.ptr_ring** %94, align 8
  %96 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %95, i32 0, i32 0
  %97 = load i64, i64* %12, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32* %96, i64 %97)
  br label %99

99:                                               ; preds = %50
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %46

102:                                              ; preds = %46
  store i32 0, i32* %14, align 4
  br label %103

103:                                              ; preds = %114, %102
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  %108 = load i8***, i8**** %13, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8**, i8*** %108, i64 %110
  %112 = load i8**, i8*** %111, align 8
  %113 = call i32 @kvfree(i8** %112)
  br label %114

114:                                              ; preds = %107
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  br label %103

117:                                              ; preds = %103
  %118 = load i8***, i8**** %13, align 8
  %119 = call i32 @kfree(i8*** %118)
  store i32 0, i32* %6, align 4
  br label %138

120:                                              ; preds = %40
  br label %121

121:                                              ; preds = %125, %120
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %14, align 4
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = load i8***, i8**** %13, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8**, i8*** %126, i64 %128
  %130 = load i8**, i8*** %129, align 8
  %131 = call i32 @kvfree(i8** %130)
  br label %121

132:                                              ; preds = %121
  %133 = load i8***, i8**** %13, align 8
  %134 = call i32 @kfree(i8*** %133)
  br label %135

135:                                              ; preds = %132, %20
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %135, %117
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local i8*** @kmalloc_array(i32, i32, i32) #1

declare dso_local i8** @__ptr_ring_init_queue_alloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8** @__ptr_ring_swap_queue(%struct.ptr_ring*, i8**, i32, i32, void (i8*)*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kvfree(i8**) #1

declare dso_local i32 @kfree(i8***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
