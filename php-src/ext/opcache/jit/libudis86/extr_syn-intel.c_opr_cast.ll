; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_syn-intel.c_opr_cast.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_syn-intel.c_opr_cast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i64 }
%struct.ud_operand = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"far \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"byte \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"word \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"dword \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"qword \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"tword \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"oword \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"yword \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ud*, %struct.ud_operand*)* @opr_cast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opr_cast(%struct.ud* %0, %struct.ud_operand* %1) #0 {
  %3 = alloca %struct.ud*, align 8
  %4 = alloca %struct.ud_operand*, align 8
  store %struct.ud* %0, %struct.ud** %3, align 8
  store %struct.ud_operand* %1, %struct.ud_operand** %4, align 8
  %5 = load %struct.ud*, %struct.ud** %3, align 8
  %6 = getelementptr inbounds %struct.ud, %struct.ud* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.ud*, %struct.ud** %3, align 8
  %11 = call i32 @ud_asmprintf(%struct.ud* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.ud_operand*, %struct.ud_operand** %4, align 8
  %14 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %37 [
    i32 8, label %16
    i32 16, label %19
    i32 32, label %22
    i32 64, label %25
    i32 80, label %28
    i32 128, label %31
    i32 256, label %34
  ]

16:                                               ; preds = %12
  %17 = load %struct.ud*, %struct.ud** %3, align 8
  %18 = call i32 @ud_asmprintf(%struct.ud* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %38

19:                                               ; preds = %12
  %20 = load %struct.ud*, %struct.ud** %3, align 8
  %21 = call i32 @ud_asmprintf(%struct.ud* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %38

22:                                               ; preds = %12
  %23 = load %struct.ud*, %struct.ud** %3, align 8
  %24 = call i32 @ud_asmprintf(%struct.ud* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %38

25:                                               ; preds = %12
  %26 = load %struct.ud*, %struct.ud** %3, align 8
  %27 = call i32 @ud_asmprintf(%struct.ud* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %38

28:                                               ; preds = %12
  %29 = load %struct.ud*, %struct.ud** %3, align 8
  %30 = call i32 @ud_asmprintf(%struct.ud* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %38

31:                                               ; preds = %12
  %32 = load %struct.ud*, %struct.ud** %3, align 8
  %33 = call i32 @ud_asmprintf(%struct.ud* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %38

34:                                               ; preds = %12
  %35 = load %struct.ud*, %struct.ud** %3, align 8
  %36 = call i32 @ud_asmprintf(%struct.ud* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %38

37:                                               ; preds = %12
  br label %38

38:                                               ; preds = %37, %34, %31, %28, %25, %22, %19, %16
  ret void
}

declare dso_local i32 @ud_asmprintf(%struct.ud*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
