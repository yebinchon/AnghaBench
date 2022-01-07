; ModuleID = '/home/carl/AnghaBench/postgres/contrib/intarray/extr__int_tool.c_resize_intArrayType.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/intarray/extr__int_tool.c_resize_intArrayType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT4OID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @resize_intArrayType(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @Assert(i32 %13)
  %15 = load i32, i32* @INT4OID, align 4
  %16 = call i32* @construct_empty_array(i32 %15)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  store i32* %17, i32** %3, align 8
  br label %58

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @ARRNELEMS(i32* %20)
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32*, i32** %4, align 8
  store i32* %24, i32** %3, align 8
  br label %58

25:                                               ; preds = %18
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @ARR_DATA_OFFSET(i32* %26)
  %28 = sext i32 %27 to i64
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = add i64 %28, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @repalloc(i32* %34, i32 %35)
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %4, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @SET_VARSIZE(i32* %38, i32 %39)
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %53, %25
  %42 = load i32, i32* %7, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @ARR_NDIM(i32* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = call i32* @ARR_DIMS(i32* %48)
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %47, i32* %52, align 4
  store i32 1, i32* %5, align 4
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %41

56:                                               ; preds = %41
  %57 = load i32*, i32** %4, align 8
  store i32* %57, i32** %3, align 8
  br label %58

58:                                               ; preds = %56, %23, %10
  %59 = load i32*, i32** %3, align 8
  ret i32* %59
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @construct_empty_array(i32) #1

declare dso_local i32 @ARRNELEMS(i32*) #1

declare dso_local i32 @ARR_DATA_OFFSET(i32*) #1

declare dso_local i64 @repalloc(i32*, i32) #1

declare dso_local i32 @SET_VARSIZE(i32*, i32) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
