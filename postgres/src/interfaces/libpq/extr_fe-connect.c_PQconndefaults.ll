; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_PQconndefaults.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_PQconndefaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PQconndefaults() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = call i32 @initPQExpBuffer(i32* %2)
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @PQExpBufferDataBroken(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %24

9:                                                ; preds = %0
  %10 = call i32* @conninfo_init(i32* %2)
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @conninfo_add_defaults(i32* %14, i32* null)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @PQconninfoFree(i32* %18)
  store i32* null, i32** %3, align 8
  br label %20

20:                                               ; preds = %17, %13
  br label %21

21:                                               ; preds = %20, %9
  %22 = call i32 @termPQExpBuffer(i32* %2)
  %23 = load i32*, i32** %3, align 8
  store i32* %23, i32** %1, align 8
  br label %24

24:                                               ; preds = %21, %8
  %25 = load i32*, i32** %1, align 8
  ret i32* %25
}

declare dso_local i32 @initPQExpBuffer(i32*) #1

declare dso_local i64 @PQExpBufferDataBroken(i32) #1

declare dso_local i32* @conninfo_init(i32*) #1

declare dso_local i32 @conninfo_add_defaults(i32*, i32*) #1

declare dso_local i32 @PQconninfoFree(i32*) #1

declare dso_local i32 @termPQExpBuffer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
