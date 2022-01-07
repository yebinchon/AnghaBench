; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_print.c_cmd_print_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_print.c_cmd_print_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@help_msg_po = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i8*)* @cmd_print_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_print_op(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %61

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %40 [
    i32 97, label %16
    i32 115, label %16
    i32 65, label %16
    i32 120, label %16
    i32 114, label %16
    i32 108, label %16
    i32 109, label %16
    i32 100, label %16
    i32 111, label %16
    i32 50, label %16
    i32 52, label %16
    i32 110, label %36
    i32 0, label %39
    i32 63, label %39
  ]

16:                                               ; preds = %11, %11, %11, %11, %11, %11, %11, %11, %11, %11, %11
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 2
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 3
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = call i32* @r_core_transform_op(%struct.TYPE_5__* %22, i8* %24, i8 signext %27)
  store i32* %28, i32** %5, align 8
  br label %35

29:                                               ; preds = %16
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = call i32* @r_core_transform_op(%struct.TYPE_5__* %30, i8* null, i8 signext %33)
  store i32* %34, i32** %5, align 8
  br label %35

35:                                               ; preds = %29, %21
  br label %44

36:                                               ; preds = %11
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = call i32* @r_core_transform_op(%struct.TYPE_5__* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext 120)
  store i32* %38, i32** %5, align 8
  br label %44

39:                                               ; preds = %11, %11
  br label %40

40:                                               ; preds = %11, %39
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = load i32, i32* @help_msg_po, align 4
  %43 = call i32 @r_core_cmd_help(%struct.TYPE_5__* %41, i32 %42)
  br label %61

44:                                               ; preds = %36, %35
  %45 = load i32*, i32** %5, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @r_print_hexdump(i32 %50, i32 %53, i32* %54, i32 %57, i32 16, i32 1, i32 1)
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @free(i32* %59)
  br label %61

61:                                               ; preds = %10, %40, %47, %44
  ret void
}

declare dso_local i32* @r_core_transform_op(%struct.TYPE_5__*, i8*, i8 signext) #1

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @r_print_hexdump(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
