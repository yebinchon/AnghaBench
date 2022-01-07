; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_visit_parent.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_visit_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FILTER = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32*)* @visit_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @visit_parent(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @istopdir(i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfg, i32 0, i32 0), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @FILTER, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  br label %18

18:                                               ; preds = %15, %12
  store i8* null, i8** %4, align 8
  br label %35

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @PATH_MAX, align 4
  %23 = call i32 @xstrlcpy(i8* %20, i8* %21, i32 %22)
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @dirname(i8* %24)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* @R_OK, align 4
  %28 = call i32 @access(i8* %26, i32 %27)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @printwarn(i32* %31)
  store i8* null, i8** %4, align 8
  br label %35

33:                                               ; preds = %19
  %34 = load i8*, i8** %8, align 8
  store i8* %34, i8** %4, align 8
  br label %35

35:                                               ; preds = %33, %30, %18
  %36 = load i8*, i8** %4, align 8
  ret i8* %36
}

declare dso_local i64 @istopdir(i8*) #1

declare dso_local i32 @xstrlcpy(i8*, i8*, i32) #1

declare dso_local i8* @dirname(i8*) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @printwarn(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
