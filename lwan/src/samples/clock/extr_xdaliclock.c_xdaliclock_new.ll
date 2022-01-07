; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/clock/extr_xdaliclock.c_xdaliclock_new.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/clock/extr_xdaliclock.c_xdaliclock_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdaliclock = type { i32*, i32*, i32*, i32, i8*, i8* }

@char_width = common dso_local global i32 0, align 4
@char_height = common dso_local global i32 0, align 4
@FRAMES_PER_SECOND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xdaliclock* @xdaliclock_new(i32* %0) #0 {
  %2 = alloca %struct.xdaliclock*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.xdaliclock*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = call %struct.xdaliclock* @malloc(i32 48)
  store %struct.xdaliclock* %6, %struct.xdaliclock** %4, align 8
  %7 = load %struct.xdaliclock*, %struct.xdaliclock** %4, align 8
  %8 = icmp ne %struct.xdaliclock* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.xdaliclock* null, %struct.xdaliclock** %2, align 8
  br label %67

10:                                               ; preds = %1
  %11 = load i32, i32* @char_width, align 4
  %12 = load i32, i32* @char_height, align 4
  %13 = call i8* @frame_mk(i32 %11, i32 %12)
  %14 = load %struct.xdaliclock*, %struct.xdaliclock** %4, align 8
  %15 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %14, i32 0, i32 5
  store i8* %13, i8** %15, align 8
  %16 = load %struct.xdaliclock*, %struct.xdaliclock** %4, align 8
  %17 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %16, i32 0, i32 5
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %10
  br label %64

21:                                               ; preds = %10
  %22 = load i32, i32* @char_width, align 4
  %23 = load i32, i32* @char_height, align 4
  %24 = call i8* @frame_mk(i32 %22, i32 %23)
  %25 = load %struct.xdaliclock*, %struct.xdaliclock** %4, align 8
  %26 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load %struct.xdaliclock*, %struct.xdaliclock** %4, align 8
  %28 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %27, i32 0, i32 4
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %64

32:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %53, %32
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.xdaliclock*, %struct.xdaliclock** %4, align 8
  %36 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @N_ELEMENTS(i32* %37)
  %39 = icmp ult i32 %34, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %33
  %41 = load %struct.xdaliclock*, %struct.xdaliclock** %4, align 8
  %42 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 -1, i32* %46, align 4
  %47 = load %struct.xdaliclock*, %struct.xdaliclock** %4, align 8
  %48 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 -1, i32* %52, align 4
  br label %53

53:                                               ; preds = %40
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %33

56:                                               ; preds = %33
  %57 = load i32, i32* @FRAMES_PER_SECOND, align 4
  %58 = load %struct.xdaliclock*, %struct.xdaliclock** %4, align 8
  %59 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = load %struct.xdaliclock*, %struct.xdaliclock** %4, align 8
  %62 = getelementptr inbounds %struct.xdaliclock, %struct.xdaliclock* %61, i32 0, i32 2
  store i32* %60, i32** %62, align 8
  %63 = load %struct.xdaliclock*, %struct.xdaliclock** %4, align 8
  store %struct.xdaliclock* %63, %struct.xdaliclock** %2, align 8
  br label %67

64:                                               ; preds = %31, %20
  %65 = load %struct.xdaliclock*, %struct.xdaliclock** %4, align 8
  %66 = call i32 @free(%struct.xdaliclock* %65)
  store %struct.xdaliclock* null, %struct.xdaliclock** %2, align 8
  br label %67

67:                                               ; preds = %64, %56, %9
  %68 = load %struct.xdaliclock*, %struct.xdaliclock** %2, align 8
  ret %struct.xdaliclock* %68
}

declare dso_local %struct.xdaliclock* @malloc(i32) #1

declare dso_local i8* @frame_mk(i32, i32) #1

declare dso_local i32 @N_ELEMENTS(i32*) #1

declare dso_local i32 @free(%struct.xdaliclock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
