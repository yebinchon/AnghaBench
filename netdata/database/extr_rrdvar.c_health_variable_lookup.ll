; ModuleID = '/home/carl/AnghaBench/netdata/database/extr_rrdvar.c_health_variable_lookup.c'
source_filename = "/home/carl/AnghaBench/netdata/database/extr_rrdvar.c_health_variable_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @health_variable_lookup(i8* %0, i32 %1, %struct.TYPE_9__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %10, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %61

19:                                               ; preds = %4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %11, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32* @rrdvar_index_find(i32* %24, i8* %25, i32 %26)
  store i32* %27, i32** %12, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @rrdvar2number(i32* %31)
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  store i32 1, i32* %5, align 4
  br label %61

34:                                               ; preds = %19
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32* @rrdvar_index_find(i32* %38, i8* %39, i32 %40)
  store i32* %41, i32** %12, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @rrdvar2number(i32* %45)
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  store i32 1, i32* %5, align 4
  br label %61

48:                                               ; preds = %34
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32* @rrdvar_index_find(i32* %50, i8* %51, i32 %52)
  store i32* %53, i32** %12, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @rrdvar2number(i32* %57)
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  store i32 1, i32* %5, align 4
  br label %61

60:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %56, %44, %30, %18
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32* @rrdvar_index_find(i32*, i8*, i32) #1

declare dso_local i32 @rrdvar2number(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
