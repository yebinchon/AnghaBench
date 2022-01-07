; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_workshop.c_warp_to_pc.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_workshop.c_warp_to_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@State = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\1B\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%dG\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%dz.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @warp_to_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @warp_to_pc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [256 x i8], align 16
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %1
  %7 = load i32, i32* @State, align 4
  %8 = load i32, i32* @INSERT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = call i32 @add_to_input_buf(i32* bitcast ([2 x i8]* @.str to i32*), i32 1)
  br label %13

13:                                               ; preds = %11, %6
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @isShowing(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %25

21:                                               ; preds = %13
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %27 = bitcast i8* %26 to i32*
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %29 = call i32 @strlen(i8* %28)
  %30 = call i32 @add_to_input_buf(i32* %27, i32 %29)
  br label %31

31:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @add_to_input_buf(i32*, i32) #1

declare dso_local i64 @isShowing(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
