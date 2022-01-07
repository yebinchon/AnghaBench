; ModuleID = '/home/carl/AnghaBench/postgres/contrib/ltree/extr_lquery_op.c_compare_subnode.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/ltree/extr_lquery_op.c_compare_subnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compare_subnode(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32 (i8*, i8*, i64)* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32 (i8*, i8*, i64)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 (i8*, i8*, i64)* %3, i32 (i8*, i8*, i64)** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  store i8* %29, i8** %13, align 8
  br label %30

30:                                               ; preds = %73, %5
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = call i8* @getlexeme(i8* %31, i8* %32, i32* %16)
  store i8* %33, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %78

35:                                               ; preds = %30
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %14, align 8
  store i32 0, i32* %17, align 4
  br label %39

39:                                               ; preds = %64, %35
  %40 = load i8*, i8** %14, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = call i8* @getlexeme(i8* %40, i8* %41, i32* %15)
  store i8* %42, i8** %14, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %69

44:                                               ; preds = %39
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52, %44
  %56 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %10, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = load i32, i32* %16, align 4
  %60 = sext i32 %59 to i64
  %61 = call i32 %56(i8* %57, i8* %58, i64 %60)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 1, i32* %17, align 4
  br label %69

64:                                               ; preds = %55, %52, %48
  %65 = load i32, i32* %15, align 4
  %66 = load i8*, i8** %14, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %14, align 8
  br label %39

69:                                               ; preds = %63, %39
  %70 = load i32, i32* %17, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  br label %79

73:                                               ; preds = %69
  %74 = load i32, i32* %16, align 4
  %75 = load i8*, i8** %8, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %8, align 8
  br label %30

78:                                               ; preds = %30
  store i32 1, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %72
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i8* @getlexeme(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
