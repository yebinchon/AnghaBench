; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_motorola-bin.c_usage.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_motorola-bin.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.model = type { i8, i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Usage: motorola-bin -device|--strip infile outfile\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Known devices: \00", align 1
@models = common dso_local global %struct.model* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c" %c - %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.model*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @stderr, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %11 = load %struct.model*, %struct.model** @models, align 8
  store %struct.model* %11, %struct.model** %3, align 8
  br label %12

12:                                               ; preds = %28, %1
  %13 = load %struct.model*, %struct.model** %3, align 8
  %14 = getelementptr inbounds %struct.model, %struct.model* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 8
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load i32, i32* @stderr, align 4
  %20 = load %struct.model*, %struct.model** %3, align 8
  %21 = getelementptr inbounds %struct.model, %struct.model* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 8
  %23 = sext i8 %22 to i32
  %24 = load %struct.model*, %struct.model** %3, align 8
  %25 = getelementptr inbounds %struct.model, %struct.model* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %23, i8* %26)
  br label %28

28:                                               ; preds = %18
  %29 = load %struct.model*, %struct.model** %3, align 8
  %30 = getelementptr inbounds %struct.model, %struct.model* %29, i32 1
  store %struct.model* %30, %struct.model** %3, align 8
  br label %12

31:                                               ; preds = %12
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %34 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
