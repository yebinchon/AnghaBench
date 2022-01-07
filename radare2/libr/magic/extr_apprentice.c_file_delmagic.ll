; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_file_delmagic.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_file_delmagic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r_magic = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @file_delmagic(%struct.r_magic* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.r_magic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.r_magic* %0, %struct.r_magic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load %struct.r_magic*, %struct.r_magic** %4, align 8
  %8 = icmp ne %struct.r_magic* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %17 [
    i32 1, label %11
    i32 0, label %14
  ]

11:                                               ; preds = %9
  %12 = load %struct.r_magic*, %struct.r_magic** %4, align 8
  %13 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %12, i32 -1
  store %struct.r_magic* %13, %struct.r_magic** %4, align 8
  br label %14

14:                                               ; preds = %9, %11
  %15 = load %struct.r_magic*, %struct.r_magic** %4, align 8
  %16 = call i32 @R_FREE(%struct.r_magic* %15)
  br label %19

17:                                               ; preds = %9
  %18 = call i32 (...) @abort() #3
  unreachable

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %3
  ret void
}

declare dso_local i32 @R_FREE(%struct.r_magic*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
