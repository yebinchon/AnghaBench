; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_dietline.c___update_prompt_color.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_dietline.c___update_prompt_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@I = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__update_prompt_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__update_prompt_color() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = call %struct.TYPE_8__* (...) @r_cons_singleton()
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %1, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %47

12:                                               ; preds = %0
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @I, i32 0, i32 2), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @I, i32 0, i32 0), align 8
  switch i32 %16, label %25 [
    i32 129, label %17
    i32 128, label %24
  ]

17:                                               ; preds = %15
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %2, align 8
  br label %32

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %15, %24
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %2, align 8
  br label %32

32:                                               ; preds = %25, %17
  br label %40

33:                                               ; preds = %12
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %2, align 8
  br label %40

40:                                               ; preds = %33, %32
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %3, align 8
  br label %47

47:                                               ; preds = %40, %0
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @I, i32 0, i32 1), align 4
  %49 = call i8* @r_str_escape(i32 %48)
  store i8* %49, i8** %4, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @I, i32 0, i32 1), align 4
  %51 = call i32 @free(i32 %50)
  %52 = load i8*, i8** %2, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @r_str_newf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %52, i8* %53, i8* %54)
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @I, i32 0, i32 1), align 4
  ret void
}

declare dso_local %struct.TYPE_8__* @r_cons_singleton(...) #1

declare dso_local i8* @r_str_escape(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @r_str_newf(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
