; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_is_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dxof/extr_parsing.c_is_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Wrong string %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Found string %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @is_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_string(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca [512 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 34
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %2, align 4
  br label %84

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %48, %17
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %18
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %6, align 1
  %34 = load i8, i8* %6, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 34
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* @TRUE, align 4
  store i32 %38, i32* %7, align 4
  br label %51

39:                                               ; preds = %25
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %41, 512
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i8, i8* %6, align 1
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 %46
  store i8 %44, i8* %47, align 1
  br label %48

48:                                               ; preds = %43, %39
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %18

51:                                               ; preds = %37, %18
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @min(i32 %52, i32 511)
  %54 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %59 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %2, align 4
  br label %84

61:                                               ; preds = %51
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = sext i32 %63 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %65, align 8
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 2
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %76 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %82 = call i32 @strcpy(i8* %80, i8* %81)
  %83 = load i32, i32* @TRUE, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %61, %57, %15
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @TRACE(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
