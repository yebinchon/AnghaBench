; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_m0110.c_m0110_recv_key.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_m0110.c_m0110_recv_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@m0110_recv_key.keybuf = internal global i32 0, align 4
@m0110_recv_key.keybuf2 = internal global i32 0, align 4
@m0110_recv_key.rawbuf = internal global i32 0, align 4
@M0110_CALC_OFFSET = common dso_local global i32 0, align 4
@M0110_KEYPAD_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"(4)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"(3)\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"(2)\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"(1)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m0110_recv_key() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @m0110_recv_key.keybuf, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @m0110_recv_key.keybuf, align 4
  store i32 %8, i32* %2, align 4
  store i32 0, i32* @m0110_recv_key.keybuf, align 4
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %1, align 4
  br label %120

10:                                               ; preds = %0
  %11 = load i32, i32* @m0110_recv_key.keybuf2, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* @m0110_recv_key.keybuf2, align 4
  store i32 %14, i32* %2, align 4
  store i32 0, i32* @m0110_recv_key.keybuf2, align 4
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* %1, align 4
  br label %120

16:                                               ; preds = %10
  %17 = load i32, i32* @m0110_recv_key.rawbuf, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @m0110_recv_key.rawbuf, align 4
  store i32 %20, i32* %2, align 4
  store i32 0, i32* @m0110_recv_key.rawbuf, align 4
  br label %23

21:                                               ; preds = %16
  %22 = call i32 (...) @instant()
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @KEY(i32 %24)
  switch i32 %25, label %117 [
    i32 129, label %26
    i32 128, label %49
  ]

26:                                               ; preds = %23
  %27 = call i32 (...) @instant()
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @KEY(i32 %28)
  switch i32 %29, label %44 [
    i32 130, label %30
    i32 133, label %30
    i32 132, label %30
    i32 131, label %30
  ]

30:                                               ; preds = %26, %26, %26, %26
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @IS_BREAK(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @raw2scan(i32 %35)
  %37 = load i32, i32* @M0110_CALC_OFFSET, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* @m0110_recv_key.keybuf, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @raw2scan(i32 %39)
  %41 = load i32, i32* @M0110_KEYPAD_OFFSET, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %1, align 4
  br label %120

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %26, %43
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @raw2scan(i32 %45)
  %47 = load i32, i32* @M0110_KEYPAD_OFFSET, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %1, align 4
  br label %120

49:                                               ; preds = %23
  %50 = call i32 (...) @instant()
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @KEY(i32 %51)
  switch i32 %52, label %112 [
    i32 128, label %53
    i32 129, label %57
  ]

53:                                               ; preds = %49
  %54 = load i32, i32* %3, align 4
  store i32 %54, i32* @m0110_recv_key.rawbuf, align 4
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @raw2scan(i32 %55)
  store i32 %56, i32* %1, align 4
  br label %120

57:                                               ; preds = %49
  %58 = call i32 (...) @instant()
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @KEY(i32 %59)
  switch i32 %60, label %105 [
    i32 130, label %61
    i32 133, label %61
    i32 132, label %61
    i32 131, label %61
  ]

61:                                               ; preds = %57, %57, %57, %57
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @IS_BREAK(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %61
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @IS_BREAK(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = call i32 @print(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* %2, align 4
  %72 = call i32 @raw2scan(i32 %71)
  store i32 %72, i32* @m0110_recv_key.keybuf2, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @raw2scan(i32 %73)
  %75 = load i32, i32* @M0110_CALC_OFFSET, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* @m0110_recv_key.keybuf, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @raw2scan(i32 %77)
  %79 = load i32, i32* @M0110_KEYPAD_OFFSET, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %1, align 4
  br label %120

81:                                               ; preds = %65
  %82 = call i32 @print(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* %2, align 4
  %84 = call i32 @raw2scan(i32 %83)
  store i32 %84, i32* %1, align 4
  br label %120

85:                                               ; preds = %61
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @IS_BREAK(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = call i32 @print(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @raw2scan(i32 %91)
  %93 = load i32, i32* @M0110_CALC_OFFSET, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* @m0110_recv_key.keybuf, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @raw2scan(i32 %95)
  %97 = load i32, i32* @M0110_KEYPAD_OFFSET, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* %1, align 4
  br label %120

99:                                               ; preds = %85
  %100 = call i32 @print(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @raw2scan(i32 %101)
  %103 = load i32, i32* @M0110_CALC_OFFSET, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %1, align 4
  br label %120

105:                                              ; preds = %57
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @raw2scan(i32 %106)
  %108 = load i32, i32* @M0110_KEYPAD_OFFSET, align 4
  %109 = or i32 %107, %108
  store i32 %109, i32* @m0110_recv_key.keybuf, align 4
  %110 = load i32, i32* %2, align 4
  %111 = call i32 @raw2scan(i32 %110)
  store i32 %111, i32* %1, align 4
  br label %120

112:                                              ; preds = %49
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @raw2scan(i32 %113)
  store i32 %114, i32* @m0110_recv_key.keybuf, align 4
  %115 = load i32, i32* %2, align 4
  %116 = call i32 @raw2scan(i32 %115)
  store i32 %116, i32* %1, align 4
  br label %120

117:                                              ; preds = %23
  %118 = load i32, i32* %2, align 4
  %119 = call i32 @raw2scan(i32 %118)
  store i32 %119, i32* %1, align 4
  br label %120

120:                                              ; preds = %117, %112, %105, %99, %89, %81, %69, %53, %44, %34, %13, %7
  %121 = load i32, i32* %1, align 4
  ret i32 %121
}

declare dso_local i32 @instant(...) #1

declare dso_local i32 @KEY(i32) #1

declare dso_local i32 @IS_BREAK(i32) #1

declare dso_local i32 @raw2scan(i32) #1

declare dso_local i32 @print(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
