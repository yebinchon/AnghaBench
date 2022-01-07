; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_ppc_cs.c_getspr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_ppc_cs.c_getspr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Getarg = type { i32 }

@getspr.cspr = internal global [16 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"hid0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"hid1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hid2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hid4\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"hid5\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"hid6\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"spr_%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.Getarg*, i32)* @getspr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getspr(%struct.Getarg* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.Getarg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.Getarg* %0, %struct.Getarg** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp sge i32 %10, 8
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %2
  store i8* null, i8** %3, align 8
  br label %27

13:                                               ; preds = %9
  %14 = load %struct.Getarg*, %struct.Getarg** %4, align 8
  %15 = call i32 @getarg(%struct.Getarg* %14, i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %23 [
    i32 133, label %17
    i32 132, label %18
    i32 131, label %19
    i32 130, label %20
    i32 129, label %21
    i32 128, label %22
  ]

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %27

18:                                               ; preds = %13
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %27

19:                                               ; preds = %13
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %27

20:                                               ; preds = %13
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %27

21:                                               ; preds = %13
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %27

22:                                               ; preds = %13
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %27

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @snprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getspr.cspr, i64 0, i64 0), i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %23
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getspr.cspr, i64 0, i64 0), i8** %3, align 8
  br label %27

27:                                               ; preds = %26, %22, %21, %20, %19, %18, %17, %12
  %28 = load i8*, i8** %3, align 8
  ret i8* %28
}

declare dso_local i32 @getarg(%struct.Getarg*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
