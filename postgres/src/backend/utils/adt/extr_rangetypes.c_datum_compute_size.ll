; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes.c_datum_compute_size.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes.c_datum_compute_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8, i32, i8)* @datum_compute_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @datum_compute_size(i32 %0, i32 %1, i32 %2, i8 signext %3, i32 %4, i8 signext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8 %3, i8* %10, align 1
  store i32 %4, i32* %11, align 4
  store i8 %5, i8* %12, align 1
  %13 = load i32, i32* %11, align 4
  %14 = load i8, i8* %12, align 1
  %15 = call i64 @TYPE_IS_PACKABLE(i32 %13, i8 signext %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %6
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @DatumGetPointer(i32 %18)
  %20 = call i64 @VARATT_CAN_MAKE_SHORT(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @DatumGetPointer(i32 %23)
  %25 = call i64 @VARATT_CONVERTED_SHORT_SIZE(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %7, align 4
  br label %40

30:                                               ; preds = %17, %6
  %31 = load i32, i32* %7, align 4
  %32 = load i8, i8* %10, align 1
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @att_align_datum(i32 %31, i8 signext %32, i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @att_addlength_datum(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %30, %22
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i64 @TYPE_IS_PACKABLE(i32, i8 signext) #1

declare dso_local i64 @VARATT_CAN_MAKE_SHORT(i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i64 @VARATT_CONVERTED_SHORT_SIZE(i32) #1

declare dso_local i32 @att_align_datum(i32, i8 signext, i32, i32) #1

declare dso_local i32 @att_addlength_datum(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
