; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsval.h_is_null_instance.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsval.h_is_null_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_null_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_null_instance(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i64 @is_null(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @is_object_instance(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @__JSVAL_OBJ(i32 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %10, %6
  %16 = phi i1 [ false, %6 ], [ %14, %10 ]
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi i1 [ true, %1 ], [ %16, %15 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local i64 @is_null(i32) #1

declare dso_local i64 @is_object_instance(i32) #1

declare dso_local i32 @__JSVAL_OBJ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
