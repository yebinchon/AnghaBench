; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_magic.c_free_mlist.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_magic.c_free_mlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlist = type { i32, i32, %struct.r_magic*, %struct.mlist* }
%struct.r_magic = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlist*)* @free_mlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_mlist(%struct.mlist* %0) #0 {
  %2 = alloca %struct.mlist*, align 8
  %3 = alloca %struct.mlist*, align 8
  %4 = alloca %struct.mlist*, align 8
  %5 = alloca %struct.r_magic*, align 8
  store %struct.mlist* %0, %struct.mlist** %2, align 8
  %6 = load %struct.mlist*, %struct.mlist** %2, align 8
  %7 = icmp ne %struct.mlist* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %38

9:                                                ; preds = %1
  %10 = load %struct.mlist*, %struct.mlist** %2, align 8
  %11 = getelementptr inbounds %struct.mlist, %struct.mlist* %10, i32 0, i32 3
  %12 = load %struct.mlist*, %struct.mlist** %11, align 8
  store %struct.mlist* %12, %struct.mlist** %3, align 8
  br label %13

13:                                               ; preds = %17, %9
  %14 = load %struct.mlist*, %struct.mlist** %3, align 8
  %15 = load %struct.mlist*, %struct.mlist** %2, align 8
  %16 = icmp ne %struct.mlist* %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load %struct.mlist*, %struct.mlist** %3, align 8
  %19 = getelementptr inbounds %struct.mlist, %struct.mlist* %18, i32 0, i32 3
  %20 = load %struct.mlist*, %struct.mlist** %19, align 8
  store %struct.mlist* %20, %struct.mlist** %4, align 8
  %21 = load %struct.mlist*, %struct.mlist** %3, align 8
  %22 = getelementptr inbounds %struct.mlist, %struct.mlist* %21, i32 0, i32 2
  %23 = load %struct.r_magic*, %struct.r_magic** %22, align 8
  store %struct.r_magic* %23, %struct.r_magic** %5, align 8
  %24 = load %struct.r_magic*, %struct.r_magic** %5, align 8
  %25 = load %struct.mlist*, %struct.mlist** %3, align 8
  %26 = getelementptr inbounds %struct.mlist, %struct.mlist* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mlist*, %struct.mlist** %3, align 8
  %29 = getelementptr inbounds %struct.mlist, %struct.mlist* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @file_delmagic(%struct.r_magic* %24, i32 %27, i32 %30)
  %32 = load %struct.mlist*, %struct.mlist** %3, align 8
  %33 = call i32 @free(%struct.mlist* %32)
  %34 = load %struct.mlist*, %struct.mlist** %4, align 8
  store %struct.mlist* %34, %struct.mlist** %3, align 8
  br label %13

35:                                               ; preds = %13
  %36 = load %struct.mlist*, %struct.mlist** %3, align 8
  %37 = call i32 @free(%struct.mlist* %36)
  br label %38

38:                                               ; preds = %35, %8
  ret void
}

declare dso_local i32 @file_delmagic(%struct.r_magic*, i32, i32) #1

declare dso_local i32 @free(%struct.mlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
