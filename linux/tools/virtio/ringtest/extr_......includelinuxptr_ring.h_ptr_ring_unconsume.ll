; ModuleID = '/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_......includelinuxptr_ring.h_ptr_ring_unconsume.c'
source_filename = "/home/carl/AnghaBench/linux/tools/virtio/ringtest/extr_......includelinuxptr_ring.h_ptr_ring_unconsume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptr_ring = type { i32, i32, i32, i32, i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ptr_ring*, i8**, i32, void (i8*)*)* @ptr_ring_unconsume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptr_ring_unconsume(%struct.ptr_ring* %0, i8** %1, i32 %2, void (i8*)* %3) #0 {
  %5 = alloca %struct.ptr_ring*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (i8*)*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ptr_ring* %0, %struct.ptr_ring** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store void (i8*)* %3, void (i8*)** %8, align 8
  %11 = load %struct.ptr_ring*, %struct.ptr_ring** %5, align 8
  %12 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %11, i32 0, i32 3
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.ptr_ring*, %struct.ptr_ring** %5, align 8
  %16 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %15, i32 0, i32 4
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.ptr_ring*, %struct.ptr_ring** %5, align 8
  %19 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  br label %99

23:                                               ; preds = %4
  %24 = load %struct.ptr_ring*, %struct.ptr_ring** %5, align 8
  %25 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %37, %23
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.ptr_ring*, %struct.ptr_ring** %5, align 8
  %31 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @likely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %28
  %38 = load %struct.ptr_ring*, %struct.ptr_ring** %5, align 8
  %39 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %38, i32 0, i32 5
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %10, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32*, i32** %40, i64 %43
  store i32* null, i32** %44, align 8
  br label %28

45:                                               ; preds = %28
  %46 = load %struct.ptr_ring*, %struct.ptr_ring** %5, align 8
  %47 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ptr_ring*, %struct.ptr_ring** %5, align 8
  %50 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %76, %45
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %98

54:                                               ; preds = %51
  %55 = load %struct.ptr_ring*, %struct.ptr_ring** %5, align 8
  %56 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.ptr_ring*, %struct.ptr_ring** %5, align 8
  %63 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %61, %54
  %67 = load %struct.ptr_ring*, %struct.ptr_ring** %5, align 8
  %68 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %67, i32 0, i32 5
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %99

76:                                               ; preds = %66
  %77 = load i8**, i8*** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %77, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = bitcast i8* %82 to i32*
  %84 = load %struct.ptr_ring*, %struct.ptr_ring** %5, align 8
  %85 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %84, i32 0, i32 5
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  store i32* %83, i32** %89, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.ptr_ring*, %struct.ptr_ring** %5, align 8
  %92 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ptr_ring*, %struct.ptr_ring** %5, align 8
  %94 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @WRITE_ONCE(i32 %95, i32 %96)
  br label %51

98:                                               ; preds = %51
  br label %99

99:                                               ; preds = %98, %75, %22
  br label %100

100:                                              ; preds = %103, %99
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load void (i8*)*, void (i8*)** %8, align 8
  %105 = load i8**, i8*** %6, align 8
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %105, i64 %108
  %110 = load i8*, i8** %109, align 8
  call void %104(i8* %110)
  br label %100

111:                                              ; preds = %100
  %112 = load %struct.ptr_ring*, %struct.ptr_ring** %5, align 8
  %113 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %112, i32 0, i32 4
  %114 = call i32 @spin_unlock(i32* %113)
  %115 = load %struct.ptr_ring*, %struct.ptr_ring** %5, align 8
  %116 = getelementptr inbounds %struct.ptr_ring, %struct.ptr_ring* %115, i32 0, i32 3
  %117 = load i64, i64* %9, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
