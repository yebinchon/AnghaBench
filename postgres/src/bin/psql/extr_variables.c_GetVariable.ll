; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_variables.c_GetVariable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_variables.c_GetVariable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct._variable* }
%struct._variable = type { i8*, i32, %struct._variable* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GetVariable(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._variable*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %40

11:                                               ; preds = %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct._variable*, %struct._variable** %13, align 8
  store %struct._variable* %14, %struct._variable** %6, align 8
  br label %15

15:                                               ; preds = %35, %11
  %16 = load %struct._variable*, %struct._variable** %6, align 8
  %17 = icmp ne %struct._variable* %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = load %struct._variable*, %struct._variable** %6, align 8
  %20 = getelementptr inbounds %struct._variable, %struct._variable* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strcmp(i32 %21, i8* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load %struct._variable*, %struct._variable** %6, align 8
  %28 = getelementptr inbounds %struct._variable, %struct._variable* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %3, align 8
  br label %40

30:                                               ; preds = %18
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %39

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %34
  %36 = load %struct._variable*, %struct._variable** %6, align 8
  %37 = getelementptr inbounds %struct._variable, %struct._variable* %36, i32 0, i32 2
  %38 = load %struct._variable*, %struct._variable** %37, align 8
  store %struct._variable* %38, %struct._variable** %6, align 8
  br label %15

39:                                               ; preds = %33, %15
  store i8* null, i8** %3, align 8
  br label %40

40:                                               ; preds = %39, %26, %10
  %41 = load i8*, i8** %3, align 8
  ret i8* %41
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
