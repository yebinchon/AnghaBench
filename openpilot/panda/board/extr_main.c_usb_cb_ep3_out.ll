; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_main.c_usb_cb_ep3_out.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_main.c_usb_cb_ep3_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i8* }

@CAN_BUS_NUM_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_cb_ep3_out(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @UNUSED(i32 %11)
  store i32 0, i32* %7, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to i8**
  store i8** %14, i8*** %8, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %56, %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sdiv i32 %17, 4
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %59

20:                                               ; preds = %15
  %21 = load i8**, i8*** %8, align 8
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %21, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 3
  store i8* %26, i8** %27, align 8
  %28 = load i8**, i8*** %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %28, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  store i8* %33, i8** %34, align 8
  %35 = load i8**, i8*** %8, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %35, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = ptrtoint i8* %40 to i32
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = load i8**, i8*** %8, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i8* %47, i8** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = ashr i32 %50, 4
  %52 = load i32, i32* @CAN_BUS_NUM_MASK, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @can_send(%struct.TYPE_3__* %9, i32 %54)
  br label %56

56:                                               ; preds = %20
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 4
  store i32 %58, i32* %7, align 4
  br label %15

59:                                               ; preds = %15
  ret void
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i32 @can_send(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
