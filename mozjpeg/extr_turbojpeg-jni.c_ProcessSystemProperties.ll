; ModuleID = '/home/carl/AnghaBench/mozjpeg/extr_turbojpeg-jni.c_ProcessSystemProperties.c'
source_filename = "/home/carl/AnghaBench/mozjpeg/extr_turbojpeg-jni.c_ProcessSystemProperties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__**, i32, i8*, i8*)*, i32 (%struct.TYPE_5__**, i8*)* }

@.str = private unnamed_addr constant [17 x i8] c"java/lang/System\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"getProperty\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"(Ljava/lang/String;)Ljava/lang/String;\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"turbojpeg.optimize\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"TJ_OPTIMIZE\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"turbojpeg.arithmetic\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"TJ_ARITHMETIC\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"turbojpeg.restart\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"TJ_RESTART\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"turbojpeg.progressive\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"TJ_PROGRESSIVE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ProcessSystemProperties(%struct.TYPE_5__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %3, align 8
  %9 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32 (%struct.TYPE_5__**, i8*)*, i32 (%struct.TYPE_5__**, i8*)** %11, align 8
  %13 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %14 = call i32 %12(%struct.TYPE_5__** %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %4, align 4
  %15 = call i32 @bailif0(i32 %14)
  %16 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_5__**, i32, i8*, i8*)*, i32 (%struct.TYPE_5__**, i32, i8*, i8*)** %18, align 8
  %20 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 %19(%struct.TYPE_5__** %20, i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 %22, i32* %5, align 4
  %23 = call i32 @bailif0(i32 %22)
  %24 = call i32 @prop2env(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %25 = call i32 @prop2env(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %26 = call i32 @prop2env(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %27 = call i32 @prop2env(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %29

28:                                               ; No predecessors!
  store i32 -1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @bailif0(i32) #1

declare dso_local i32 @prop2env(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
