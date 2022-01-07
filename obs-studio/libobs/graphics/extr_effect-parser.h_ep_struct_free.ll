; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.h_ep_struct_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.h_ep_struct_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep_struct = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ep_struct*)* @ep_struct_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_struct_free(%struct.ep_struct* %0) #0 {
  %2 = alloca %struct.ep_struct*, align 8
  %3 = alloca i64, align 8
  store %struct.ep_struct* %0, %struct.ep_struct** %2, align 8
  %4 = load %struct.ep_struct*, %struct.ep_struct** %2, align 8
  %5 = getelementptr inbounds %struct.ep_struct, %struct.ep_struct* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @bfree(i32 %6)
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %23, %1
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.ep_struct*, %struct.ep_struct** %2, align 8
  %11 = getelementptr inbounds %struct.ep_struct, %struct.ep_struct* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %9, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %8
  %16 = load %struct.ep_struct*, %struct.ep_struct** %2, align 8
  %17 = getelementptr inbounds %struct.ep_struct, %struct.ep_struct* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %19, %20
  %22 = call i32 @ep_var_free(i64 %21)
  br label %23

23:                                               ; preds = %15
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %3, align 8
  br label %8

26:                                               ; preds = %8
  %27 = load %struct.ep_struct*, %struct.ep_struct** %2, align 8
  %28 = getelementptr inbounds %struct.ep_struct, %struct.ep_struct* %27, i32 0, i32 0
  %29 = bitcast %struct.TYPE_2__* %28 to { i64, i64 }*
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @da_free(i64 %31, i64 %33)
  ret void
}

declare dso_local i32 @bfree(i32) #1

declare dso_local i32 @ep_var_free(i64) #1

declare dso_local i32 @da_free(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
