; ModuleID = '/home/carl/AnghaBench/micropython/extmod/uzlib/extr_tinflate.c_tinf_build_tree.c'
source_filename = "/home/carl/AnghaBench/micropython/extmod/uzlib/extr_tinflate.c_tinf_build_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @tinf_build_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tinf_build_tree(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [16 x i16], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %20, %3
  %11 = load i32, i32* %8, align 4
  %12 = icmp ult i32 %11, 16
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i16*, i16** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i16, i16* %16, i64 %18
  store i16 0, i16* %19, align 2
  br label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %8, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %8, align 4
  br label %10

23:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %41, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %24
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i16*, i16** %30, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds i16, i16* %31, i64 %37
  %39 = load i16, i16* %38, align 2
  %40 = add i16 %39, 1
  store i16 %40, i16* %38, align 2
  br label %41

41:                                               ; preds = %28
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %24

44:                                               ; preds = %24
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i16*, i16** %46, align 8
  %48 = getelementptr inbounds i16, i16* %47, i64 0
  store i16 0, i16* %48, align 2
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %68, %44
  %50 = load i32, i32* %8, align 4
  %51 = icmp ult i32 %50, 16
  br i1 %51, label %52, label %71

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = trunc i32 %53 to i16
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [16 x i16], [16 x i16]* %7, i64 0, i64 %56
  store i16 %54, i16* %57, align 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i16*, i16** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i16, i16* %60, i64 %62
  %64 = load i16, i16* %63, align 2
  %65 = zext i16 %64 to i32
  %66 = load i32, i32* %9, align 4
  %67 = add i32 %66, %65
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %52
  %69 = load i32, i32* %8, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %49

71:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %100, %71
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %103

76:                                               ; preds = %72
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %76
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* %8, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds [16 x i16], [16 x i16]* %7, i64 0, i64 %93
  %95 = load i16, i16* %94, align 2
  %96 = add i16 %95, 1
  store i16 %96, i16* %94, align 2
  %97 = zext i16 %95 to i64
  %98 = getelementptr inbounds i32, i32* %87, i64 %97
  store i32 %84, i32* %98, align 4
  br label %99

99:                                               ; preds = %83, %76
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %8, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %72

103:                                              ; preds = %72
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
