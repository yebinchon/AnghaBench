; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_bitmapset.c_bms_prev_member.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_bitmapset.c_bms_prev_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@BITS_PER_BITMAPWORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bms_prev_member(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = icmp eq %struct.TYPE_3__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store i32 -2, i32* %3, align 4
  br label %72

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BITS_PER_BITMAPWORD, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %30

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27, %20
  %31 = load i32, i32* @BITS_PER_BITMAPWORD, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @BITNUM(i32 %32)
  %34 = add nsw i32 %33, 1
  %35 = sub nsw i32 %31, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = ashr i32 -1, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @WORDNUM(i32 %38)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %68, %30
  %41 = load i32, i32* %6, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %40
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %43
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @BITS_PER_BITMAPWORD, align 4
  %59 = mul nsw i32 %57, %58
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @bmw_leftmost_one_pos(i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %3, align 4
  br label %72

67:                                               ; preds = %43
  store i32 -1, i32* %8, align 4
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %6, align 4
  br label %40

71:                                               ; preds = %40
  store i32 -2, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %56, %16
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @BITNUM(i32) #1

declare dso_local i32 @WORDNUM(i32) #1

declare dso_local i64 @bmw_leftmost_one_pos(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
