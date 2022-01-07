; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_tags.c_mp_tags_remove_bstr.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_tags.c_mp_tags_remove_bstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_tags = type { i32, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_tags_remove_bstr(%struct.mp_tags* %0, i32 %1) #0 {
  %3 = alloca %struct.mp_tags*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mp_tags* %0, %struct.mp_tags** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %59, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.mp_tags*, %struct.mp_tags** %3, align 8
  %10 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %62

13:                                               ; preds = %7
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.mp_tags*, %struct.mp_tags** %3, align 8
  %16 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @bstrcasecmp0(i32 %14, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %13
  %25 = load %struct.mp_tags*, %struct.mp_tags** %3, align 8
  %26 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @talloc_free(i32 %31)
  %33 = load %struct.mp_tags*, %struct.mp_tags** %3, align 8
  %34 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @talloc_free(i32 %39)
  %41 = load %struct.mp_tags*, %struct.mp_tags** %3, align 8
  %42 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %6, align 4
  %44 = load %struct.mp_tags*, %struct.mp_tags** %3, align 8
  %45 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @MP_TARRAY_REMOVE_AT(i32* %46, i32 %47, i32 %48)
  %50 = load %struct.mp_tags*, %struct.mp_tags** %3, align 8
  %51 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.mp_tags*, %struct.mp_tags** %3, align 8
  %54 = getelementptr inbounds %struct.mp_tags, %struct.mp_tags* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @MP_TARRAY_REMOVE_AT(i32* %52, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %24, %13
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %7

62:                                               ; preds = %7
  ret void
}

declare dso_local i64 @bstrcasecmp0(i32, i32) #1

declare dso_local i32 @talloc_free(i32) #1

declare dso_local i32 @MP_TARRAY_REMOVE_AT(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
