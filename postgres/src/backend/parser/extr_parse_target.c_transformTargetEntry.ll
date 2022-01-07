; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_target.c_transformTargetEntry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_target.c_transformTargetEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@EXPR_KIND_UPDATE_SOURCE = common dso_local global i64 0, align 8
@SetToDefault = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @transformTargetEntry(%struct.TYPE_4__* %0, i32* %1, i32* %2, i64 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load i32*, i32** %9, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %6
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @EXPR_KIND_UPDATE_SOURCE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* @SetToDefault, align 4
  %22 = call i64 @IsA(i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32*, i32** %8, align 8
  store i32* %25, i32** %9, align 8
  br label %31

26:                                               ; preds = %19, %15
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32* @transformExpr(%struct.TYPE_4__* %27, i32* %28, i64 %29)
  store i32* %30, i32** %9, align 8
  br label %31

31:                                               ; preds = %26, %24
  br label %32

32:                                               ; preds = %31, %6
  %33 = load i8*, i8** %11, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32*, i32** %8, align 8
  %40 = call i8* @FigureColname(i32* %39)
  store i8* %40, i8** %11, align 8
  br label %41

41:                                               ; preds = %38, %35, %32
  %42 = load i32*, i32** %9, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32* @makeTargetEntry(i32* %42, i32 %45, i8* %47, i32 %48)
  ret i32* %49
}

declare dso_local i64 @IsA(i32*, i32) #1

declare dso_local i32* @transformExpr(%struct.TYPE_4__*, i32*, i64) #1

declare dso_local i8* @FigureColname(i32*) #1

declare dso_local i32* @makeTargetEntry(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
