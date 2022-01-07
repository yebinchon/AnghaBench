; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_variables.c_PrintVariables.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_variables.c_PrintVariables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct._variable* }
%struct._variable = type { i8*, i8*, %struct._variable* }

@.str = private unnamed_addr constant [11 x i8] c"%s = '%s'\0A\00", align 1
@cancel_pressed = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintVariables(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct._variable*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = icmp ne %struct.TYPE_3__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %36

7:                                                ; preds = %1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct._variable*, %struct._variable** %9, align 8
  store %struct._variable* %10, %struct._variable** %3, align 8
  br label %11

11:                                               ; preds = %32, %7
  %12 = load %struct._variable*, %struct._variable** %3, align 8
  %13 = icmp ne %struct._variable* %12, null
  br i1 %13, label %14, label %36

14:                                               ; preds = %11
  %15 = load %struct._variable*, %struct._variable** %3, align 8
  %16 = getelementptr inbounds %struct._variable, %struct._variable* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct._variable*, %struct._variable** %3, align 8
  %21 = getelementptr inbounds %struct._variable, %struct._variable* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct._variable*, %struct._variable** %3, align 8
  %24 = getelementptr inbounds %struct._variable, %struct._variable* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %22, i8* %25)
  br label %27

27:                                               ; preds = %19, %14
  %28 = load i64, i64* @cancel_pressed, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %36

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31
  %33 = load %struct._variable*, %struct._variable** %3, align 8
  %34 = getelementptr inbounds %struct._variable, %struct._variable* %33, i32 0, i32 2
  %35 = load %struct._variable*, %struct._variable** %34, align 8
  store %struct._variable* %35, %struct._variable** %3, align 8
  br label %11

36:                                               ; preds = %6, %30, %11
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
