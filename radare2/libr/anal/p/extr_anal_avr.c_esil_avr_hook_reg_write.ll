; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_avr.c_esil_avr_hook_reg_write.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_avr.c_esil_avr_hook_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pcl\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32*)* @esil_avr_hook_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esil_avr_hook_reg_write(%struct.TYPE_8__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %73

17:                                               ; preds = %11
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_9__* @get_cpu_model(i32 %22)
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %8, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = call i32 @CPU_PC_MASK(%struct.TYPE_9__* %28)
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %29
  store i32 %32, i32* %30, align 4
  br label %72

33:                                               ; preds = %17
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %33
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 8
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = call i32 @MASK(i32 8)
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %43
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %37
  br label %71

48:                                               ; preds = %33
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %70, label %52

52:                                               ; preds = %48
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 8
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 8
  %64 = call i32 @MASK(i32 %63)
  %65 = and i32 %59, %64
  br label %67

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %66, %57
  %68 = phi i32 [ %65, %57 ], [ 0, %66 ]
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %48
  br label %71

71:                                               ; preds = %70, %47
  br label %72

72:                                               ; preds = %71, %27
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %16
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_9__* @get_cpu_model(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @CPU_PC_MASK(%struct.TYPE_9__*) #1

declare dso_local i32 @MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
