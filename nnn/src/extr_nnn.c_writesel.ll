; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_writesel.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_writesel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@g_selpath = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @writesel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writesel(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cfg, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @g_selpath, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %2
  br label %31

12:                                               ; preds = %8
  %13 = load i32, i32* @g_selpath, align 4
  %14 = call i32* @fopen(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i64 @fwrite(i8* %18, i32 1, i64 %19, i32* %20)
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 @printwarn(i32* null)
  br label %26

26:                                               ; preds = %24, %17
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @fclose(i32* %27)
  br label %31

29:                                               ; preds = %12
  %30 = call i32 @printwarn(i32* null)
  br label %31

31:                                               ; preds = %11, %29, %26
  ret void
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @printwarn(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
