; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/xap/extr_dis.c_decode_fixed.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/xap/extr_dis.c_decode_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.state = type { i32, i32, i32 }
%struct.directive = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"brk\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"sleep\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"sif\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"brxl\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"rts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.state*, %struct.directive*)* @decode_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_fixed(%struct.state* %0, %struct.directive* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.state*, align 8
  %5 = alloca %struct.directive*, align 8
  store %struct.state* %0, %struct.state** %4, align 8
  store %struct.directive* %1, %struct.directive** %5, align 8
  %6 = load %struct.directive*, %struct.directive** %5, align 8
  %7 = getelementptr inbounds %struct.directive, %struct.directive* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8 0, i8* %8, align 1
  %9 = load %struct.directive*, %struct.directive** %5, align 8
  %10 = getelementptr inbounds %struct.directive, %struct.directive* %9, i32 0, i32 1
  %11 = call i32 @i2u16(i32* %10)
  switch i32 %11, label %64 [
    i32 132, label %12
    i32 134, label %27
    i32 129, label %32
    i32 130, label %37
    i32 135, label %42
    i32 133, label %47
    i32 128, label %52
    i32 131, label %59
  ]

12:                                               ; preds = %2
  %13 = load %struct.state*, %struct.state** %4, align 8
  %14 = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %73

18:                                               ; preds = %12
  %19 = load %struct.state*, %struct.state** %4, align 8
  %20 = getelementptr inbounds %struct.state, %struct.state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.directive*, %struct.directive** %5, align 8
  %24 = getelementptr inbounds %struct.directive, %struct.directive* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcpy(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %64

27:                                               ; preds = %2
  %28 = load %struct.directive*, %struct.directive** %5, align 8
  %29 = getelementptr inbounds %struct.directive, %struct.directive* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strcpy(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %64

32:                                               ; preds = %2
  %33 = load %struct.directive*, %struct.directive** %5, align 8
  %34 = getelementptr inbounds %struct.directive, %struct.directive* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strcpy(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %64

37:                                               ; preds = %2
  %38 = load %struct.directive*, %struct.directive** %5, align 8
  %39 = getelementptr inbounds %struct.directive, %struct.directive* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strcpy(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %64

42:                                               ; preds = %2
  %43 = load %struct.directive*, %struct.directive** %5, align 8
  %44 = getelementptr inbounds %struct.directive, %struct.directive* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcpy(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %64

47:                                               ; preds = %2
  %48 = load %struct.directive*, %struct.directive** %5, align 8
  %49 = getelementptr inbounds %struct.directive, %struct.directive* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strcpy(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %64

52:                                               ; preds = %2
  %53 = load %struct.directive*, %struct.directive** %5, align 8
  %54 = getelementptr inbounds %struct.directive, %struct.directive* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strcpy(i8* %55, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  %57 = load %struct.state*, %struct.state** %4, align 8
  %58 = getelementptr inbounds %struct.state, %struct.state* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  br label %64

59:                                               ; preds = %2
  %60 = load %struct.directive*, %struct.directive** %5, align 8
  %61 = getelementptr inbounds %struct.directive, %struct.directive* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strcpy(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %64

64:                                               ; preds = %2, %59, %52, %47, %42, %37, %32, %27, %18
  %65 = load %struct.directive*, %struct.directive** %5, align 8
  %66 = getelementptr inbounds %struct.directive, %struct.directive* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %64, %17
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @i2u16(i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
