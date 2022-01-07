; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_dump.c_zend_dump_phi_placement.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_dump.c_zend_dump_phi_placement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_7__*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"\0ASSA Phi() Placement for \22\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"  BB%d:\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"    ; pi={\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"    ; phi={\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c", \00", align 1
@IS_CV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_dump_phi_placement(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %6, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @zend_dump_op_array_name(i32* %19)
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %83, %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %86

27:                                               ; preds = %23
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  br i1 %29, label %30, label %82

30:                                               ; preds = %27
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = icmp ne %struct.TYPE_7__* %36, null
  br i1 %37, label %38, label %82

38:                                               ; preds = %30
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %8, align 8
  store i32 1, i32* %9, align 4
  %45 = load i32, i32* @stderr, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %58

55:                                               ; preds = %38
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %76, %58
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %62
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* @IS_CV, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @zend_dump_var(i32* %67, i32 %68, i32 %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %8, align 8
  br label %76

76:                                               ; preds = %66
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = icmp ne %struct.TYPE_7__* %77, null
  br i1 %78, label %59, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %30, %27
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %23

86:                                               ; preds = %23
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @zend_dump_op_array_name(i32*) #1

declare dso_local i32 @zend_dump_var(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
