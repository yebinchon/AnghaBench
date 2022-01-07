; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_visual.c_rotateAsmBits.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_visual.c_rotateAsmBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"asm.bits\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ahb %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @rotateAsmBits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rotateAsmBits(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_11__* @r_anal_hint_get(i32 %9, i32 %12)
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %3, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  br label %25

20:                                               ; preds = %1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @r_config_get_i(i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %16
  %26 = phi i32 [ %19, %16 ], [ %24, %20 ]
  store i32 %26, i32* %4, align 4
  store i32 4, i32* %5, align 4
  br label %27

27:                                               ; preds = %71, %25
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %75

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 64
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %54

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 32
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %52

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 16
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %50

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %45
  %49 = phi i32 [ 16, %45 ], [ %47, %46 ]
  br label %50

50:                                               ; preds = %48, %41
  %51 = phi i32 [ 32, %41 ], [ %49, %48 ]
  br label %52

52:                                               ; preds = %50, %37
  %53 = phi i32 [ 64, %37 ], [ %51, %50 ]
  br label %54

54:                                               ; preds = %52, %33
  %55 = phi i32 [ 8, %33 ], [ %53, %52 ]
  store i32 %55, i32* %6, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %54
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @r_core_cmdf(%struct.TYPE_10__* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %75

71:                                               ; preds = %54
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %5, align 4
  br label %27

75:                                               ; preds = %67, %27
  ret void
}

declare dso_local %struct.TYPE_11__* @r_anal_hint_get(i32, i32) #1

declare dso_local i32 @r_config_get_i(i32, i8*) #1

declare dso_local i32 @r_core_cmdf(%struct.TYPE_10__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
