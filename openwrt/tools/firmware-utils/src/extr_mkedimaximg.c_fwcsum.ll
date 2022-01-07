; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkedimaximg.c_fwcsum.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkedimaximg.c_fwcsum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i64 }

@force_be = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.buf*)* @fwcsum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @fwcsum(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  store %struct.buf* %0, %struct.buf** %2, align 8
  store i16 0, i16* %4, align 2
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %45, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.buf*, %struct.buf** %2, align 8
  %8 = getelementptr inbounds %struct.buf, %struct.buf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sdiv i32 %9, 2
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %5
  %13 = load i64, i64* @force_be, align 8
  %14 = load i64, i64* @FALSE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load %struct.buf*, %struct.buf** %2, align 8
  %18 = getelementptr inbounds %struct.buf, %struct.buf* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i16*
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16, i16* %20, i64 %22
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  %26 = load i16, i16* %4, align 2
  %27 = zext i16 %26 to i32
  %28 = sub nsw i32 %27, %25
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %4, align 2
  br label %44

30:                                               ; preds = %12
  %31 = load %struct.buf*, %struct.buf** %2, align 8
  %32 = getelementptr inbounds %struct.buf, %struct.buf* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i16*
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i16, i16* %34, i64 %36
  %38 = load i16, i16* %37, align 2
  %39 = call i64 @HOST_TO_BE16(i16 zeroext %38)
  %40 = load i16, i16* %4, align 2
  %41 = zext i16 %40 to i64
  %42 = sub nsw i64 %41, %39
  %43 = trunc i64 %42 to i16
  store i16 %43, i16* %4, align 2
  br label %44

44:                                               ; preds = %30, %16
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %5

48:                                               ; preds = %5
  %49 = load i16, i16* %4, align 2
  ret i16 %49
}

declare dso_local i64 @HOST_TO_BE16(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
