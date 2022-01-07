; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_integration.c_getCommand.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_integration.c_getCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getCommand.cmdbuf = internal global i8* null, align 8
@getCommand.cbsize = internal global i32 0, align 4
@sd = common dso_local global i32 0, align 4
@CMDBUFSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @getCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getCommand() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca [7 x i8], align 1
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @sd, align 4
  %6 = call i32 (i32, ...) @read(i32 %5, [7 x i8]* %3, i32 6)
  store i32 %6, i32* %2, align 4
  %7 = icmp eq i32 %6, 6
  br i1 %7, label %8, label %50

8:                                                ; preds = %0
  %9 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 6
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %11 = call i32 @atoi(i8* %10)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* @getCommand.cbsize, align 4
  %13 = load i32, i32* %2, align 4
  %14 = add nsw i32 %13, 1
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %8
  %17 = load i8*, i8** @getCommand.cmdbuf, align 8
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 256
  %20 = load i32, i32* @CMDBUFSIZ, align 4
  %21 = call i32 @MAX(i32 %19, i32 %20)
  %22 = call i64 @realloc(i8* %17, i32 %21)
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load i8*, i8** %4, align 8
  store i8* %27, i8** @getCommand.cmdbuf, align 8
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 256
  %30 = load i32, i32* @CMDBUFSIZ, align 4
  %31 = call i32 @MAX(i32 %29, i32 %30)
  store i32 %31, i32* @getCommand.cbsize, align 4
  br label %32

32:                                               ; preds = %26, %16
  br label %33

33:                                               ; preds = %32, %8
  %34 = load i32, i32* @getCommand.cbsize, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i32, i32* @sd, align 4
  %39 = load i8*, i8** @getCommand.cmdbuf, align 8
  %40 = load i32, i32* %2, align 4
  %41 = call i32 (i32, ...) @read(i32 %38, i8* %39, i32 %40)
  store i32 %41, i32* %2, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i8*, i8** @getCommand.cmdbuf, align 8
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8 0, i8* %47, align 1
  %48 = load i8*, i8** @getCommand.cmdbuf, align 8
  store i8* %48, i8** %1, align 8
  br label %56

49:                                               ; preds = %37, %33
  store i8* null, i8** %1, align 8
  br label %56

50:                                               ; preds = %0
  %51 = load i32, i32* %2, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 (...) @workshop_connection_closed()
  br label %55

55:                                               ; preds = %53, %50
  store i8* null, i8** %1, align 8
  br label %56

56:                                               ; preds = %55, %49, %43
  %57 = load i8*, i8** %1, align 8
  ret i8* %57
}

declare dso_local i32 @read(i32, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @realloc(i8*, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @workshop_connection_closed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
