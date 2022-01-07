; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_execute_file.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_execute_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ndents = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@dents = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"not regular file\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"permission denied\00", align 1
@F_NORMAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i32*)* @execute_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_file(i32 %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* @ndents, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %5, align 4
  br label %55

14:                                               ; preds = %4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dents, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @S_ISREG(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %14
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @printwait(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %24)
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %5, align 4
  br label %55

27:                                               ; preds = %14
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dents, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 64
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @printwait(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %37)
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %5, align 4
  br label %55

40:                                               ; preds = %27
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dents, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @mkpath(i8* %41, i32 %47, i8* %48)
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* @F_NORMAL, align 4
  %53 = call i32 @spawn(i8* %50, i32* null, i32* null, i8* %51, i32 %52)
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %40, %36, %23, %12
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @printwait(i8*, i32*) #1

declare dso_local i32 @mkpath(i8*, i32, i8*) #1

declare dso_local i32 @spawn(i8*, i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
