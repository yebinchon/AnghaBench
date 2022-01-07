; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_wbmp.c_writewbmp.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_wbmp.c_writewbmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@WBMP_WHITE = common dso_local global i32 0, align 4
@WBMP_BLACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @writewbmp(%struct.TYPE_3__* %0, void (i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca void (i32, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store void (i32, i8*)* %1, void (i32, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load void (i32, i8*)*, void (i32, i8*)** %5, align 8
  %12 = load i8*, i8** %6, align 8
  call void %11(i32 0, i8* %12)
  %13 = load void (i32, i8*)*, void (i32, i8*)** %5, align 8
  %14 = load i8*, i8** %6, align 8
  call void %13(i32 0, i8* %14)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load void (i32, i8*)*, void (i32, i8*)** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @putmbi(i32 %17, void (i32, i8*)* %18, i8* %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load void (i32, i8*)*, void (i32, i8*)** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @putmbi(i32 %23, void (i32, i8*)* %24, i8* %25)
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %84, %3
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %87

33:                                               ; preds = %27
  store i32 8, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %73, %33
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %76

40:                                               ; preds = %34
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %44, %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %43, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %57

55:                                               ; preds = %40
  %56 = load i32, i32* @WBMP_WHITE, align 4
  br label %59

57:                                               ; preds = %40
  %58 = load i32, i32* @WBMP_BLACK, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %9, align 4
  %63 = shl i32 %60, %62
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  store i32 8, i32* %9, align 4
  %69 = load void (i32, i8*)*, void (i32, i8*)** %5, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i8*, i8** %6, align 8
  call void %69(i32 %70, i8* %71)
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %68, %59
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %34

76:                                               ; preds = %34
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 8
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load void (i32, i8*)*, void (i32, i8*)** %5, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i8*, i8** %6, align 8
  call void %80(i32 %81, i8* %82)
  br label %83

83:                                               ; preds = %79, %76
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %27

87:                                               ; preds = %27
  ret i32 0
}

declare dso_local i32 @putmbi(i32, void (i32, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
