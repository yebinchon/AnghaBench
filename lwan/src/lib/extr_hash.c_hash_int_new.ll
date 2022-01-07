; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_hash.c_hash_int_new.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_hash.c_hash_int_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash = type { i32 }

@hash_int = common dso_local global i32 0, align 4
@hash_int_key_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hash* @hash_int_new(void (i8*)* %0, void (i8*)* %1) #0 {
  %3 = alloca void (i8*)*, align 8
  %4 = alloca void (i8*)*, align 8
  store void (i8*)* %0, void (i8*)** %3, align 8
  store void (i8*)* %1, void (i8*)** %4, align 8
  %5 = load i32, i32* @hash_int, align 4
  %6 = load i32, i32* @hash_int_key_cmp, align 4
  %7 = load void (i8*)*, void (i8*)** %3, align 8
  %8 = icmp ne void (i8*)* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load void (i8*)*, void (i8*)** %3, align 8
  br label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi void (i8*)* [ %10, %9 ], [ @no_op, %11 ]
  %14 = load void (i8*)*, void (i8*)** %4, align 8
  %15 = icmp ne void (i8*)* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load void (i8*)*, void (i8*)** %4, align 8
  br label %19

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi void (i8*)* [ %17, %16 ], [ @no_op, %18 ]
  %21 = call %struct.hash* @hash_internal_new(i32 %5, i32 %6, void (i8*)* %13, void (i8*)* %20)
  ret %struct.hash* %21
}

declare dso_local %struct.hash* @hash_internal_new(i32, i32, void (i8*)*, void (i8*)*) #1

declare dso_local void @no_op(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
