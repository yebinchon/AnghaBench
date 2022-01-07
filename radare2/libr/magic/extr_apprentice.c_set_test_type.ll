; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_set_test_type.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_set_test_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_magic = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@BINTEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r_magic*, %struct.r_magic*)* @set_test_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_test_type(%struct.r_magic* %0, %struct.r_magic* %1) #0 {
  %3 = alloca %struct.r_magic*, align 8
  %4 = alloca %struct.r_magic*, align 8
  store %struct.r_magic* %0, %struct.r_magic** %3, align 8
  store %struct.r_magic* %1, %struct.r_magic** %4, align 8
  %5 = load %struct.r_magic*, %struct.r_magic** %4, align 8
  %6 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %34 [
    i32 156, label %8
    i32 129, label %8
    i32 139, label %8
    i32 155, label %8
    i32 158, label %8
    i32 162, label %8
    i32 166, label %8
    i32 141, label %8
    i32 145, label %8
    i32 149, label %8
    i32 150, label %8
    i32 163, label %8
    i32 146, label %8
    i32 138, label %8
    i32 137, label %8
    i32 136, label %8
    i32 132, label %8
    i32 142, label %8
    i32 159, label %8
    i32 134, label %8
    i32 144, label %8
    i32 161, label %8
    i32 133, label %8
    i32 143, label %8
    i32 160, label %8
    i32 152, label %8
    i32 164, label %8
    i32 147, label %8
    i32 153, label %8
    i32 165, label %8
    i32 148, label %8
    i32 128, label %8
    i32 135, label %8
    i32 157, label %8
    i32 140, label %8
    i32 131, label %14
    i32 130, label %14
    i32 154, label %32
    i32 151, label %33
  ]

8:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %9 = load i32, i32* @BINTEST, align 4
  %10 = load %struct.r_magic*, %struct.r_magic** %3, align 8
  %11 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  br label %35

14:                                               ; preds = %2, %2
  %15 = load %struct.r_magic*, %struct.r_magic** %4, align 8
  %16 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = load %struct.r_magic*, %struct.r_magic** %4, align 8
  %21 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @file_looks_utf8(i32* %19, i32 %22, i32* null, i32* null)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %14
  %26 = load i32, i32* @BINTEST, align 4
  %27 = load %struct.r_magic*, %struct.r_magic** %3, align 8
  %28 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %25, %14
  br label %35

32:                                               ; preds = %2
  br label %35

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %2, %33
  br label %35

35:                                               ; preds = %34, %32, %31, %8
  ret void
}

declare dso_local i32 @file_looks_utf8(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
