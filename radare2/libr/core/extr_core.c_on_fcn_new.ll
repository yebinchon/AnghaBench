; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_core.c_on_fcn_new.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_core.c_on_fcn_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"cmd.fcn.new\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_7__*)* @on_fcn_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_fcn_new(i32* %0, i8* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @r_config_get(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %40

19:                                               ; preds = %3
  %20 = load i8*, i8** %8, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @r_core_seek(%struct.TYPE_6__* %31, i32 %32, i32 1)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @r_core_cmd0(%struct.TYPE_6__* %34, i8* %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @r_core_seek(%struct.TYPE_6__* %37, i32 %38, i32 1)
  br label %40

40:                                               ; preds = %24, %19, %3
  ret i32 0
}

declare dso_local i8* @r_config_get(i32, i8*) #1

declare dso_local i32 @r_core_seek(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @r_core_cmd0(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
