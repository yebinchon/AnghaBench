; ModuleID = '/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_test_pass.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_test_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"<test>\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Got \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Expected \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpc_test_pass(i32* %0, i8* %1, i8* %2, i32 (i8*, i8*)* %3, i32 (i8*)* %4, void (i8*)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32 (i8*, i8*)*, align 8
  %12 = alloca i32 (i8*)*, align 8
  %13 = alloca void (i8*)*, align 8
  %14 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %11, align 8
  store i32 (i8*)* %4, i32 (i8*)** %12, align 8
  store void (i8*)* %5, void (i8*)** %13, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i64 @mpc_parse(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %15, i32* %16, %struct.TYPE_3__* %14)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %6
  %20 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 %20(i8* %22, i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32 (i8*)*, i32 (i8*)** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 %27(i8* %29)
  store i32 1, i32* %7, align 4
  br label %52

31:                                               ; preds = %19
  %32 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %33 = load void (i8*)*, void (i8*)** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  call void %33(i8* %35)
  %36 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %38 = load void (i8*)*, void (i8*)** %13, align 8
  %39 = load i8*, i8** %10, align 8
  call void %38(i8* %39)
  %40 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32 (i8*)*, i32 (i8*)** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 %41(i8* %43)
  store i32 0, i32* %7, align 4
  br label %52

45:                                               ; preds = %6
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @mpc_err_print(i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @mpc_err_delete(i32 %50)
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %45, %31, %26
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local i64 @mpc_parse(i8*, i8*, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @mpc_err_print(i32) #1

declare dso_local i32 @mpc_err_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
