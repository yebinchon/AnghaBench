; ModuleID = '/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_test_fail.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_test_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"<test>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpc_test_fail(i32* %0, i8* %1, i8* %2, i32 (i8*, i8*)* %3, i32 (i8*)* %4, void (i8*)* %5) #0 {
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
  %15 = load void (i8*)*, void (i8*)** %13, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i64 @mpc_parse(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %16, i32* %17, %struct.TYPE_3__* %14)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %6
  %21 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i32 %21(i8* %23, i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i32 (i8*)*, i32 (i8*)** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 %28(i8* %30)
  store i32 0, i32* %7, align 4
  br label %41

32:                                               ; preds = %20
  %33 = load i32 (i8*)*, i32 (i8*)** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 %33(i8* %35)
  store i32 1, i32* %7, align 4
  br label %41

37:                                               ; preds = %6
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @mpc_err_delete(i32 %39)
  store i32 1, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %32, %27
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i64 @mpc_parse(i8*, i8*, i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @mpc_err_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
