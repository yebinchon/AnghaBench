; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/mangling/extr_microsoft_demangle.c_get_type_code_string.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/mangling/extr_microsoft_demangle.c_get_type_code_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_9__ = type { i64, i32, i32 }

@eDemanglerErrOK = common dso_local global i32 0, align 4
@eDemanglerErrMemoryAllocation = common dso_local global i32 0, align 4
@eTCStateEnd = common dso_local global i64 0, align 8
@eTCStateMachineErrOK = common dso_local global i32 0, align 4
@eDemanglerErrUncorrectMangledSymbol = common dso_local global i32 0, align 4
@eDemanglerErrUnsupportedMangling = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8**)* @get_type_code_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_type_code_string(i8* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8** %2, i8*** %6, align 8
  %11 = load i32, i32* @eDemanglerErrOK, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @strdup(i8* %12)
  store i8* %13, i8** %8, align 8
  %14 = call i32 @init_type_code_str_struct(%struct.TYPE_8__* %9)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @eDemanglerErrMemoryAllocation, align 4
  store i32 %17, i32* %7, align 4
  br label %52

18:                                               ; preds = %3
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @init_state_struct(%struct.TYPE_9__* %10, i8* %19)
  br label %21

21:                                               ; preds = %43, %18
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @eTCStateEnd, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = call i32 @run_state(%struct.TYPE_9__* %10, %struct.TYPE_8__* %9)
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @eTCStateMachineErrOK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load i8**, i8*** %6, align 8
  store i8* null, i8** %33, align 8
  %34 = load i32*, i32** %5, align 8
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %41 [
    i32 129, label %37
    i32 128, label %39
  ]

37:                                               ; preds = %32
  %38 = load i32, i32* @eDemanglerErrUncorrectMangledSymbol, align 4
  store i32 %38, i32* %7, align 4
  br label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @eDemanglerErrUnsupportedMangling, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %32, %39
  br label %42

42:                                               ; preds = %41, %37
  br label %52

43:                                               ; preds = %26
  br label %21

44:                                               ; preds = %21
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i8* @strdup(i8* %46)
  %48 = load i8**, i8*** %6, align 8
  store i8* %47, i8** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %44, %42, %16
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @R_FREE(i8* %53)
  %55 = call i32 @free_type_code_str_struct(%struct.TYPE_8__* %9)
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @init_type_code_str_struct(%struct.TYPE_8__*) #1

declare dso_local i32 @init_state_struct(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @run_state(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

declare dso_local i32 @R_FREE(i8*) #1

declare dso_local i32 @free_type_code_str_struct(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
