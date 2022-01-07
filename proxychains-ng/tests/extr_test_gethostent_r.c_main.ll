; ModuleID = '/home/carl/AnghaBench/proxychains-ng/tests/extr_test_gethostent_r.c_main.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/tests/extr_test_gethostent_r.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"ret: %d, h_errno: %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"gethostent_r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.hostent, align 4
  %7 = alloca %struct.hostent*, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %11

11:                                               ; preds = %33, %2
  %12 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %13 = call i32 @gethostent_r(%struct.hostent* %6, i8* %12, i32 1024, %struct.hostent** %7, i32* %9)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* @errno, align 4
  store i32 -1, i32* %10, align 4
  br label %21

21:                                               ; preds = %19, %11
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %36

26:                                               ; preds = %21
  %27 = load %struct.hostent*, %struct.hostent** %7, align 8
  %28 = icmp ne %struct.hostent* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.hostent*, %struct.hostent** %7, align 8
  %31 = call i32 @printhostent(%struct.hostent* %30)
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.hostent*, %struct.hostent** %7, align 8
  %35 = icmp ne %struct.hostent* %34, null
  br i1 %35, label %11, label %36

36:                                               ; preds = %33, %24
  ret i32 0
}

declare dso_local i32 @gethostent_r(%struct.hostent*, i8*, i32, %struct.hostent**, i32*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @printhostent(%struct.hostent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
