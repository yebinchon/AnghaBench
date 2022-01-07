; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_ri_NullCheck.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_ri_NullCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32* }

@RI_KEYS_ALL_NULL = common dso_local global i32 0, align 4
@RI_KEYS_NONE_NULL = common dso_local global i32 0, align 4
@RI_KEYS_SOME_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_3__*, i32)* @ri_NullCheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ri_NullCheck(i32 %0, i32* %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  br label %24

20:                                               ; preds = %4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %10, align 8
  br label %24

24:                                               ; preds = %20, %16
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %43, %24
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @slot_attisnull(i32* %32, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  br label %42

41:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %25

46:                                               ; preds = %25
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @RI_KEYS_ALL_NULL, align 4
  store i32 %50, i32* %5, align 4
  br label %58

51:                                               ; preds = %46
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @RI_KEYS_NONE_NULL, align 4
  store i32 %55, i32* %5, align 4
  br label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @RI_KEYS_SOME_NULL, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %54, %49
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @slot_attisnull(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
