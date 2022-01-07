; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_getchar.c_check_map_keycodes.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_getchar.c_check_map_keycodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__**, %struct.TYPE_6__*, %struct.TYPE_7__* }

@sourcing_name = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"mappings\00", align 1
@first_abbr = common dso_local global %struct.TYPE_6__* null, align 8
@maphash = common dso_local global %struct.TYPE_6__** null, align 8
@K_SPECIAL = common dso_local global i32 0, align 4
@NUL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@firstbuf = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_map_keycodes() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 (...) @validate_maphash()
  %9 = load i32*, i32** @sourcing_name, align 8
  store i32* %9, i32** %5, align 8
  store i32* bitcast ([9 x i8]* @.str to i32*), i32** @sourcing_name, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %101, %0
  %11 = load i32, i32* %6, align 4
  %12 = icmp sle i32 %11, 1
  br i1 %12, label %13, label %104

13:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %97, %13
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %100

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %100

24:                                               ; preds = %20
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @first_abbr, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %1, align 8
  br label %32

26:                                               ; preds = %17
  %27 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @maphash, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %27, i64 %29
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %1, align 8
  br label %32

32:                                               ; preds = %26, %24
  br label %33

33:                                               ; preds = %92, %32
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %36, label %96

36:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %88, %36
  %38 = load i32, i32* %3, align 4
  %39 = icmp sle i32 %38, 1
  br i1 %39, label %40, label %91

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %2, align 8
  br label %51

47:                                               ; preds = %40
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %2, align 8
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %84, %51
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %52
  %57 = load i32*, i32** %2, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @K_SPECIAL, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %56
  %62 = load i32*, i32** %2, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %2, align 8
  %64 = load i32*, i32** %2, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 128
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load i32*, i32** %2, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** %2, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* @NUL, align 4
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %79 = load i32, i32* @FALSE, align 4
  %80 = call i32 @add_termcap_entry(i32* %78, i32 %79)
  br label %81

81:                                               ; preds = %67, %61
  %82 = load i32*, i32** %2, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %2, align 8
  br label %84

84:                                               ; preds = %81, %56
  %85 = load i32*, i32** %2, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %2, align 8
  br label %52

87:                                               ; preds = %52
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %37

91:                                               ; preds = %37
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  store %struct.TYPE_6__* %95, %struct.TYPE_6__** %1, align 8
  br label %33

96:                                               ; preds = %33
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %14

100:                                              ; preds = %23, %14
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %10

104:                                              ; preds = %10
  %105 = load i32*, i32** %5, align 8
  store i32* %105, i32** @sourcing_name, align 8
  ret void
}

declare dso_local i32 @validate_maphash(...) #1

declare dso_local i32 @add_termcap_entry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
