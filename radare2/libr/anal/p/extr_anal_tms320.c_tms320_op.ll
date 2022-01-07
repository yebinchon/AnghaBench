; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_tms320.c_tms320_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_tms320.c_tms320_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"c64x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"c54x\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"c55x\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"c55x+\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tms320_op(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32 (%struct.TYPE_8__*, i32*, i32, i32*, i32)*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 (%struct.TYPE_8__*, i32*, i32, i32*, i32)* @tms320_c55x_op, i32 (%struct.TYPE_8__*, i32*, i32, i32*, i32)** %14, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %6
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @r_str_casecmp(i64 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -1, i32* %7, align 4
  br label %72

26:                                               ; preds = %19, %6
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @r_str_casecmp(i64 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 (%struct.TYPE_8__*, i32*, i32, i32*, i32)* @tms320_c54x_op, i32 (%struct.TYPE_8__*, i32*, i32, i32*, i32)** %14, align 8
  br label %64

38:                                               ; preds = %31, %26
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @r_str_casecmp(i64 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 (%struct.TYPE_8__*, i32*, i32, i32*, i32)* @tms320_c55x_op, i32 (%struct.TYPE_8__*, i32*, i32, i32*, i32)** %14, align 8
  br label %63

50:                                               ; preds = %43, %38
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @r_str_casecmp(i64 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 (%struct.TYPE_8__*, i32*, i32, i32*, i32)* @tms320_c55x_plus_op, i32 (%struct.TYPE_8__*, i32*, i32, i32*, i32)** %14, align 8
  br label %62

62:                                               ; preds = %61, %55, %50
  br label %63

63:                                               ; preds = %62, %49
  br label %64

64:                                               ; preds = %63, %37
  %65 = load i32 (%struct.TYPE_8__*, i32*, i32, i32*, i32)*, i32 (%struct.TYPE_8__*, i32*, i32, i32*, i32)** %14, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 %65(%struct.TYPE_8__* %66, i32* %67, i32 %68, i32* %69, i32 %70)
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %64, %25
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i32 @tms320_c55x_op(%struct.TYPE_8__*, i32*, i32, i32*, i32) #1

declare dso_local i64 @r_str_casecmp(i64, i8*) #1

declare dso_local i32 @tms320_c54x_op(%struct.TYPE_8__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @tms320_c55x_plus_op(%struct.TYPE_8__*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
