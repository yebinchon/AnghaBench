; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginbulk.c_ginInsertBAEntries.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginbulk.c_ginInsertBAEntries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FirstOffsetNumber = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ginInsertBAEntries(i32* %0, i32 %1, i64 %2, i32* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load i64, i64* %12, align 8
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %13, align 4
  %17 = load i64, i64* %12, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  br label %95

20:                                               ; preds = %6
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @ItemPointerIsValid(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @FirstOffsetNumber, align 8
  %27 = icmp sge i64 %25, %26
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i1 [ false, %20 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load i32, i32* %13, align 4
  %33 = ashr i32 %32, 1
  %34 = load i32, i32* %13, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = ashr i32 %36, 2
  %38 = load i32, i32* %13, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = ashr i32 %40, 4
  %42 = load i32, i32* %13, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = ashr i32 %44, 8
  %46 = load i32, i32* %13, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = ashr i32 %48, 16
  %50 = load i32, i32* %13, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = ashr i32 %52, 1
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %92, %28
  %57 = load i32, i32* %13, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %95

59:                                               ; preds = %56
  %60 = load i32, i32* %13, align 4
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %87, %59
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %12, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %14, align 4
  %69 = icmp sge i32 %68, 0
  br label %70

70:                                               ; preds = %67, %62
  %71 = phi i1 [ false, %62 ], [ %69, %67 ]
  br i1 %71, label %72, label %92

72:                                               ; preds = %70
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i64, i64* %9, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ginInsertBAEntry(i32* %73, i32 %74, i64 %75, i32 %80, i32 %85)
  br label %87

87:                                               ; preds = %72
  %88 = load i32, i32* %13, align 4
  %89 = shl i32 %88, 1
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %14, align 4
  br label %62

92:                                               ; preds = %70
  %93 = load i32, i32* %13, align 4
  %94 = ashr i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %56

95:                                               ; preds = %19, %56
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @ItemPointerIsValid(i32) #1

declare dso_local i32 @ginInsertBAEntry(i32*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
