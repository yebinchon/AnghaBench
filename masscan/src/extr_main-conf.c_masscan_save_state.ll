; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-conf.c_masscan_save_state.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-conf.c_masscan_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Masscan = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"paused.conf\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"                                                                      \0D\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"saving resume file to: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @masscan_save_state(%struct.Masscan* %0) #0 {
  %2 = alloca %struct.Masscan*, align 8
  %3 = alloca [512 x i8], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.Masscan* %0, %struct.Masscan** %2, align 8
  %6 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %7 = call i32 @strcpy_s(i8* %6, i32 512, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @stderr, align 4
  %11 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %11)
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %14 = call i32 @fopen_s(i32** %4, i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %19 = call i32 @perror(i8* %18)
  br label %26

20:                                               ; preds = %1
  %21 = load %struct.Masscan*, %struct.Masscan** %2, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @masscan_echo(%struct.Masscan* %21, i32* %22, i32 0)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @fclose(i32* %24)
  br label %26

26:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @strcpy_s(i8*, i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fopen_s(i32**, i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @masscan_echo(%struct.Masscan*, i32*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
