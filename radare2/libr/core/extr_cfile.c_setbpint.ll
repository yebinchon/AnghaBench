; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cfile.c_setbpint.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cfile.c_setbpint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_9__ = type { i32 }

@R_BP_PROT_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"?e %s: %s\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Cannot set breakpoint at %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i8*)* @setbpint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setbpint(%struct.TYPE_10__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call %struct.TYPE_9__* @r_flag_get(i32 %12, i8* %13)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %9, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

18:                                               ; preds = %3
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @R_BP_PROT_EXEC, align 4
  %28 = call %struct.TYPE_11__* @r_bp_add_sw(i32 %23, i32 %26, i32 1, i32 %27)
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %8, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %18
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i8* @r_str_newf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %35)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  store i32 1, i32* %4, align 4
  br label %42

39:                                               ; preds = %18
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @eprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %31, %17
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_9__* @r_flag_get(i32, i8*) #1

declare dso_local %struct.TYPE_11__* @r_bp_add_sw(i32, i32, i32, i32) #1

declare dso_local i8* @r_str_newf(i8*, i8*, i8*) #1

declare dso_local i32 @eprintf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
