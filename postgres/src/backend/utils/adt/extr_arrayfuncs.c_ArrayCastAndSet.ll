; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_ArrayCastAndSet.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_ArrayCastAndSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8, i8*)* @ArrayCastAndSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ArrayCastAndSet(i32 %0, i32 %1, i32 %2, i8 signext %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  store i8* %4, i8** %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %5
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i8*, i8** %10, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @store_att_byval(i8* %18, i32 %19, i32 %20)
  br label %28

22:                                               ; preds = %14
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @DatumGetPointer(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @memmove(i8* %23, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %22, %17
  %29 = load i32, i32* %7, align 4
  %30 = load i8, i8* %9, align 1
  %31 = call i32 @att_align_nominal(i32 %29, i8 signext %30)
  store i32 %31, i32* %11, align 4
  br label %49

32:                                               ; preds = %5
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @att_addlength_datum(i32 0, i32 %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @DatumGetPointer(i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @memmove(i8* %41, i32 %43, i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = load i8, i8* %9, align 1
  %48 = call i32 @att_align_nominal(i32 %46, i8 signext %47)
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %32, %28
  %50 = load i32, i32* %11, align 4
  ret i32 %50
}

declare dso_local i32 @store_att_byval(i8*, i32, i32) #1

declare dso_local i32 @memmove(i8*, i32, i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i32 @att_align_nominal(i32, i8 signext) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @att_addlength_datum(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
