; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/regex/extr_regerror.c_regatoi.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/regex/extr_regerror.c_regatoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rerr = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@rerrs = common dso_local global %struct.rerr* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i8*, i32)* @regatoi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @regatoi(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rerr*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.rerr*, %struct.rerr** @rerrs, align 8
  store %struct.rerr* %9, %struct.rerr** %8, align 8
  br label %10

10:                                               ; preds = %26, %3
  %11 = load %struct.rerr*, %struct.rerr** %8, align 8
  %12 = getelementptr inbounds %struct.rerr, %struct.rerr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %10
  %16 = load %struct.rerr*, %struct.rerr** %8, align 8
  %17 = getelementptr inbounds %struct.rerr, %struct.rerr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @strcmp(i32 %18, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %29

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.rerr*, %struct.rerr** %8, align 8
  %28 = getelementptr inbounds %struct.rerr, %struct.rerr* %27, i32 1
  store %struct.rerr* %28, %struct.rerr** %8, align 8
  br label %10

29:                                               ; preds = %24, %10
  %30 = load %struct.rerr*, %struct.rerr** %8, align 8
  %31 = getelementptr inbounds %struct.rerr, %struct.rerr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %43

35:                                               ; preds = %29
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.rerr*, %struct.rerr** %8, align 8
  %39 = getelementptr inbounds %struct.rerr, %struct.rerr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @snprintf(i8* %36, i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load i8*, i8** %6, align 8
  store i8* %42, i8** %4, align 8
  br label %43

43:                                               ; preds = %35, %34
  %44 = load i8*, i8** %4, align 8
  ret i8* %44
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
