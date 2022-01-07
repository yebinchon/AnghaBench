; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_.anal_arm_hacks.inc_hackyArmAnal.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_.anal_arm_hacks.inc_hackyArmAnal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"C\C1\DA\00", align 1
@R_ANAL_OP_TYPE_MOV = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"\FF\0B_\D6\00", align 1
@R_ANAL_OP_TYPE_RET = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"\FF\0F_\D6\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i32*, i32)* @hackyArmAnal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hackyArmAnal(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 64
  br i1 %13, label %14, label %49

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = icmp sge i32 %15, 4
  br i1 %16, label %17, label %49

17:                                               ; preds = %14
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = call i32 @memcmp(i32* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** @R_ANAL_OP_TYPE_MOV, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 4, i32* %27, align 8
  store i32 4, i32* %5, align 4
  br label %50

28:                                               ; preds = %17
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @memcmp(i32* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** @R_ANAL_OP_TYPE_RET, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 4, i32* %37, align 8
  store i32 4, i32* %5, align 4
  br label %50

38:                                               ; preds = %28
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @memcmp(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = load i8*, i8** @R_ANAL_OP_TYPE_RET, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 4, i32* %47, align 8
  store i32 4, i32* %5, align 4
  br label %50

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %14, %4
  store i32 -1, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %42, %32, %22
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
