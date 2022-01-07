; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, float, i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32, i8)*, i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*)*, i32 }

@main.long_options = internal global [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), float 1.280000e+02, i32 0, i32 102 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), float 1.290000e+02, i32 0, i32 116 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), float 1.280000e+02, i32 0, i32 103 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), float 1.290000e+02, i32 0, i32 104 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [9 x i8] c"pdb_file\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"print_types\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"print_globals\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c":f:tg:h\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"initialization error of pdb parser\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  br label %10

10:                                               ; preds = %2, %42
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt_long(i32 %11, i8** %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @main.long_options, i64 0, i64 0), i32* %7)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %43

17:                                               ; preds = %10
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %40 [
    i32 102, label %19
    i32 116, label %32
    i32 103, label %36
  ]

19:                                               ; preds = %17
  %20 = load i8*, i8** @optarg, align 8
  store i8* %20, i8** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %22 = load i8*, i8** @optarg, align 8
  %23 = call i32 @strcpy(i32* %21, i8* %22)
  %24 = call i32 @init_pdb_parser(%struct.TYPE_6__* %6)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %44

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %30 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %29, align 8
  %31 = call i32 %30(%struct.TYPE_6__* %6)
  br label %42

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %34 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %33, align 8
  %35 = call i32 %34(%struct.TYPE_6__* %6, i32 0)
  br label %42

36:                                               ; preds = %17
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_6__*, i32, i8)*, i32 (%struct.TYPE_6__*, i32, i8)** %37, align 8
  %39 = call i32 %38(%struct.TYPE_6__* %6, i32 0, i8 signext 114)
  br label %42

40:                                               ; preds = %17
  %41 = call i32 (...) @print_usage()
  store i32 0, i32* %3, align 4
  br label %44

42:                                               ; preds = %36, %32, %28
  br label %10

43:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %40, %26
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

declare dso_local i32 @init_pdb_parser(%struct.TYPE_6__*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @print_usage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
