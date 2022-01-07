; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/networking/timestamping/extr_txtimestamp.c_print_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/networking/timestamping/extr_txtimestamp.c_print_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scm_timestamping = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c"  ENQ\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"  SND\00", align 1
@cfg_delay_snd = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"  ACK\00", align 1
@cfg_delay_ack = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"unknown timestamp type: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scm_timestamping*, i32, i32, i32)* @print_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_timestamp(%struct.scm_timestamping* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.scm_timestamping*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.scm_timestamping* %0, %struct.scm_timestamping** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @validate_key(i32 %10, i32 %11)
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %34 [
    i32 129, label %14
    i32 128, label %20
    i32 130, label %27
  ]

14:                                               ; preds = %4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %15 = load %struct.scm_timestamping*, %struct.scm_timestamping** %5, align 8
  %16 = getelementptr inbounds %struct.scm_timestamping, %struct.scm_timestamping* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = call i32 @validate_timestamp(i32* %18, i32 0)
  br label %37

20:                                               ; preds = %4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %21 = load %struct.scm_timestamping*, %struct.scm_timestamping** %5, align 8
  %22 = getelementptr inbounds %struct.scm_timestamping, %struct.scm_timestamping* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* @cfg_delay_snd, align 4
  %26 = call i32 @validate_timestamp(i32* %24, i32 %25)
  br label %37

27:                                               ; preds = %4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  %28 = load %struct.scm_timestamping*, %struct.scm_timestamping** %5, align 8
  %29 = getelementptr inbounds %struct.scm_timestamping, %struct.scm_timestamping* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* @cfg_delay_ack, align 4
  %33 = call i32 @validate_timestamp(i32* %31, i32 %32)
  br label %37

34:                                               ; preds = %4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %34, %27, %20, %14
  %38 = load i8*, i8** %9, align 8
  %39 = load %struct.scm_timestamping*, %struct.scm_timestamping** %5, align 8
  %40 = getelementptr inbounds %struct.scm_timestamping, %struct.scm_timestamping* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @__print_timestamp(i8* %38, i32* %42, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @validate_key(i32, i32) #1

declare dso_local i32 @validate_timestamp(i32*, i32) #1

declare dso_local i32 @error(i32, i32, i8*, i32) #1

declare dso_local i32 @__print_timestamp(i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
