; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_debug.c_r_debug_heap.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_debug.c_r_debug_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"dbg.malloc\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"glibc\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"glibc not supported for this platform\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"MALLOC algorithm not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*)* @r_debug_heap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_debug_heap(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i8* @r_config_get(i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = call i32 @eprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %21

19:                                               ; preds = %13, %2
  %20 = call i32 @eprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %22

21:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %19
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i8* @r_config_get(i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @eprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
