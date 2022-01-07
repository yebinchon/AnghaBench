; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_visual.c_stackPrintCommand.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_visual.c_stackPrintCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@current0format = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"dbg.slow\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pxr\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"stack.bytes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"px\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pxq\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pxw\00", align 1
@printHexFormats = common dso_local global i8** null, align 8
@PRINT_HEX_FORMATS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*)* @stackPrintCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stackPrintCommand(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %4 = load i64, i64* @current0format, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @r_config_get_i(i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %36

13:                                               ; preds = %6
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @r_config_get_i(i32 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %36

20:                                               ; preds = %13
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %28 [
    i32 64, label %26
    i32 32, label %27
  ]

26:                                               ; preds = %20
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %36

27:                                               ; preds = %20
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %36

28:                                               ; preds = %20
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %36

29:                                               ; preds = %1
  %30 = load i8**, i8*** @printHexFormats, align 8
  %31 = load i64, i64* @current0format, align 8
  %32 = load i64, i64* @PRINT_HEX_FORMATS, align 8
  %33 = urem i64 %31, %32
  %34 = getelementptr inbounds i8*, i8** %30, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %2, align 8
  br label %36

36:                                               ; preds = %29, %28, %27, %26, %19, %12
  %37 = load i8*, i8** %2, align 8
  ret i8* %37
}

declare dso_local i64 @r_config_get_i(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
