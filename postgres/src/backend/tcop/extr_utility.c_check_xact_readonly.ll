; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_utility.c_check_xact_readonly.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_utility.c_check_xact_readonly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XactReadOnly = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @check_xact_readonly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_xact_readonly(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @XactReadOnly, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = call i32 (...) @IsInParallelMode()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  br label %20

9:                                                ; preds = %5, %1
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @nodeTag(i32* %10)
  switch i32 %11, label %19 [
    i32 200, label %12
    i32 201, label %12
    i32 198, label %12
    i32 191, label %12
    i32 183, label %12
    i32 184, label %12
    i32 190, label %12
    i32 189, label %12
    i32 186, label %12
    i32 187, label %12
    i32 182, label %12
    i32 178, label %12
    i32 176, label %12
    i32 132, label %12
    i32 174, label %12
    i32 146, label %12
    i32 172, label %12
    i32 168, label %12
    i32 196, label %12
    i32 171, label %12
    i32 147, label %12
    i32 170, label %12
    i32 163, label %12
    i32 157, label %12
    i32 135, label %12
    i32 160, label %12
    i32 162, label %12
    i32 161, label %12
    i32 188, label %12
    i32 131, label %12
    i32 156, label %12
    i32 155, label %12
    i32 154, label %12
    i32 152, label %12
    i32 133, label %12
    i32 151, label %12
    i32 150, label %12
    i32 149, label %12
    i32 173, label %12
    i32 169, label %12
    i32 158, label %12
    i32 197, label %12
    i32 128, label %12
    i32 143, label %12
    i32 139, label %12
    i32 141, label %12
    i32 144, label %12
    i32 137, label %12
    i32 138, label %12
    i32 199, label %12
    i32 129, label %12
    i32 145, label %12
    i32 134, label %12
    i32 179, label %12
    i32 180, label %12
    i32 167, label %12
    i32 194, label %12
    i32 195, label %12
    i32 166, label %12
    i32 193, label %12
    i32 165, label %12
    i32 192, label %12
    i32 148, label %12
    i32 175, label %12
    i32 140, label %12
    i32 177, label %12
    i32 164, label %12
    i32 136, label %12
    i32 130, label %12
    i32 159, label %12
    i32 185, label %12
    i32 153, label %12
    i32 181, label %12
    i32 142, label %12
  ]

12:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @CreateCommandTag(i32* %13)
  %15 = call i32 @PreventCommandIfReadOnly(i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @CreateCommandTag(i32* %16)
  %18 = call i32 @PreventCommandIfParallelMode(i32 %17)
  br label %20

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %8, %19, %12
  ret void
}

declare dso_local i32 @IsInParallelMode(...) #1

declare dso_local i32 @nodeTag(i32*) #1

declare dso_local i32 @PreventCommandIfReadOnly(i32) #1

declare dso_local i32 @CreateCommandTag(i32*) #1

declare dso_local i32 @PreventCommandIfParallelMode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
