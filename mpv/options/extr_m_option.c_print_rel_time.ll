; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_print_rel_time.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_print_rel_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_rel_time = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%g\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"#%g\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%g%%\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @print_rel_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @print_rel_time(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.m_rel_time*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.m_rel_time*
  store %struct.m_rel_time* %8, %struct.m_rel_time** %6, align 8
  %9 = load %struct.m_rel_time*, %struct.m_rel_time** %6, align 8
  %10 = getelementptr inbounds %struct.m_rel_time, %struct.m_rel_time* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %45 [
    i32 131, label %12
    i32 128, label %19
    i32 130, label %31
    i32 129, label %38
  ]

12:                                               ; preds = %2
  %13 = load %struct.m_rel_time*, %struct.m_rel_time** %6, align 8
  %14 = getelementptr inbounds %struct.m_rel_time, %struct.m_rel_time* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i8* (i32*, i8*, i8*, ...) @talloc_asprintf(i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i8* %18, i8** %3, align 8
  br label %47

19:                                               ; preds = %2
  %20 = load %struct.m_rel_time*, %struct.m_rel_time** %6, align 8
  %21 = getelementptr inbounds %struct.m_rel_time, %struct.m_rel_time* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %26 = load %struct.m_rel_time*, %struct.m_rel_time** %6, align 8
  %27 = getelementptr inbounds %struct.m_rel_time, %struct.m_rel_time* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @fabs(i32 %28)
  %30 = call i8* (i32*, i8*, i8*, ...) @talloc_asprintf(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %25, i32 %29)
  store i8* %30, i8** %3, align 8
  br label %47

31:                                               ; preds = %2
  %32 = load %struct.m_rel_time*, %struct.m_rel_time** %6, align 8
  %33 = getelementptr inbounds %struct.m_rel_time, %struct.m_rel_time* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = call i8* (i32*, i8*, i8*, ...) @talloc_asprintf(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %36)
  store i8* %37, i8** %3, align 8
  br label %47

38:                                               ; preds = %2
  %39 = load %struct.m_rel_time*, %struct.m_rel_time** %6, align 8
  %40 = getelementptr inbounds %struct.m_rel_time, %struct.m_rel_time* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i8* (i32*, i8*, i8*, ...) @talloc_asprintf(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %43)
  store i8* %44, i8** %3, align 8
  br label %47

45:                                               ; preds = %2
  %46 = call i8* @talloc_strdup(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i8* %46, i8** %3, align 8
  br label %47

47:                                               ; preds = %45, %38, %31, %19, %12
  %48 = load i8*, i8** %3, align 8
  ret i8* %48
}

declare dso_local i8* @talloc_asprintf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @fabs(i32) #1

declare dso_local i8* @talloc_strdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
